module IIC_M#(
    parameter ADDR_DIVICE_WIDTH = 8,
    parameter DATA_WIDTH = 8,

    parameter SYSCLK_FREQ = 50_000_000,
    parameter IIC_FREQ = 400_000,
    parameter byte_number_reg = 2
)(
    input sysclk,
    input rstn,

    //---------user---------
    input iic_req,
    input iic_mode,//模式�?0写，1�?

    input [ADDR_DIVICE_WIDTH - 2:0] iic_addr_divice,//设备地址
    input [15:0] iic_addr_reg,//寄存器地�?

    output reg iic_busy,
    output reg iic_done,


    input [DATA_WIDTH - 1:0] iic_wr_data,
    output reg iic_wr_valid,
    input  [15:0] iic_wr_length,//写数据长�?

    output reg [DATA_WIDTH - 1:0] iic_rd_data,
    output reg iic_rd_valid,
    input  [15:0] iic_rd_length,//读数据长�?

    //---------IIC----------
    output reg iic_scl,
    inout iic_sda
);

//状�?�机编码

localparam  CLK_DIV = SYSCLK_FREQ / IIC_FREQ;

localparam  IDLE = 8'd01,
            IIC_START0 = 8'd02,
            IIC_ADDR_DIVICE0 = 8'd03,
            IIC_DIVICE_ACK0 = 8'd04,
            IIC_ADDR_REG0 = 8'd05,
            IIC_REG0_ACK0 = 8'd06,

            IIC_ADDR_REG1 = 8'd07,
            IIC_REG1_ACK1 = 8'd08,

            IIC_WR_DATA  = 8'd09,
            IIC_WR_ACK = 8'd10,
            IIC_START1 = 8'd11,
            IIC_ADDR_DIVICE1 = 8'd12,
            IIC_DIVICE_ACK1 = 8'd13,

            IIC_RD_DATA = 8'd14,
            IIC_RD_ACK = 8'd15,

            IIC_STOP = 8'd16;


localparam send = CLK_DIV / 4;    //发�?�点：时钟是低电�?
localparam samp = 3*CLK_DIV / 4;  //采样点：时钟是高电平

reg [7:0] state, next_state;

reg [31:0] cnt_div;//IIC时钟分频计数
reg [7:0] cnt_bit;
reg [15:0] cnt_byte;

always @(posedge sysclk) begin
    if(~rstn) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

//状�?�机转移
always @(*) begin
    case(state)
        IDLE:begin
          if(iic_req)
            next_state = IIC_START0;
          else
            next_state = IDLE;
        end
        IIC_START0:begin
            if(cnt_div == CLK_DIV - 1)
                next_state = IIC_ADDR_DIVICE0;
            else
                next_state = IIC_START0;
        end
        IIC_ADDR_DIVICE0:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == ADDR_DIVICE_WIDTH - 1)
                next_state = IIC_DIVICE_ACK0;
            else
                next_state = IIC_ADDR_DIVICE0;
        end
        IIC_DIVICE_ACK0:begin
            if(cnt_div == CLK_DIV - 1 && byte_number_reg == 2)
                next_state = IIC_ADDR_REG0;
            else if(cnt_div == CLK_DIV - 1 && byte_number_reg == 1)
                next_state = IIC_ADDR_REG1;
            else
                next_state = IIC_DIVICE_ACK0;
        end
        IIC_ADDR_REG0:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == ADDR_DIVICE_WIDTH - 1)
                next_state = IIC_REG0_ACK0;
            else
                next_state = IIC_ADDR_REG0;
        end
        IIC_REG0_ACK0:begin
            if(cnt_div == CLK_DIV - 1)
                next_state = IIC_ADDR_REG1;
            else
                next_state = IIC_REG0_ACK0;
        end
        IIC_ADDR_REG1:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == ADDR_DIVICE_WIDTH - 1)
                next_state = IIC_REG1_ACK1;
            else
                next_state = IIC_ADDR_REG1;
        end
        IIC_REG1_ACK1:begin
            if(cnt_div == CLK_DIV - 1 && iic_mode == 0)
                next_state = IIC_WR_DATA;
            else if(cnt_div == CLK_DIV - 1 && iic_mode == 1)
                next_state = IIC_START1;
            else
                next_state = IIC_REG1_ACK1;
        end
        IIC_WR_DATA:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == DATA_WIDTH - 1)
                next_state = IIC_WR_ACK;
            else
                next_state = IIC_WR_DATA;
        end
        IIC_WR_ACK:begin
            if(cnt_div == CLK_DIV - 1 && cnt_byte >= iic_wr_length - 1)
                next_state = IIC_STOP;
            else if(cnt_div == CLK_DIV - 1 && cnt_byte < iic_wr_length - 1)
                next_state = IIC_WR_DATA;
            else
                next_state = IIC_WR_ACK;
        end
        IIC_START1:begin
            if(cnt_div == CLK_DIV - 1)
                next_state = IIC_ADDR_DIVICE1;
            else
                next_state = IIC_START1;
        end
        IIC_ADDR_DIVICE1:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == ADDR_DIVICE_WIDTH - 1)
                next_state = IIC_DIVICE_ACK1;
            else
                next_state = IIC_ADDR_DIVICE1;
        end
        IIC_DIVICE_ACK1:begin
            if(cnt_div == CLK_DIV - 1)
                next_state = IIC_RD_DATA;
            else
                next_state = IIC_DIVICE_ACK1;
        end
        IIC_RD_DATA:begin
            if(cnt_div == CLK_DIV - 1 && cnt_bit == DATA_WIDTH - 1)
                next_state = IIC_RD_ACK;
            else
                next_state = IIC_RD_DATA;
        end
        IIC_RD_ACK:begin
            if(cnt_div == CLK_DIV - 1 && cnt_byte >= iic_rd_length - 1)
                next_state = IIC_STOP;
            else if(cnt_div == CLK_DIV - 1 && cnt_byte < iic_rd_length - 1)
                next_state = IIC_RD_DATA;
            else
                next_state = IIC_RD_ACK;
        end
        IIC_STOP:begin
            if(cnt_div == CLK_DIV - 1)
                next_state = IDLE;
            else
                next_state = IIC_STOP;
        end
        default:next_state = IDLE;
    endcase
end

//三�?�门
reg iic_en;
reg iic_dout;//输出
wire iic_din;//输入

assign iic_sda = iic_en ? iic_dout : 1'bz;//三�?�门
assign iic_din = iic_en ? 1'bz : iic_sda;
/*-----使能信号------*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_en <= 0;
    else begin
      case(state)
        IIC_START0,IIC_ADDR_DIVICE0,IIC_ADDR_REG0,IIC_ADDR_REG1,IIC_WR_DATA,
        IIC_START1,IIC_ADDR_DIVICE1,IIC_RD_ACK,IIC_STOP :
            iic_en <= 1;//主机�?要发送的时�?�使�?

        IIC_DIVICE_ACK0,IIC_REG0_ACK0,IIC_REG1_ACK1,IIC_WR_ACK,IIC_DIVICE_ACK1,IIC_RD_DATA :
            iic_en <= 0;//从机发�?�的时�?�禁�?

        default :iic_en <= 0;
      endcase
    end
end

always @(posedge sysclk) begin
    if(~rstn)
        cnt_div <= 0;
    else if(state == IDLE)
        cnt_div <= 0;
    else begin
        if(cnt_div == CLK_DIV - 1)
            cnt_div <= 0;
        else
            cnt_div <= cnt_div + 1;
    end
end

/*------bit------*/    
always @(posedge sysclk) begin
    if(~rstn)
        cnt_bit <= 0;
    else begin
        case(state)
            IIC_ADDR_DIVICE0,IIC_ADDR_REG0,IIC_ADDR_REG1,IIC_WR_DATA,
            IIC_ADDR_DIVICE1,IIC_RD_DATA:begin
                if(cnt_div == CLK_DIV - 1)begin
                    if(cnt_bit == ADDR_DIVICE_WIDTH - 1)
                        cnt_bit <= 0;
                    else
                        cnt_bit <= cnt_bit + 1;
                end
            end
            default :cnt_bit <= 0;
        endcase
    end
end


/*--------字节-------*/
always @(posedge sysclk) begin
    if(~rstn)
        cnt_byte <= 0;
    else begin
        case(state)
            IDLE:
                cnt_byte <= 0;
            IIC_WR_ACK,IIC_RD_ACK:begin
                if(cnt_div == CLK_DIV - 1)
                        cnt_byte <= cnt_byte + 1;
            end
            default :cnt_byte <= cnt_byte;//注意不能轻易清零
        endcase
    end
end

/*--------时钟---------*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_scl <= 0;
    else if(state == IDLE )
        iic_scl <= 0;
    else if(cnt_div ==CLK_DIV / 2 - 1)
        iic_scl <= 1;
    else if(cnt_div == CLK_DIV - 1)
        iic_scl <= 0;
end

wire [7:0] iic_addr_divice_wr;
wire [7:0] iic_addr_divice_rd;

assign  iic_addr_divice_wr = {iic_addr_divice,1'b0};//设备地址 + �?
assign  iic_addr_divice_rd = {iic_addr_divice,1'b1};//设备地址 + �?

/*--------数据-------*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_dout <= 1;
    else begin
        case(state)
           IIC_START0,IIC_START1:begin
             if(cnt_div == send - 1)//拉高
                iic_dout <= 1;
             else if(cnt_div == samp - 1)//拉低产生下降�?
                iic_dout <= 0;
           end 

           IIC_ADDR_DIVICE0:begin
             if(cnt_div == send - 1)
                iic_dout <= iic_addr_divice_wr[ADDR_DIVICE_WIDTH - 1 - cnt_bit];//高位优先发�??
           end
           //单字节的情况下发送低位的8bit,高位�?8bit不发�?
           IIC_ADDR_REG0:begin
             if(cnt_div == send - 1)
                iic_dout <= iic_addr_reg[16 - 1 - cnt_bit];//高位优先发�??(发�?�高�?)
           end
           IIC_ADDR_REG1:begin
             if(cnt_div == send - 1)
                iic_dout <= iic_addr_reg[8 - 1 - cnt_bit];//高位优先发�??(发�?�低�?)
           end

           IIC_WR_DATA:begin
             if(cnt_div == send - 1)
                iic_dout <= iic_wr_data[DATA_WIDTH - 1 - cnt_bit];//高位优先发�??
           end

           IIC_ADDR_DIVICE1:begin
            if(cnt_div == send - 1)
                iic_dout <= iic_addr_divice_rd[ADDR_DIVICE_WIDTH - 1 - cnt_bit];//高位优先发�??
           end

           IIC_RD_ACK:begin
             if(cnt_div == send - 1)begin
                if(cnt_byte >= iic_rd_length - 1)//数据已经读完的情况下发�?�NACK
                    iic_dout <= 1;
                else
                    iic_dout <= 0;//数据未读完的情况下发送ACK
             end
           end

           IIC_STOP:begin
             if(cnt_div == send - 1)//拉低
                iic_dout <= 0;
             else if(cnt_div == samp - 1)//拉高产生上升�?
                iic_dout <= 1;
           end
        endcase
    end
end



/*----------busy信号---------*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_busy <= 0;
    else begin
        case(state)
            IDLE:
                iic_busy <= 0;
            default:
                iic_busy <= 1;
        endcase
    end
end

/*----------done信号---------*/
always@(posedge sysclk) begin
    if(~rstn)
        iic_done <= 0;
    else begin
        case(state)
            IIC_STOP:begin
               if(cnt_div == CLK_DIV - 1)
                    iic_done <= 1;
                else
                    iic_done <= 0;
            end 
            default:iic_done <= 0;
        endcase
    end
end

/*---------写有效信�?-----*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_wr_valid <= 0;
    else begin
        case(state)
            IIC_WR_ACK:begin
              if(cnt_div == CLK_DIV - 1)
                iic_wr_valid <= 1;
              else
                iic_wr_valid <= 0;
            end
            default :iic_wr_valid <= 0;
        endcase
    end
end


/*------------读数�?---------*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_rd_data <= 0;
    else begin
        case(state)
            IIC_RD_DATA:begin
              if(cnt_div == samp - 1)
                iic_rd_data <= { iic_rd_data[DATA_WIDTH - 2 : 0] , iic_din };//发�?�是高位优先，则接收是低位优�?
            end
            default :iic_rd_data <= iic_rd_data;
        endcase
    end
end

/*---------读有效信�?-----*/
always @(posedge sysclk) begin
    if(~rstn)
        iic_rd_valid <= 0;
    else begin
        case(state)
            IIC_RD_ACK:begin
              if(cnt_div == CLK_DIV - 1)
                iic_rd_valid <= 1;
              else
                iic_rd_valid <= 0;
            end
            default :iic_rd_valid <= 0;
        endcase
    end
end

endmodule