module loop(
    input sysclk,
    input rstn,

    input uart_rx,
    output uart_tx
);
wire [7:0] uart_rx_data;
wire       uart_rx_data_valid;
u_uart_rx_0  rx_inst (
    .sysclk(sysclk),
    .rstn(rstn),
    .uart_rx(uart_rx),
    .uart_rx_data(uart_rx_data),
    .uart_rx_data_valid(uart_rx_data_valid)
  );
  
u_uart_tx_0  tx_inst (
    .sysclk(sysclk),
    .rstn(rstn),
    .uart_tx_data(uart_rx_data),
    .uart_tx_data_req(uart_rx_data_valid),
    .uart_tx(uart_tx),
    .uart_tx_done(),
    .uart_tx_busy()
  );
  
 ila_0 ila_inst (
	.clk(sysclk), // input wire clk


	.probe0(uart_rx_data), // input wire [7:0]  probe0  
	.probe1(uart_rx_data_valid) // input wire [0:0]  probe1
);
  


endmodule