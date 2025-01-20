module arp_tx(
    input arp_tx_clk,
    input rstn,
    
    input arp_tx_en,
    input arp_tx_op, // 数据包类型 0: 应答包, 1: 请求包
    input [47:0] des_mac,//接收到请求包(源mac)，发送应答包(目标mac)
    input [31:0] des_ip,//接收到请求包(源ip)，发送应答包(目标ip)

    (* MARK_DEBUG="true" *) output reg [7:0]  arp_tx_data,//数据发送给RGMII接口
    (* MARK_DEBUG="true" *) output reg arp_tx_valid,    //数据有效信号
    (* MARK_DEBUG="true" *) output wire arp_tx_done,


    input [31:0] crc_data,
    output reg crc_en,
    output reg crc_init
);

parameter FPGA_MAC = 48'h00_11_22_33_44_55;
parameter FPGA_IP =  32'hc0_a8_00_03;

parameter PC_IP   =  32'hc0_a8_00_91;// 192.168.0.145
parameter PC_MAC  =  48'hff_ff_ff_ff_ff_ff;//以广播形式发送


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
localparam  ARP_START5  = 16;   // 18个字节00填充,因为以太网要求46-1500字节
localparam  CRC         = 17;   // crc32校验

(* MARK_DEBUG="true" *) reg [4:0] state;
reg [4:0] next_state;

(* MARK_DEBUG="true" *) reg [7:0] cnt_byte;//字节的计数

always @(posedge arp_tx_clk) begin
    if(~rstn)
        state <= IDLE;
    else 
        state <= next_state;
end

always @(*) begin
    case(state)
        IDLE:begin
            if(arp_tx_en)
                next_state = PREAMBL;
            else
                next_state = state;
        end
        PREAMBL:begin
            if(cnt_byte == 6)//0到6
                next_state = SFD;
            else
                next_state = state;
        end

        SFD:
            next_state = ETH_MAC0;//此时cnt_byte=7

        ETH_MAC0:begin
            if(cnt_byte == 13)//8到13
                next_state = ETH_MAC_S0;
            else
                next_state = state;
        end

        ETH_MAC_S0:begin
            if(cnt_byte == 19)//14到19
                next_state = ARP_START0;
            else
                next_state = state;
        end

        ARP_START0:begin
            if(cnt_byte == 21)//20到21
                next_state = ARP_START1;
            else
                next_state = state;
        end

        ARP_START1:begin
            if(cnt_byte == 23)//22到23
                next_state = ARP_START2;
            else
                next_state = state;
        end

        ARP_START2:begin
            if(cnt_byte == 25)//24到25
                next_state = ARP_START3;
            else
                next_state = state;
        end

        ARP_START3:
            next_state = ARP_START4;//此时cnt_byte=26

        ARP_START4:
            next_state = OP;//此时cnt_byte=27

        OP:begin
            if(cnt_byte == 29)//28到29
                next_state = ETH_MAC_S1;
            else
                next_state = state;
        end

        ETH_MAC_S1:begin
            if(cnt_byte == 35)//30到35
                next_state = ETH_IP_S1;
            else
                next_state = state;
        end

        ETH_IP_S1:begin
            if(cnt_byte == 39)//36到39
                next_state = ETH_MAC1;
            else
                next_state = state;
        end

        ETH_MAC1:begin
            if(cnt_byte == 45)//40到45
                next_state = ETH_IP1;
            else
                next_state = state;
        end

        ETH_IP1:begin
            if(cnt_byte == 49)//46到49
                next_state = ARP_START5;
            else
                next_state = state;
        end

        ARP_START5:begin
            if(cnt_byte == 67)//50到67
                next_state = CRC;
            else
                next_state = state;
        end

        CRC:begin
            if(cnt_byte == 71)//68到71
                next_state = IDLE;
            else
                next_state = state;
        end
        default : next_state = IDLE;
    endcase
end

//字节计数
always @(posedge arp_tx_clk) begin
    if(~rstn)
        cnt_byte <= 0;
    else if(arp_tx_en)begin
        if(state == IDLE)
            cnt_byte <= 0;
        else
            cnt_byte <= cnt_byte + 1;
    end
end


//定义输出数据
always @(posedge arp_tx_clk) begin
    if(~rstn)
        arp_tx_data <= 8'h00;
    else begin
        case(state)
        IDLE:
                arp_tx_data <= 8'h00;
        PREAMBL:
                arp_tx_data <= 8'h55;
        SFD:
                arp_tx_data <= 8'hd5;

        ETH_MAC0:begin
            if(arp_tx_op)//请求包
                arp_tx_data <= 8'hff;//以广播形式发送请求包
            else begin//应答包
                case(cnt_byte)
                    8:arp_tx_data <= des_mac[47:40];//先发送目标mac的高8位
                    9:arp_tx_data <= des_mac[39:32];
                    10:arp_tx_data <= des_mac[31:24];
                    11:arp_tx_data <= des_mac[23:16];
                    12:arp_tx_data <= des_mac[15:8];
                    13:arp_tx_data <= des_mac[7:0];
                    default:arp_tx_data <= des_mac[47:40];
                endcase
            end
        end


        ETH_MAC_S0:begin
                case(cnt_byte)
                    14:arp_tx_data <= FPGA_MAC[47:40];
                    15:arp_tx_data <= FPGA_MAC[39:32];
                    16:arp_tx_data <= FPGA_MAC[31:24];
                    17:arp_tx_data <= FPGA_MAC[23:16];
                    18:arp_tx_data <= FPGA_MAC[15:8];
                    19:arp_tx_data <= FPGA_MAC[7:0];
                    default:arp_tx_data <= FPGA_MAC[47:40];
                endcase
        end

        ARP_START0:begin
                case(cnt_byte)
                    20:arp_tx_data <= 8'h08;
                    21:arp_tx_data <= 8'h06;
                    default:arp_tx_data <= 8'h08;
                endcase
        end

        ARP_START1:begin
                case(cnt_byte)
                    22:arp_tx_data <= 8'h00;
                    23:arp_tx_data <= 8'h01;
                    default:arp_tx_data <= 8'h00;
                endcase
        end

        ARP_START2:begin
                case(cnt_byte)
                    24:arp_tx_data <= 8'h08;
                    25:arp_tx_data <= 8'h00;
                    default:arp_tx_data <= 8'h08;
                endcase
        end


        ARP_START3:
            arp_tx_data <= 8'h06;

        ARP_START4:
            arp_tx_data <= 8'h04;

        OP:begin
            if(arp_tx_op)begin
                case(cnt_byte)
                    28:arp_tx_data <= 8'h00;
                    29:arp_tx_data <= 8'h01;
                    default:arp_tx_data <= 8'h00;
                endcase
            end
                
            else begin
                case(cnt_byte)
                    28:arp_tx_data <= 8'h00;
                    29:arp_tx_data <= 8'h02;
                    default:arp_tx_data <= 8'h00;
                endcase
            end
        end

        ETH_MAC_S1:begin
                case(cnt_byte)
                    30:arp_tx_data <= FPGA_MAC[47:40];
                    31:arp_tx_data <= FPGA_MAC[39:32];
                    32:arp_tx_data <= FPGA_MAC[31:24];
                    33:arp_tx_data <= FPGA_MAC[23:16];
                    34:arp_tx_data <= FPGA_MAC[15:8];
                    35:arp_tx_data <= FPGA_MAC[7:0];
                    default:arp_tx_data <= FPGA_MAC[47:40];
                endcase
        end

        ETH_IP_S1:begin
                case(cnt_byte)
                    36:arp_tx_data <= FPGA_IP[31:24];
                    37:arp_tx_data <= FPGA_IP[23:16];
                    38:arp_tx_data <= FPGA_IP[15:8];
                    39:arp_tx_data <= FPGA_IP[7:0];
                    default:arp_tx_data <= FPGA_IP[31:24];
                endcase
        end

        ETH_MAC1:begin
                if(arp_tx_op)
                    arp_tx_data <= 8'h00;
                else begin
                    case(cnt_byte)
                        40:arp_tx_data <= des_mac[47:40];//先发送目标mac的高8位
                        41:arp_tx_data <= des_mac[39:32];
                        42:arp_tx_data <= des_mac[31:24];
                        43:arp_tx_data <= des_mac[23:16];
                        44:arp_tx_data <= des_mac[15:8];
                        45:arp_tx_data <= des_mac[7:0];
                        default:arp_tx_data <= des_mac[47:40];
                    endcase
                end
        end

        ETH_IP1:begin
            case(cnt_byte)
                    46:arp_tx_data <= PC_IP[31:24];
                    47:arp_tx_data <= PC_IP[23:16];
                    48:arp_tx_data <= PC_IP[15:8];
                    49:arp_tx_data <= PC_IP[7:0];
                    default:arp_tx_data <= PC_IP[31:24];
            endcase
        end

        ARP_START5:begin
            arp_tx_data <= 8'h00;
        end

        CRC:begin
            case(cnt_byte)
                    68:arp_tx_data <= crc_data[7:0];
                    69:arp_tx_data <= crc_data[15:8];
                    70:arp_tx_data <= crc_data[23:16];
                    71:arp_tx_data <= crc_data[31:24];
                    default:arp_tx_data <= crc_data[7:0];
            endcase
        end
        endcase

    end
end
           
//数据有效信号
always @(posedge arp_tx_clk) begin
    if(~rstn)
        arp_tx_valid <= 1'b0;
    else if(state == IDLE)
        arp_tx_valid <= 1'b0;
    else
        arp_tx_valid <= 1'b1;
end

assign arp_tx_done = (state == CRC && cnt_byte == 71);

always @(posedge arp_tx_clk) begin
    if(~rstn)
        crc_en <= 1'b0;
    else if(state == IDLE || state == PREAMBL || state == SFD)
        crc_en <= 1'b0;
    else
        crc_en <= 1'b1;
end

always @(posedge arp_tx_clk) begin
    if(~rstn)
        crc_init <= 0;
    else if(state == IDLE)
        crc_init <= 1'b1;
    else
        crc_init <= 1'b0;
end



endmodule