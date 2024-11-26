module arp_rx(
    input arp_rx_clk,
    input rstn,
    
    input arp_rx_valid,
    input [7:0] arp_rx_data,
    
    output reg [47:0] pc_mac,
    output reg [31:0] pc_ip,
    output arp_rx_op,

    output arp_rx_done 
);

parameter FPGA_MAC = 48'h00_11_22_33_44_55;
parameter FPGA_IP =  32'hc0_a8_00_03;

localparam  IDLE        = 1;
localparam  PREAMBL     = 2;    //前导码
localparam  SFD         = 3;    //帧起始定界符
localparam  ETH_MAC0    = 4;    //目的mac
localparam  ETH_MAC_S0  = 5;    //源mac
localparam  ARP_START0  = 6;    //长度/类型
localparam  ARP_START1  = 7;    // 硬件类型:以太网
localparam  ARP_START2  = 8;    // 协议类型:ip
localparam  ARP_START3  = 9;    // 硬件地址长度
localparam  ARP_START4  = 10;   // 协议地址长度
localparam  OP          = 11;   // ARP协议类型
localparam  ETH_MAC_S1  = 12;   // 源mac
localparam  ETH_IP_S1   = 13;   // 源ip
localparam  ETH_MAC1    = 14;   // 目的mac
localparam  ETH_IP1     = 15;   // 目的ip
localparam  ARP_START5  = 16;   // 18个字节00填充
localparam  CRC         = 17;   // crc32校验


reg [4:0] state, next_state;

reg [7:0] cnt_byte;//字节的计数

reg error;//错误标志:一旦产生，说明当前接收的数据包不是我需要的，需要丢弃

reg [15:0] op;
reg [47:0] eth_mac;
reg [31:0] eth_ip;
reg [47:0] eth_mac_s;
reg [31:0] eth_ip_s;

always @(posedge arp_rx_clk) begin
    if(~rstn)
        state <= IDLE;
    else 
        state <= next_state;
end

always @(*) begin
    case(state)
        IDLE:begin
            if(arp_rx_valid && (arp_rx_data == 8'h55))//前导码
                next_state = PREAMBL;
            else
                next_state = state;
        end
        PREAMBL:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 6)//0到6
                next_state = SFD;
            else
                next_state = state;
        end

        SFD:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else
                next_state = ETH_MAC0;//此时cnt_byte=7
        end

        ETH_MAC0:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 13)//8到13
                next_state = ETH_MAC_S0;
            else
                next_state = state;
        end

        ETH_MAC_S0:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 19)//14到19
                next_state = ARP_START0;
            else
                next_state = state;
        end

        ARP_START0:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 21)//20到21
                next_state = ARP_START1;
            else
                next_state = state;
        end

        ARP_START1:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 23)//22到23
                next_state = ARP_START2;
            else
                next_state = state;
        end

        ARP_START2:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 25)//24到25
                next_state = ARP_START3;
            else
                next_state = state;
        end

        ARP_START3:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else
                next_state = ARP_START4;//此时cnt_byte=26
        end
            

        ARP_START4:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else
            next_state = OP;//此时cnt_byte=27
        end

        OP:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 29)//28到29
                next_state = ETH_MAC_S1;
            else
                next_state = state;
        end

        ETH_MAC_S1:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 35)//30到35
                next_state = ETH_IP_S1;
            else
                next_state = state;
        end

        ETH_IP_S1:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 39)//36到39
                next_state = ETH_MAC1;
            else
                next_state = state;
        end

        ETH_MAC1:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 45)//40到45
                next_state = ETH_IP1;
            else
                next_state = state;
        end

        ETH_IP1:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 49)//46到49
                next_state = ARP_START5;
            else
                next_state = state;
        end

        ARP_START5:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 67)//50到67
                next_state = CRC;
            else
                next_state = state;
        end

        CRC:begin
            if (error) //进行错误处理的丢包
                next_state = IDLE;
            else if(cnt_byte == 71)//68到71
                next_state = IDLE;
            else
                next_state = state;
        end
        default : next_state = IDLE;
    endcase
end

//字节计数
always @(posedge arp_rx_clk) begin
    if(~rstn)
        cnt_byte <= 0;
    else if(state == IDLE)
            cnt_byte <= 0;
    else
            cnt_byte <= cnt_byte + 1;
end













//错误标志
always @(posedge arp_rx_clk) begin
    if(~rstn)
        error <= 0;
    else begin
        case(state)
        IDLE:
            error <= 0;
        PREAMBL:begin
            if(cnt_byte < 7 && arp_rx_data != 8'h55)
                error <= 1;
            else
                error <= 0;
        end

        SFD:begin
            if(cnt_byte == 7 && arp_rx_data != 8'hd5)
                error <= 1;
            else
                error <= 0;
        end

        ETH_MAC0:
            error <= 0;

        ETH_MAC_S0:
            error <= 0;

        ARP_START0:begin
            if(cnt_byte == 20 && arp_rx_data != 8'h08 || cnt_byte == 21 && arp_rx_data != 8'h06)
                error <= 1;
            else
                error <= 0;
        end

        ARP_START1:begin
            if(cnt_byte == 22 && arp_rx_data != 8'h00 || cnt_byte == 23 && arp_rx_data != 8'h01)
                error <= 1;
            else
                error <= 0;
        end

        ARP_START2:begin
            if(cnt_byte == 24 && arp_rx_data != 8'h08 || cnt_byte == 25 && arp_rx_data != 8'h00)
                error <= 1;
            else
                error <= 0;
        end

        ARP_START3:begin
            if(cnt_byte == 26 && arp_rx_data != 8'h06)
                error <= 1;
            else
                error <= 0;
        end
            

        ARP_START4:begin
            if(cnt_byte == 27 && arp_rx_data != 8'h04)
                error <= 1;
            else
                error <= 0;
        end

        OP:begin
            if(cnt_byte == 28 && arp_rx_data != 8'h00 || cnt_byte == 29 && arp_rx_data != 8'h01 && arp_rx_data != 8'h02)
                error <= 1;
            else
                error <= 0;
        end

        ETH_MAC_S1:
            error <= 0;

        ETH_IP_S1:
            error <= 0;

        ETH_MAC1:begin
            if(cnt_byte == 45 && op == 16'h0002 && eth_mac != FPGA_MAC)
                error <= 1;
            else
                error <= 0;
        end
        ETH_IP1:begin
            if(cnt_byte == 49 && eth_ip != FPGA_IP)
                error <= 1;
            else
                error <= 0;
        end
        ARP_START5:
            error <= 0;

        CRC:
            error <= 0;
        default : error <= 0;

    endcase
    end

end


//op
always @(posedge arp_rx_clk) begin
    if(~rstn)
        op <= 0;
    else if(state == OP)
        op <= {op[7:0],arp_rx_data};
end

//eth_mac
always @(posedge arp_rx_clk) begin
    if(~rstn)
        eth_mac <= 0;
    else if(state == ETH_MAC0)
        eth_mac <= {eth_mac[39:0],arp_rx_data};
end

//eth_ip
always @(posedge arp_rx_clk) begin
    if(~rstn)
        eth_ip <= 0;
    else if(state == ETH_IP1)
        eth_ip <= {eth_ip[23:0],arp_rx_data};
end

//eth_mac_s
always @(posedge arp_rx_clk) begin
    if(~rstn)
        eth_mac_s <= 0;
    else if(state == ETH_MAC_S1)
        eth_mac_s <= {eth_mac_s[39:0],arp_rx_data};
end

//eth_ip_s
always @(posedge arp_rx_clk) begin
    if(~rstn)
        eth_ip_s <= 0;
    else if(state == ETH_IP_S1)
        eth_ip_s <= {eth_ip_s[23:0],arp_rx_data};
end





//pc_mac
always @(posedge arp_rx_clk) begin
    if(~rstn)
        pc_mac <= 0;
    else if(op == 16'h0002 && CRC)
        pc_mac <= eth_mac_s;

end


//pc_ip
always @(posedge arp_rx_clk) begin
    if(~rstn)
        pc_ip <= 0;
    else if(op == 16'h0002 && CRC)
        pc_ip <= eth_ip_s;

end



assign arp_rx_op = op[0];//十六进制的01和02取最低位变成1和0，所以1是请求包，0是应答包


assign arp_rx_done = (state == CRC && cnt_byte == 71);


endmodule