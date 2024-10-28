module top_tx(
    input clk,
    input rstn,

    output reg uart_tx,
);

reg uart_tx_req;
reg [7:0] uart_tx_data;
wire uart_tx_done;
wire uart_tx_busy;
wire uart_tx;


uart_tx uart_tx_inst(
    .sysclk(clk),
    .rstn(rstn),

    .uart_tx_data(uart_tx_data),

    .uart_tx_data_req(uart_tx_req), // 发送数据有效

    .uart_tx(uart_tx),
    .uart_tx_done(uart_tx_done),
    .uart_tx_busy(uart_tx_busy)
);

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
        uart_tx_data <= 8'b0;
    else if(uart_tx_done)
        uart_tx_data <= uart_tx_data + 1;
end


endmodule