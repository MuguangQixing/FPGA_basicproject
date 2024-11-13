// `define VIDEO_1920_1080
// `define VIDEO_1680_1050
// `define VIDEO_1280_1024
`define VIDEO_1280_720
// `define VIDEO_1024_768
// `define VIDEO_800_600
 //`define VIDEO_640_480


module VTC(
    input clk,
    input rstn,
    
    output reg hsync,//行同步信�?
    output reg vsync,//场同步信�?
    output reg de   //数据有效信号
);


/*---------参数定义--------*/

`ifdef VIDEO_1920_1080

localparam H_ACTIVE = 1920;
localparam H_FRONT_PORCH = 88;
localparam H_SYNC_TIME = 44;
localparam H_BACK_PORCH = 148;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 1080;
localparam V_FRONT_PORCH = 4;
localparam V_SYNC_TIME = 5;
localparam V_BACK_PORCH = 36;
localparam V_POLARITY = 0;

`endif

`ifdef VIDEO_1680_1050

localparam H_ACTIVE = 1680;
localparam H_FRONT_PORCH = 48;
localparam H_SYNC_TIME = 32;
localparam H_BACK_PORCH = 80;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 1050;
localparam V_FRONT_PORCH = 3;
localparam V_SYNC_TIME = 6;
localparam V_BACK_PORCH = 21;
localparam V_POLARITY = 0;

`endif

`ifdef VIDEO_1280_1024

localparam H_ACTIVE = 1280;
localparam H_FRONT_PORCH = 48;
localparam H_SYNC_TIME = 112;
localparam H_BACK_PORCH = 248;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 1024;
localparam V_FRONT_PORCH = 1;
localparam V_SYNC_TIME = 3;
localparam V_BACK_PORCH = 38;
localparam V_POLARITY = 0;

`endif


`ifdef VIDEO_1280_720

localparam H_ACTIVE = 1280;
localparam H_FRONT_PORCH = 110;
localparam H_SYNC_TIME = 40;
localparam H_BACK_PORCH = 220;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 720;
localparam V_FRONT_PORCH = 5;
localparam V_SYNC_TIME = 5;
localparam V_BACK_PORCH = 20;
localparam V_POLARITY = 0;

`endif


`ifdef VIDEO_1024_768

localparam H_ACTIVE = 1024;
localparam H_FRONT_PORCH = 24;
localparam H_SYNC_TIME = 136;
localparam H_BACK_PORCH = 160;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 768;
localparam V_FRONT_PORCH = 3;
localparam V_SYNC_TIME = 6;
localparam V_BACK_PORCH = 29;
localparam V_POLARITY = 0;

`endif


`ifdef VIDEO_800_600

localparam H_ACTIVE = 800;
localparam H_FRONT_PORCH = 40;
localparam H_SYNC_TIME = 128;
localparam H_BACK_PORCH = 88;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 600;
localparam V_FRONT_PORCH = 1;
localparam V_SYNC_TIME = 4;
localparam V_BACK_PORCH = 23;
localparam V_POLARITY = 0;

`endif

`ifdef VIDEO_640_480

localparam H_ACTIVE = 640;
localparam H_FRONT_PORCH = 16;
localparam H_SYNC_TIME = 96;
localparam H_BACK_PORCH = 48;
localparam H_POLARITY = 0;

localparam V_ACTIVE = 480;
localparam V_FRONT_PORCH = 10;
localparam V_SYNC_TIME = 2;
localparam V_BACK_PORCH = 33;
localparam V_POLARITY = 0;

`endif


localparam H_TOTAL = H_ACTIVE + H_FRONT_PORCH + H_SYNC_TIME + H_BACK_PORCH;
localparam V_TOTAL = V_ACTIVE + V_FRONT_PORCH + V_SYNC_TIME + V_BACK_PORCH;


reg [31:0] cnt_h;
reg [31:0] cnt_v;

always @(posedge clk) begin
    if(~rstn)
        cnt_h <= 0;
    else if(cnt_h == H_TOTAL - 1)
        cnt_h <= 0;
    else
        cnt_h <= cnt_h + 1;
end

always @(posedge clk) begin
    if(~rstn)
        cnt_v <= 0;
    else if(cnt_h == H_TOTAL - 1)begin
        if(cnt_v == V_TOTAL - 1)
            cnt_v <= 0;
        else
            cnt_v <= cnt_v + 1;
    end
end




always @(posedge clk) begin
    if(~rstn)
        hsync <= 1;
    else if(cnt_h <= H_SYNC_TIME - 1)
        hsync <= H_POLARITY;
    else
        hsync <= ~H_POLARITY;
end

always @(posedge clk) begin
    if(~rstn)
        vsync <= 1;
    else if(cnt_v <= V_SYNC_TIME - 1)
        vsync <= V_POLARITY;
    else
        vsync <= ~V_POLARITY;
end



always @(posedge clk) begin
    if(~rstn)
        de <= 0;
    else if ((cnt_h > H_SYNC_TIME +  H_BACK_PORCH - 1 )&&(cnt_h <= H_TOTAL - H_FRONT_PORCH - 1)&&(cnt_v > V_SYNC_TIME + V_BACK_PORCH - 1)&&(cnt_v <= V_TOTAL - V_FRONT_PORCH - 1))
        de <= 1;
    else
        de <= 0;
end

endmodule

















//`timescale 1ns/1ps
//module tb_VTC();
//reg clk;
//reg rstn;

//initial begin
//    clk = 0;
//    rstn = 0;
//    #100 rstn = 1;
//end

//always #20 clk = ~clk;//采用640x480的分辨率，使�?25MHz的像素时�?

//VTC VTC_inst(
//    .clk(clk),
//    .rstn(rstn),
//    .hsync(),
//    .vsync(),
//    .de()
//);

//endmodule