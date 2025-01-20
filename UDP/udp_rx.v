module udp_rx(
    input gmii_rxc,
    input rstn,
    
    input wire [7:0] udp_gmii_rxd,//UDP的所有数据：包括UDP帧头和数据
    input wire       udp_gmii_rxv,//帧头+数据的有效信号
    
    output reg [7:0] udp_rx_data,
    output reg       udp_rx_done,
    output reg       udp_rx_en
);

parameter FPGA_MAC = 48'h00_11_22_33_44_55;
parameter FPGA_IP =  32'hc0_a8_00_03;


reg [9:0] cnt_byte;

reg error;


//以太网数据包类型
reg [15:0] eth_type;

reg [47:0] des_mac;//目的mac地址
reg [31:0] des_ip; //目的IP地址

reg [15:0] ip_cnt_num;//IP长度
reg [15:0] udp_cnt_num;//UDP长度






(* MARK_DEBUG="true" *) reg [4:0] state;
reg [4:0] next_state;

localparam  IDLE        = 1;
localparam  PRE_DATA    = 2;    //前导码+帧起始定界符
localparam  ETH_HEAD    = 3;    //以太网首部
localparam  IP_HEAD     = 4;    //IP首部
localparam  UDP_HEAD    = 5;    //UDP首部
localparam  UDP_DATA    = 6;    //UDP数据
localparam  STOP        = 7;    //结束

always @(posedge gmii_rxc) begin
    if(~rstn)
        state <= IDLE;
    else 
        state <= next_state;
end


always@(*) begin
    case(state)
        IDLE:begin
            if(udp_gmii_rxv && (udp_gmii_rxd == 8'h55))//前导码
                next_state = PRE_DATA;
            else
                next_state = state;
        end
        PRE_DATA:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 6)//0到6
                next_state = ETH_HEAD;
            else
                next_state = state;
        end
        ETH_HEAD:begin
          if(error)
            next_state = IDLE;
          else if(cnt_byte == 13)begin//0到13 14个时钟周期:以太网首部
            next_state = IP_HEAD;
          end
          else
            next_state = state;
        end
        IP_HEAD:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 19)begin//4x5=20 20个时钟周期:IP首部
                next_state = UDP_HEAD;
            end
            else
                next_state = state;
        end
        UDP_HEAD:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 7)begin
                next_state = UDP_DATA;
            end
            else
                next_state = state;
        end
        UDP_DATA:begin
            if(error)
                next_state = IDLE;
            else if(cnt_byte == udp_cnt_num - 1)begin
                next_state = STOP;
            end
            else
                next_state = state;
        end
        STOP:begin
          if(~udp_gmii_rxv)begin
            next_state = IDLE;
          end
          else
            next_state = state;
        end
        default:begin
          next_state = IDLE;
        end
    endcase
end









always @(posedge gmii_rxc)begin
    if(~rstn)
        cnt_byte <= 0;
    else begin
        case(state)
            IDLE:begin
                cnt_byte <= 0;
            end
            PRE_DATA:begin
                if(cnt_byte == 6)
                    cnt_byte <= 0 ;
                else
                    cnt_byte <= cnt_byte + 1;
            end
            ETH_HEAD:begin
                if(cnt_byte == 13)
                    cnt_byte <= 0 ;
                else
                    cnt_byte <= cnt_byte + 1;
            end
            IP_HEAD:begin
                if(cnt_byte == 19)
                    cnt_byte <= 0 ;
                else
                    cnt_byte <= cnt_byte + 1;
            end
            UDP_HEAD:begin
                if(cnt_byte == 7)
                    cnt_byte <= 0 ;
                else
                    cnt_byte <= cnt_byte + 1;
            end
            UDP_DATA:begin
                if(cnt_byte == udp_cnt_num - 1)
                    cnt_byte <= 0 ;
                else
                    cnt_byte <= cnt_byte + 1;
            end
            STOP:begin
                cnt_byte <= 0 ;
            end

            default:begin
                cnt_byte <= 0;
            end
        endcase
    end
end



//错误标志
always @(posedge gmii_rxc) begin
    if(~rstn)
        error <= 0;
    else begin
        case(state)
        IDLE:
            error <= 0;
        PRE_DATA:begin
            if((cnt_byte < 6 && udp_gmii_rxd != 8'h55 )||
               (cnt_byte == 6 && udp_gmii_rxd != 8'hd5 )
            )
                error <= 1;
            else
                error <= 0;
        end

        ETH_HEAD:begin
            case(cnt_byte)
            0:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[47:40])
                    error <= 1;
                else
                    error <= 0;
            end
            1:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[39:32])
                    error <= 1;
                else
                    error <= 0;
            end
            2:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[31:24])
                    error <= 1;
                else
                    error <= 0;
            end
            3:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[23:16])
                    error <= 1;
                else
                    error <= 0;
            end
            4:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[15:8])
                    error <= 1;
                else
                    error <= 0;
            end
            5:begin
                if(udp_gmii_rxd!=8'hff && udp_gmii_rxd != FPGA_MAC[7:0])
                    error <= 1;
                else
                    error <= 0;
            end
            12:begin
                if(udp_gmii_rxd != 8'h08)
                    error <= 1;
                else
                    error <= 0;
            end
            13:begin
                if(udp_gmii_rxd != 8'h00)
                    error <= 1;
                else
                    error <= 0;
            end
            default:error <= 0;
            endcase
        end
        IP_HEAD:begin
            if((cnt_byte == 9 )&& (udp_gmii_rxd != 8'h11) ||
               (cnt_byte == 19 )&& (des_ip != FPGA_IP)
            )
                error <= 1;
            else
                error <= 0;
        end
        UDP_HEAD:begin
            error <= 0;
        end
        UDP_DATA:begin
            error <= 0;
        end
        STOP:begin
            error <= 0;
        end
        endcase
    end

end



//eth_type
always @(posedge gmii_rxc)begin
    if(~rstn)
        eth_type <= 0;
    else if((state == ETH_HEAD) && (cnt_byte == 12)||
            (state == ETH_HEAD) && (cnt_byte == 13))
        eth_type <= {eth_type[7:0] , udp_gmii_rxd};
end

//目的mac地址
always @(posedge gmii_rxc)begin
    if(~rstn)
        des_mac <= 0;
    else if((state == ETH_HEAD) && (cnt_byte < 6))//0到5
        des_mac <= {des_mac[39:0] , udp_gmii_rxd};
end


//目的IP地址
always @(posedge gmii_rxc)begin
    if(~rstn)
        des_ip <= 0;
    else if((state == IP_HEAD) && (cnt_byte > 15))
        des_ip <= {des_ip[23:0] , udp_gmii_rxd};
end

//IP长度
always @(posedge gmii_rxc)begin
    if(~rstn)
        ip_cnt_num <= 0;
    else if((state == IP_HEAD) && (cnt_byte > 1) && (cnt_byte < 4))
        ip_cnt_num <= {ip_cnt_num[7:0] , udp_gmii_rxd};
end

//UDP长度
always @(posedge gmii_rxc)begin
    if(~rstn)
        udp_cnt_num <= 0;
    else if((state == IP_HEAD) && (cnt_byte == 19))
        udp_cnt_num <= ip_cnt_num - 16'd28;
end







always @(posedge gmii_rxc)begin
    if(~rstn)
        udp_rx_data <= 0;
    else if((state == UDP_DATA))
        udp_rx_data <= udp_gmii_rxd;
end

always @(posedge gmii_rxc)begin
    if(~rstn)
        udp_rx_en <= 0;
    else if((state == UDP_DATA))
        udp_rx_en <= 1;
    else
        udp_rx_en <= 0;
end

always @(posedge gmii_rxc)begin
    if(~rstn)
        udp_rx_done <= 0;
    else if((state == STOP))
        udp_rx_done <= 1;
    else
        udp_rx_done <= 0;
end




endmodule