module uart_rx#(
    parameter RX_DATA_WIDTH = 8,
    parameter BAUD_RATE     = 115200,
    parameter SYS_CLK_FREQ  = 50_000_000,
    parameter STOP_BIT_LENGTH = 2
)(
    input sysclk,
    input rstn,

    input uart_rx,

    output reg [RX_DATA_WIDTH - 1 : 0] uart_rx_data,

    output reg uart_rx_data_valid // 接收数据有效
);

localparam BIT_PERIOD = SYS_CLK_FREQ / BAUD_RATE;// �?个bit的周�?
localparam STOP_BIT_PERIOD = STOP_BIT_LENGTH * BIT_PERIOD;

/*------------�?测下降沿：打两拍--------*/
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









/*--------------------计数�?------------------*/
reg [31:0] cnt_cycle;//用来计数1个bit的所�?要的周期

always @(posedge sysclk) begin
    if(~rstn) begin
        cnt_cycle <= 32'b0;
    end
    else begin
        case(state)
        START, DATA: begin//在这三个状�?�下才开始计�?
            if(cnt_cycle == BIT_PERIOD - 1)
                cnt_cycle <= 32'b0;
            else
                cnt_cycle <= cnt_cycle + 1;
        end
          STOP: begin//在这三个状�?�下才开始计�?
            if(cnt_cycle == STOP_BIT_PERIOD - 1)
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
	           cnt_bit <= cnt_bit ;
        end
        default: cnt_bit <= 8'b0;
        endcase
    end
end








/*------------------状�?�机-------------*/

reg [3:0] state, next_state;

localparam    IDLE  = 4'b0001,
              START = 4'b0010,//起始�?
              DATA  = 4'b0100,//数据�?
              STOP  = 4'b1000;//停止�?

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
        if(cnt_cycle == BIT_PERIOD - 1  ) // 1个bit的周�?
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
        if(cnt_cycle == STOP_BIT_PERIOD - 1)
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
                uart_rx_data <= {uart_rx,uart_rx_data[RX_DATA_WIDTH - 1 :1]};//数据从低位开始传�?
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
            if(cnt_cycle ==  STOP_BIT_PERIOD - 1)
                uart_rx_data_valid <= 1'b1;
        else
            uart_rx_data_valid <= 1'b0;
    end
end

endmodule


