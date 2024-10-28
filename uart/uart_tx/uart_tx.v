module uart_tx#(
    parameter TX_DATA_WIDTH = 8,
    parameter BAUD_RATE     = 115200,
    parameter CLK_FREQ      = 50_000_000
)(
    input sysclk,
    input rstn,

    input [TX_DATA_WIDTH - 1:0] uart_tx_data,

    input uart_tx_data_req, // 发送数据有效

    output reg uart_tx,
    output reg uart_tx_done,
    output wire uart_tx_busy
);

localparam BIT_PERIOD = CLK_FREQ / BAUD_RATE;// 一个bit的周期





/*--------------------计数器------------------*/
reg [31:0] cnt_cycle;//用来计数1个bit的所需要的周期

always @(posedge sysclk) begin
    if(~rstn) begin
        cnt_cycle <= 32'b0;
    end
    else begin
        case(state)
        START, DATA: begin//在这三个状态下才开始计数
            if(cnt_cycle == BIT_PERIOD - 1)
                cnt_cycle <= 32'b0;
            else
                cnt_cycle <= cnt_cycle + 1;
        end
        STOP:begin
             if(cnt_cycle == BIT_PERIOD * 2 - 1)
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
                if(cnt_bit  == TX_DATA_WIDTH - 1)
                    cnt_bit <= 8'b0;
            else
                cnt_bit <= cnt_bit + 1;
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
        if(uart_tx_data_req) 
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
        if(cnt_cycle ==  BIT_PERIOD - 1  &&  cnt_bit == TX_DATA_WIDTH - 1)
            next_state = STOP;
        else
            next_state = DATA;
    end
    STOP: begin
        if(cnt_cycle == BIT_PERIOD * 2 - 1)//为了防止PC端接收数据时，数据位和停止位之间的间隔太短，导致数据接收不完整,所以停止位的时间加长了一节变成2个bit的周期
            next_state = IDLE;
        else
            next_state = STOP;
    end
    default: next_state = IDLE;
    endcase
end


/*-----------------发送数据---------------*/

always @(posedge sysclk) begin
    if(~rstn)
        uart_tx <= 1'b1;
    else begin
        if(state == START)
            uart_tx <= 1'b0;
        else if(state == DATA)begin
                case(cnt_bit)
                    0: uart_tx <= uart_tx_data[0];
                    1: uart_tx <= uart_tx_data[1];
                    2: uart_tx <= uart_tx_data[2];
                    3: uart_tx <= uart_tx_data[3];
                    4: uart_tx <= uart_tx_data[4];
                    5: uart_tx <= uart_tx_data[5];
                    6: uart_tx <= uart_tx_data[6];
                    7: uart_tx <= uart_tx_data[7];
                    default : uart_tx <= uart_tx;
                endcase
        end
        else
            uart_tx <= 1'b1;
    end
end

/*----------------繁忙信号--------------*/

assign uart_tx_busy = (state == DATA || state == START || state == STOP) ? 1'b1 : 1'b0;

/*--------------完成信号----------*/
always @(posedge sysclk) begin
    if(~rstn)
        uart_tx_done <= 1'b0;
    else begin
        if(state == STOP)
            if(cnt_cycle == BIT_PERIOD * 2 - 1)
                uart_tx_done <= 1'b1;
            else 
                uart_tx_done <= 1'b0;
        else
            uart_tx_done <= 1'b0;
    end
end

endmodule




`timescale 1ns/1ns
module tb_uart_tx();

reg clk;
reg rstn;
reg [7:0] uart_tx;
reg uart_tx_req;

wire uart_tx_data;
wire uart_tx_done;
wire uart_tx_busy;

initial begin
    clk = 1;
end

always #10 clk = ~clk;

initial begin
    rstn = 0;
    #100
    rstn = 1;
end

always @(posedge clk) begin
    if(~rstn)
        uart_tx_req <= 1'b0;
    else if (uart_tx_busy == 0) 
        uart_tx_req <= 1'b1;
    else
        uart_tx_req <= 1'b0;
end

always @(posedge clk) begin
    if(~rstn)
        uart_tx <= 8'b0;
    else if(uart_tx_done)
        uart_tx <= uart_tx + 1;
end

uart_tx uart_tx_inst(
    .sysclk(clk),
    .rstn(rstn),

    .uart_tx_data(uart_tx),

    .uart_tx_data_req(uart_tx_req), // 发送数据有效

    .uart_tx(uart_tx_data),
    .uart_tx_done(uart_tx_done),
    .uart_tx_busy(uart_tx_busy)
);



endmodule




