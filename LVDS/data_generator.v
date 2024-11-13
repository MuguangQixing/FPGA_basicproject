// `define VIDEO_1920_1080
// `define VIDEO_1680_1050
// `define VIDEO_1280_1024
// `define VIDEO_1280_720
// `define VIDEO_1024_768
// `define VIDEO_800_600
 `define VIDEO_640_480


module data_generator (
    input         i_clk_65mhz  ,   //input 65MHz clk, period : 15.38ns
    input         i_rst        ,
    output  [7:0] o_red_data   ,
    output  [7:0] o_gre_data   ,
    output  [7:0] o_blu_data   ,
    output  reg   o_h_sync     ,
    output  reg   o_v_sync     ,
    output  reg   o_data_en     
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



/* 
    this module is used for data generation
    BP101WX1-206
    1280 * 800 pixel
*/
//count H_SYNC
reg [31:0] cnt_h;
reg [31:0] cnt_v;


always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        cnt_h <= 0;
    end
    else if (end_cnt_h) begin
        cnt_h <= 0;
    end
    else begin
        cnt_h <= cnt_h + 1;
    end
end


assign end_cnt_h = cnt_h == (H_TOTAL - 1);
 
//count V_SYNC
always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        cnt_v <= 0;
    end
    else if (end_cnt_h) begin
        if (end_cnt_v) begin
            cnt_v <= 0;
        end
        else begin
            cnt_v <= cnt_v + 1;
        end
    end
end
assign end_cnt_v = end_cnt_h && (cnt_v == (V_TOTAL - 1));
 
//OUTPUT h_sync v_sync DE
always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        o_h_sync <= 1;
    end
    else if ((cnt_h == H_FRONT_PORCH - 1) || (cnt_h == H_FRONT_PORCH + H_SYNC_TIME - 1)) begin
        o_h_sync <= ~o_h_sync;
    end
end
 
always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        o_v_sync <= 1;
    end
    else if ((cnt_v == V_FRONT_PORCH - 1 && end_cnt_h) || (cnt_v == V_FRONT_PORCH + V_SYNC_TIME - 1 && end_cnt_h)) begin
        o_v_sync <= ~o_v_sync;
    end
end

localparam H_BLANK = 0;
localparam V_BLANK = 0;
 
always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        o_data_en <= 0;
    end
    else if ((cnt_h == H_BLANK - 1 && cnt_v >= V_BLANK) || (cnt_h == H_TOTAL - 1 && cnt_v >= V_BLANK)) begin
        o_data_en <= ~o_data_en;
    end
end
 
 
//RGB data generation
wire x_cnt;
wire y_cnt;
assign x_cnt = (cnt_h >= H_BLANK)? cnt_h - (H_BLANK - 1) : 0;
assign y_cnt = (cnt_v >= V_BLANK)? cnt_v - (V_BLANK) : 0;

reg [23:0] rgb_data;
always @(posedge i_clk_65mhz or posedge i_rst) begin
    if (i_rst) begin
        rgb_data <= 0;
    end
    /* else if (x_cnt == h_vo || y_cnt == v_vo) begin
        rgb_data <= 24'hff_00_00;
    end */
 
    else if (x_cnt == 0 || x_cnt == 639 || x_cnt == 1279) begin
        rgb_data <= 24'h00_00_00;
    end
    else if (y_cnt == 0 || y_cnt == 20 || y_cnt == 40) begin
        rgb_data <= 24'h00_00_00;
    end
 
 
    else begin
        rgb_data <= 24'hffffff;
    end
end
assign {o_red_data, o_gre_data, o_blu_data} = rgb_data;

endmodule