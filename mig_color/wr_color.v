module wr_color(
    input               clk,
    input               rst_n,
    input               ui_wr_done,

    output reg           wr_req,
    output reg [27:0]    wr_req_addr,
    output [15:0]        wr_length,
    output reg [127:0]   wr_data,
    input                wr_busy,
    input                wr_data_valid, 
    input                wr_done
);
//使用1280x720的分辨率
//一行的图像数据是1280x24bit
//1280*24/128 = 240：每一行的数据需要240个时钟周期

//但是由于之后需要使用FIFO，24不好用，上调到32
//1280*32/128 = 320：每一行的数据需要320个时钟周期
//其中，每个像素点是32bit,是原来的24bit再在高位上加上8个0

assign wr_length = 320;//一次请求发送一行数据

reg [31:0] cnt_v;//行计数器
always @(posedge clk) begin
    if(~rst_n)
        cnt_v <= 0;
    else if(wr_done)begin
        if(cnt_v > 720)
            cnt_v <= cnt_v;
        else
            cnt_v <= cnt_v + 1;
    end
end


always @(posedge clk ) begin
    if(~rst_n)
        wr_req <= 1'b0;
    else if(wr_busy == 0 && cnt_v < 720)//每次请求发送一行数据，总共写完1280x720需要720次请求
        wr_req <= 1'b1;
    else
        wr_req <= 1'b0;
end

//DDR中一个地址可以存储16bit数据
//1280*32/16 = 2560

always @(posedge clk ) begin
    if(~rst_n)
        wr_req_addr <= 0;
    else if(wr_done)
        wr_req_addr <= wr_req_addr + 2560;
end

always @(posedge clk) begin
    if(~rst_n)
        wr_data <= 0;
    else if(cnt_v < 200)
        wr_data <= 128'hff000000_ff000000_ff000000_ff000000;//放了四个像素点，每个像素点是32bit
    else if(200 <= cnt_v < 400)
        wr_data <= 128'h0000ff00_0000ff00_0000ff00_0000ff00;
    else if(400 <= cnt_v < 600)
        wr_data <= 128'h000000ff_000000ff_000000ff_000000ff;
    else if(600 <= cnt_v < 720)
        wr_data <= 128'h0000ffff_0000ffff_0000ffff_0000ffff;
end

assign ui_wr_done = (cnt_v >= 720);

endmodule