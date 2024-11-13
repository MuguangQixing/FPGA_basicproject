module rd_color(
    input               clk,
    input               rst_n,

    output reg           rd_req,
    output reg [27:0]        rd_req_addr,
    output [15:0]        rd_length,
    input  [127:0]       rd_data,
    input                rd_busy,
    input                rd_data_valid, 
    input                rd_done,
    //---------VTC-------------
    input               pclk,
    input               de,
    output [23:0]       rgb_data,
    output reg          fifo_ready 
);

assign  rd_length = 320;
wire [9 : 0] wr_data_count;
 wire wr_rst_busy;//表示复位完成

reg [31:0] cnt_v;//行计数器
always @(posedge clk) begin
    if(~rst_n)
        cnt_v <= 0;
    else if(rd_done)begin
        if(cnt_v == 720 - 1)
            cnt_v <= 0;
        else
            cnt_v <= cnt_v + 1;
    end
end

wire [31:0]   dout;
assign rgb_data = dout[23:0];

fifo_generator_0 FIFO_inst (
  .rst(~rst_n),                      // input wire rst
  .wr_clk(clk),                // input wire wr_clk
  .rd_clk(pclk),                // input wire rd_clk
  .din(rd_data),                      // input wire [127 : 0] din
  .wr_en(rd_data_valid),                  // input wire wr_en
  .rd_en(de),                  // input wire rd_en
  .dout(dout),                    // output wire [31 : 0] dout
  .full(),                    // output wire full
  .empty(),                  // output wire empty
  .wr_data_count(wr_data_count),  // output wire [9 : 0] wr_data_count
  .wr_rst_busy(wr_rst_busy),      // output wire wr_rst_busy
  .rd_rst_busy()      // output wire rd_rst_busy
);

// 监控 FIFO 中的数据量，决定 HDMI 是否可以开始
always @(posedge clk) begin
    if(~rst_n)
        fifo_ready <= 1'b0;
    else if(wr_data_count >= 10)    // 不用设置太大，只要 FIFO 中有数据就可以开始
        fifo_ready <= 1'b1;
    else
        fifo_ready <= fifo_ready;
end

always @(posedge clk ) begin
    if(~rst_n)
        rd_req <= 1'b0;
    else if(rd_done && cnt_v == 720 - 1)
        rd_req <= 1'b0;
    else if(rd_busy == 0 && wr_data_count < 320 && ~wr_rst_busy)
        rd_req <= 1'b1;
    else
        rd_req <= 1'b0;
end

always @(posedge clk ) begin
    if(~rst_n)
        rd_req_addr <= 0;
    else if(rd_done)begin
        if(rd_req_addr == 2560 * 720 - 2560)
            rd_req_addr <= 0;
        else
            rd_req_addr <= rd_req_addr + 2560;
    end
end


endmodule