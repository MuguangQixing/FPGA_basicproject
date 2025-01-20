module udp_tx(
    input gmii_txc,
    input rstn,
    
    input udp_tx_en,
    input [15:0] udp_tx_data,

    input [47:0] des_mac,
    input [31:0] des_ip,

    output reg [7:0] udp_gmii_txd,//UDP的所有数据：包括UDP帧头和数据
    output reg   udp_gmii_txv,//帧头+数据的有效信号
    output reg   udp_tx_done,
    output reg   udp_data_en, //数据有效信号

    input [31:0] crc_data,
    output reg crc_en,
    output reg crc_init
);

parameter FPGA_MAC = 48'h00_11_22_33_44_55;
parameter FPGA_IP =  32'hc0_a8_00_03;

parameter PC_IP   =  32'hc0_a8_00_91;// 192.168.0.145
parameter PC_MAC  =  48'hff_ff_ff_ff_ff_ff;//以广播形式发送


parameter UDP_DATA_NUM = 16'd10;//数据长度是10,有10个16位的数据，共20字节
parameter UDP_LEN = UDP_DATA_NUM * 2 + 16'd8;//UDP数据包总长度20(UDP数据)+8(UDP帧头)
parameter IP_LEN  = UDP_DATA_NUM * 4 + 16'd8;//IP数据包总长度20(IP帧头)+20(UDP数据)+8(UDP帧头)






localparam  IDLE        = 1;
localparam  CHECK_SUM   = 2;    //IP首部校验和
localparam  PRE_DATA    = 3;    //前导码+帧起始定界符
localparam  ETH_HEAD    = 4;    //以太网首部
localparam  IP_HEAD     = 5;    //IP首部
localparam  UDP_HEAD    = 6;    //UDP首部
localparam  UDP_DATA    = 7;    //UDP数据
localparam  CRC         = 8;    //crc32校验


//首部校验和：进位+本位
reg [31:0] check_sum_data;

//以太网首部寄存器
reg [7:0] eth_head_data[13:0];//14个8bit寄存器
//IP首部寄存器
reg [31:0] ip_head_data[4:0]; //5个32bit寄存器
                              //一行是一个寄存器
//UDP首部寄存器
reg [31:0] udp_head_data[1:0];



(* MARK_DEBUG="true" *) reg [9:0] cnt_byte_depth;//以太网：字节计数器；IP和UDO：行计数器

(* MARK_DEBUG="true" *) reg [1:0] cnt_byte_num;



//标识：对数据包计数
(* MARK_DEBUG="true" *) reg [15:0] sign_num;



(* MARK_DEBUG="true" *) reg [4:0] state;
reg [4:0] next_state;

always @(posedge gmii_txc) begin
    if(~rstn)
        state <= IDLE;
    else 
        state <= next_state;
end


always@(*) begin
    case(state)
        IDLE:begin
          if(udp_tx_en)
            next_state = CHECK_SUM;
          else
            next_state = state;
        end
        CHECK_SUM:begin
          if(cnt_byte_depth == 2)begin//0到2 校验和的计算一共3级流水线
            next_state = PRE_DATA;
          end
          else
            next_state = state;
        end
        PRE_DATA:begin
          if(cnt_byte_depth == 7)begin//0到7 8个时钟周期:前导码+帧起始定界符
            next_state = ETH_HEAD;
          end
          else
            next_state = state;
        end
        ETH_HEAD:begin
          if(cnt_byte_depth == 13)begin//0到13 14个时钟周期:以太网首部
            next_state = IP_HEAD;
          end
          else
            next_state = state;
        end
        IP_HEAD:begin
          if(cnt_byte_depth == 4 && cnt_byte_num == 3)begin//4x5=20 20个时钟周期:IP首部
            next_state = UDP_HEAD;
          end
          else
            next_state = state;
        end
        UDP_HEAD:begin
          if(cnt_byte_depth == 1 && cnt_byte_num == 3)begin
            next_state = UDP_DATA;
          end
          else
            next_state = state;
        end
        UDP_DATA:begin
          if(cnt_byte_depth == UDP_DATA_NUM - 1 && cnt_byte_num == 1)begin
            next_state = CRC;
          end
          else
            next_state = state;
        end
        CRC:begin
          if(cnt_byte_depth == 3)begin
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


always @(posedge gmii_txc) begin
    if(~rstn)begin
        cnt_byte_depth <= 0;
        cnt_byte_num <= 0;
    end
    else if(udp_tx_en)begin
        case(state)
            IDLE:begin
                cnt_byte_depth <= 0;
                cnt_byte_num   <= 0;
            end
                
            CHECK_SUM:begin
                if(cnt_byte_depth == 2)
                    cnt_byte_depth <= 0;
                else
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            PRE_DATA:begin
                if(cnt_byte_depth == 7)
                    cnt_byte_depth <= 0;
                else
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            ETH_HEAD:begin
                if(cnt_byte_depth == 13)
                    cnt_byte_depth <= 0;
                else
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            IP_HEAD:begin
                cnt_byte_num <= cnt_byte_num + 1;
                if(cnt_byte_depth == 4 && cnt_byte_num == 3)
                    cnt_byte_depth <= 0;
                else if(cnt_byte_num == 3)
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            UDP_HEAD:begin
                cnt_byte_num <= cnt_byte_num + 1;
                if(cnt_byte_depth == 1 && cnt_byte_num == 3)
                    cnt_byte_depth <= 0;
                else if(cnt_byte_num == 3)
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            UDP_DATA:begin
                if(cnt_byte_num == 1)
                    cnt_byte_num <= 0;
                else
                    cnt_byte_num <= cnt_byte_num + 1;

                if(cnt_byte_depth == UDP_DATA_NUM - 1 && cnt_byte_num == 1)
                    cnt_byte_depth <= 0;
                else if(cnt_byte_num == 1)
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            CRC:begin
                if(cnt_byte_depth == 3)
                    cnt_byte_depth <= 0;
                else
                    cnt_byte_depth <= cnt_byte_depth + 1;
            end
            default:begin
                cnt_byte_depth <= 0;
                cnt_byte_num   <= 0;
            end
        endcase
    end
end


/*----------------输出数据-------------*/
always @(posedge gmii_txc) begin
    if(~rstn)begin
        udp_gmii_txd <= 8'h00;
        //以太网首部
        eth_head_data[0] <= 0;//目的MAC地址
        eth_head_data[1] <= 0;//目的MAC地址
        eth_head_data[2] <= 0;//目的MAC地址
        eth_head_data[3] <= 0;//目的MAC地址
        eth_head_data[4] <= 0;//目的MAC地址
        eth_head_data[5] <= 0;//目的MAC地址
        eth_head_data[6] <= FPGA_MAC[47:40];//源MAC地址
        eth_head_data[7] <= FPGA_MAC[39:32];//源MAC地址
        eth_head_data[8] <= FPGA_MAC[31:24];//源MAC地址
        eth_head_data[9] <= FPGA_MAC[23:16];//源MAC地址
        eth_head_data[10] <= FPGA_MAC[15:8];//源MAC地址
        eth_head_data[11] <= FPGA_MAC[ 7:0];//源MAC地址
        eth_head_data[12] <= 8'h08;//ip类型
        eth_head_data[13] <= 8'h00;//ip类型
        //IP首部
        ip_head_data[0] <= {16'h4500,IP_LEN[15:0]};
        ip_head_data[1] <= {16'h0,16'h4000};//标识赋值0(未知),标志+片位移
        ip_head_data[2] <= {8'h40,8'h11,16'h0};//生存时间+协议+校验和(未知)
        ip_head_data[3] <= FPGA_IP;//源IP地址
        ip_head_data[4] <= 32'h0;//目的IP地址(未知)
        //UDP首部
        udp_head_data[0] <= 32'h8000_8000;//源端口+目的端口
        udp_head_data[1] <= {UDP_LEN[15:0],16'h0};//UDP长度+校验和
    end
    else begin
        case(state)
            IDLE:begin   
                udp_gmii_txd <= 8'h00;
                //以太网首部
                eth_head_data[0] <= des_mac[47:40];//目的MAC地址
                eth_head_data[1] <= des_mac[39:32];//目的MAC地址
                eth_head_data[2] <= des_mac[31:24];//目的MAC地址
                eth_head_data[3] <= des_mac[23:16];//目的MAC地址
                eth_head_data[4] <= des_mac[15: 8];//目的MAC地址
                eth_head_data[5] <= des_mac[ 7: 0];//目的MAC地址

                //IP首部

                ip_head_data[1] <= {sign_num[15:0],16'h4000};//标识赋值0(未知),标志+片位移
                ip_head_data[2] <= {8'h40,8'h11,16'h0};//生存时间+协议+校验和(未知)

                ip_head_data[4] <= des_ip;//目的IP地址(未知)
            end
            CHECK_SUM:begin
                udp_gmii_txd <= 8'h00;
                //IP首部
                if(cnt_byte_depth == 2)
                    ip_head_data[2] <= {8'h40,8'h11,~check_sum_data[15:0]};//生存时间+协议+校验和(未知)

            end
            PRE_DATA:begin
                if(cnt_byte_depth < 7)
                    udp_gmii_txd <= 8'h55;//传输前导码
                else if(cnt_byte_depth == 7)
                    udp_gmii_txd <= 8'hd5;//传输帧起始定界符
            end
            ETH_HEAD:begin
                udp_gmii_txd <= eth_head_data[cnt_byte_depth];
            end
            IP_HEAD:begin
                if(cnt_byte_num == 0)//第一个字节
                    udp_gmii_txd <= ip_head_data[cnt_byte_depth][31:24];
                else if(cnt_byte_num == 1)
                    udp_gmii_txd <= ip_head_data[cnt_byte_depth][23:16];
                else if(cnt_byte_num == 2)
                    udp_gmii_txd <= ip_head_data[cnt_byte_depth][15:8];
                else if(cnt_byte_num == 3)
                    udp_gmii_txd <= ip_head_data[cnt_byte_depth][7:0];
            end
            UDP_HEAD:begin
                if(cnt_byte_num == 0)//第一个字节
                    udp_gmii_txd <= udp_head_data[cnt_byte_depth][31:24];
                else if(cnt_byte_num == 1)
                    udp_gmii_txd <= udp_head_data[cnt_byte_depth][23:16];
                else if(cnt_byte_num == 2)
                    udp_gmii_txd <= udp_head_data[cnt_byte_depth][15:8];
                else if(cnt_byte_num == 3)
                    udp_gmii_txd <= udp_head_data[cnt_byte_depth][7:0];
            end
            UDP_DATA:begin
                if(cnt_byte_num == 0)//第一个字节
                    udp_gmii_txd <= udp_tx_data[15:8];
                else if(cnt_byte_num == 1)
                    udp_gmii_txd <= udp_tx_data[7:0];
            end
            CRC:begin
                case(cnt_byte_depth)
                    0:udp_gmii_txd <= crc_data[7:0];
                    1:udp_gmii_txd <= crc_data[15:8];
                    2:udp_gmii_txd <= crc_data[23:16];
                    3:udp_gmii_txd <= crc_data[31:24];
                    default:udp_gmii_txd <= crc_data[7:0];
                endcase
            end
            default:begin
                udp_gmii_txd <= 8'h00;
            end
        endcase
    end
end












/*---------------sign_num---------------*/

always @(posedge gmii_txc) begin
    if(~rstn)
        sign_num <= 0;
    else if(udp_tx_done)begin
        sign_num <= sign_num + 1;
    end
end




/*-----------------check_sum_data----------------*/
always @(posedge gmii_txc) begin
    if(~rstn)
        check_sum_data <= 0;
    else if(state == CHECK_SUM)begin//流水线思路
        if(cnt_byte_depth == 0)
            check_sum_data <= ip_head_data[0][31:16] + ip_head_data[0][16:0] 
                            + ip_head_data[1][31:16] + ip_head_data[1][16:0]
                            + ip_head_data[2][31:16] + ip_head_data[2][16:0]
                            + ip_head_data[3][31:16] + ip_head_data[3][16:0]
                            + ip_head_data[4][31:16] + ip_head_data[4][16:0];
        else if(cnt_byte_depth == 1)
            check_sum_data <= check_sum_data[31:16] + check_sum_data[15:0];
    end
    else 
        check_sum_data <= 0;
end



/*----------------udp_data_en------------*/
always @(posedge gmii_txc) begin
    if(~rstn)
        udp_data_en <= 0;
    else if(state == UDP_DATA)
            udp_data_en <= 1;
    else
        udp_data_en <= 0;
end



/*-----------------udp_gmii_txv-----------------*/
always @(posedge gmii_txc) begin
    if(~rstn)
        udp_gmii_txv <= 0;
    else if(state == IDLE || state == CHECK_SUM)
        udp_gmii_txv <= 0;
    else
        udp_gmii_txv <= 1;//其他情况下都属于以太网的部分，只有这两个状态不属于以太网数据包
end


/*-----------------udp_tx_done-----------------*/
always @(posedge gmii_txc) begin
    if(~rstn)
        udp_tx_done <= 0;
    else if(state == CRC && cnt_byte_depth == 3)
        udp_tx_done <= 1;
    else
        udp_tx_done <= 0;//其他情况下都属于以太网的部分，只有这两个状态不属于以太网数据包
end


always @(posedge gmii_txc) begin
    if(~rstn)
        crc_en <= 1'b0;
    else if(state == IDLE || state == CHECK_SUM || state == CRC)
        crc_en <= 1'b0;
    else
        crc_en <= 1'b1;
end

always @(posedge gmii_txc) begin
    if(~rstn)
        crc_init <= 0;
    else if(state == IDLE)
        crc_init <= 1'b1;
    else
        crc_init <= 1'b0;
end

endmodule