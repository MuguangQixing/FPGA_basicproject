module rx_top(
    input sysclk,
    input rstn,
    input uart_rx,
    output reg [3:0] led
);

wire [7:0] rx_data;
wire rx_valid;

uart_rx uart_rx_inst(
    .sysclk(sysclk),
    .rstn(rstn),

    .uart_rx(uart_rx),

    .uart_rx_data(rx_data),

    .uart_rx_data_valid(rx_valid)// 接收数据有效
);

always@(posedge sysclk) begin
    if(~rstn) begin
        led <= 4'b0;
    end
    else begin
        if(rx_valid) begin
            led <= rx_data[3:0];
        end
    end
end

//ILA

ila_0 ila_inst(
    .clk(sysclk),
    .probe0(rx_data),
    .probe1(rx_valid)
);

endmodule