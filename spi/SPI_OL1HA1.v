module SPI_m#(
    parameter DATA_WIDTH = 8,
    parameter CLK_DIV    = 10
)(
    input sysclk,
    input rstn,

    //SPI_M
    output reg Mspi_sck,
    output reg Mspi_mosi, 
    input  Mspi_miso,

    output wire Mspi_sc,//片选信号线 

    //用户端
    input [ DATA_WIDTH - 1 : 0 ] spi_tx_data,
    output reg [ DATA_WIDTH - 1 : 0 ] spi_rx_data,

    input spi_req,
    output reg spi_rx_valid,
    output wire spi_busy 
);

/*----------使能信号----------*/
reg spi_en;
wire spi_done;

assign spi_done = (cnt_bit == DATA_WIDTH - 1 && cnt_div == CLK_DIV - 1);

always @(posedge sysclk ) begin
    if(~rstn)
        spi_en <= 1'b0;
    else if(spi_req)
        spi_en <= 1'b1;
    else if(spi_done)
        spi_en <= 1'b0;
end


assign  Mspi_sc  = ~spi_en;
assign  spi_busy = spi_en;

/*-----------分频------------*/

reg [3:0] cnt_div;

always @(posedge sysclk )begin
  if(~rstn)
    cnt_div <= 4'b0;
  else if(spi_en)begin
    if(cnt_div == CLK_DIV - 1)
      cnt_div <= 4'b0;
    else
      cnt_div <= cnt_div + 1;
  end
end

always @(posedge sysclk )begin
  if(~rstn)             //这里写的是SPI的11模式:CPOL=1,CPHA=1即时钟信号在上升沿采样，下降沿输出
    Mspi_sck <= 1'b1;
  else if(spi_en)begin
    if(cnt_div == 0)
      Mspi_sck <= 1'b0;
    else if(cnt_div == CLK_DIV / 2 - 1)
      Mspi_sck <= 1'b1;
  end
end

/* --------bit 计数--------------*/

reg [3:0] cnt_bit;

always @(posedge sysclk )begin
  if(~rstn)
    cnt_bit <= 4'b0;
  else if(spi_en)begin
    if(cnt_div == CLK_DIV - 1)begin//每个周期的最后一个时钟沿
      if(cnt_bit == DATA_WIDTH - 1)
        cnt_bit <= 4'b0;
      else
        cnt_bit <= cnt_bit + 1;
    end
  end
end




/*------------数据发送-------------*/
always @(posedge sysclk) begin
    if(~rstn)begin
        Mspi_mosi <= 0;
    end
    else if(spi_en)begin
        if(cnt_div == 0)//下降沿
        Mspi_mosi <= spi_tx_data[DATA_WIDTH - 1 - cnt_bit];//计数器法进行并转串 
    end
    else
        Mspi_mosi <= 0;
end

/*---------------数据接收--------------*/
always @(posedge sysclk) begin
    if(~rstn)begin
        spi_rx_data <= 0;
    end
    else if(spi_en)begin
        if(cnt_div == CLK_DIV / 2 - 1)//上升沿
        spi_rx_data <= {spi_rx_data[DATA_WIDTH - 2 : 0], Mspi_miso};//串转并
    end
end

/*--------------------接收数据完整的有效数据----------------*/

always @(posedge sysclk) begin
    if(~rstn)begin
        spi_rx_valid <= 0;
    end
    else if(cnt_bit == DATA_WIDTH - 1 && cnt_div == CLK_DIV - 1)begin//接收完整的数据
        spi_rx_valid <= 1'b1;
    end
    else
        spi_rx_valid <= 0;
end


endmodule























`timescale 1ns/1ns

module tb_spi_m();

reg clk;
reg rstn;
wire sck;
wire busy;
reg spi_req;

wire [7:0] spi_tx_data = 8'b1010_0011;
wire [7:0] spi_rx_data;

wire spi_rx_valid;

reg Mspi_miso;
wire Mspi_sc;
wire Mspi_mosi;

initial begin
    clk = 1'b0;
end

always#10 clk = ~clk;

initial begin
    rstn = 1'b0;
    #100 rstn = 1'b1;
    Mspi_miso = 1'b0;
    #100 Mspi_miso = 1'b1;
    #100 Mspi_miso = 1'b0;
    #100 Mspi_miso = 1'b1;
    #300 Mspi_miso = 1'b0;
    #100 Mspi_miso = 1'b1;
    #300 Mspi_miso = 1'b0;
    #300 Mspi_miso = 1'b0;
end

initial begin
    spi_req = 1'b0;
    #300 spi_req = 1'b1;
end



always @(posedge clk) begin
    if(~rstn)
        spi_req <= 1'b0;
    else if(~busy)
        spi_req <= 1'b1;
    else
        spi_req <= 1'b0;
end



SPI_m spi_m_inst(
    .sysclk(clk),
    .rstn(rstn),

    //SPI_M
    .Mspi_sck(sck),
    .Mspi_mosi(Mspi_mosi), 
    .Mspi_miso(Mspi_miso),

    .Mspi_sc(Mspi_sc),//片选信号线 

    //用户端
    .spi_tx_data(spi_tx_data),
    .spi_rx_data(spi_rx_data),

    .spi_req(spi_req),
    .spi_rx_valid(spi_rx_valid),
    .spi_busy(busy) 
);

endmodule