module uart_rx#(
    parameter RX_DATA_WIDTH = 8,
    parameter BAUD_RATE     = 115200,
    parameter SYS_CLK_FREQ  = 50_000_000
)(
    input sysclk,
    input rstn,

    input uart_rx,

    output reg [RX_DATA_WIDTH - 1 : 0] uart_rx_data,

    output reg uart_rx_data_valid // 接收数据有效
);

localparam BIT_PERIOD = SYS_CLK_FREQ / BAUD_RATE;// 一个bit的周期

/*------------检测下降沿：打两拍--------*/
reg uart_rx_d0, uart_rx_d1;
wire flag_rx_negedge;

always @(posedge sysclk) begin
    if(~rstn) begin
        uart_rx_d0 <= 1'b0;
        uart_rx_d1 <= 1'b0;
    end
    else begin
        uart_rx_d0 <= uart_rx;
        uart_rx_d1 <= uart_rx_d0;
    end
end

assign flag_rx_negedge = (uart_rx_d1) & (~uart_rx_d0);






/*--------------------计数器------------------*/
reg [31:0] cnt_cycle;//用来计数1个bit的所需要的周期

always @(posedge sysclk) begin
    if(~rstn) begin
        cnt_cycle <= 32'b0;
    end
    else begin
        case(state)
        START, DATA, STOP: begin//在这三个状态下才开始计数
            if(cnt_cycle == BIT_PERIOD - 1)
                cnt_cycle <= 32'b0;
            else
                cnt_cycle <= cnt_cycle + 1;
        end
        default: cnt_cycle <= 32'b0;
        endcase
    end
end


reg [7:0] cnt_bit;//计数器，用来计数8个bit

always @(posedge sysclk) begin
    if(~rstn) begin
        cnt_bit <= 8'b0;
    end
    else begin
        case(state)
        DATA: begin
            if(cnt_cycle == BIT_PERIOD - 1)
                if(cnt_bit  == RX_DATA_WIDTH - 1)
                    cnt_bit <= 8'b0;
                else
                    cnt_bit <= cnt_bit + 1;
            else 
                cnt_bit <= cnt_bit;
        end
        default: cnt_bit <= 8'b0;
        endcase
    end
end






/*------------------状态机-------------*/

reg [3:0] state, next_state;

localparam    IDLE  = 4'b0001,
              START = 4'b0010,//起始位
              DATA  = 4'b0100,//数据位
              STOP  = 4'b1000;//停止位

always @(posedge sysclk) begin
    if(~rstn) begin
        state <= IDLE;
    end 
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
    IDLE: begin
        if(flag_rx_negedge) 
            next_state = START;
        else
            next_state = IDLE;
    end
    START: begin
        if(cnt_cycle == BIT_PERIOD - 1  ) // 1个bit的周期
            next_state = DATA;
        else
            next_state = START;
    end
    DATA: begin
        if(cnt_cycle ==  BIT_PERIOD - 1  &&  cnt_bit == RX_DATA_WIDTH - 1)
            next_state = STOP;
        else
            next_state = DATA;
    end
    STOP: begin
        if(cnt_cycle == BIT_PERIOD - 1)
            next_state = IDLE;
        else
            next_state = STOP;
    end
    default: next_state = IDLE;
    endcase
end





/*------------------接收数据-----------------*/
always @(negedge sysclk) begin
    if(~rstn) begin
        uart_rx_data <= 8'b0;
    end
    else begin
        if(state == DATA)
            if(cnt_cycle == BIT_PERIOD / 2 - 1)//在数据的中心位置采样
                uart_rx_data <= {uart_rx,uart_rx_data[RX_DATA_WIDTH - 1 : 1]};//数据从低位开始传输
        else 
            uart_rx_data <= uart_rx_data;
    end
end



/*------------------接收数据有效-----------------*/

always @(posedge sysclk) begin
    if(~rstn) begin
        uart_rx_data_valid <= 1'b0;
    end
    else begin
        if(state == STOP)
            if(cnt_cycle == BIT_PERIOD - 1)
                uart_rx_data_valid <= 1'b1;
        else
            uart_rx_data_valid <= 1'b0;
    end
end

endmodule















`timescale 1ns/1ns

module tb_uart_rx#(
    parameter RX_DATA_WIDTH = 8,
    parameter BAUD_RATE     = 115200,
    parameter SYS_CLK_FREQ  = 50_000_000
)();

localparam delay_bit = 20 * SYS_CLK_FREQ / BAUD_RATE;

reg clk;
reg rstn;
reg uart_rx;

wire [7:0] uart_rx_data;
wire uart_rx_data_valid;


uart_rx uart_rx_inst(
    .sysclk(clk),
    .rstn(rstn),

    .uart_rx(uart_rx),

    .uart_rx_data(uart_rx_data),

    .uart_rx_data_valid(uart_rx_data_valid) // 接收数据有效
);

initial begin
    clk = 1;
end

always #10 clk = ~clk;

initial begin
    rstn = 0;
    #100
    rstn = 1;
end

reg [7:0] data = 8'b1001_0010;

initial begin
    uart_rx = 1;
    #300
    uart_rx = 0;       #delay_bit//起始位

    uart_rx = data[0]; #delay_bit
    uart_rx = data[1]; #delay_bit
    uart_rx = data[2]; #delay_bit
    uart_rx = data[3]; #delay_bit
    uart_rx = data[4]; #delay_bit
    uart_rx = data[5]; #delay_bit
    uart_rx = data[6]; #delay_bit
    uart_rx = data[7]; 

    uart_rx = 1;       //停止位
end

endmodule