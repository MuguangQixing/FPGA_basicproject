module mig_ctrl(

//---------wr-----------
input               wr_req,
input [27:0]        wr_req_addr,
input [15:0]        wr_length,
input [127:0]       wr_data,
output              wr_busy,
output              wr_data_valid, 
output              wr_done, 
//---------rd-----------
input               rd_req,
input [27:0]        rd_req_addr,
input [15:0]        rd_length,
output [127:0]      rd_data,
output              rd_busy,
output              rd_data_valid, 
output              rd_done, 
//---------------MIG-------------
    output [27:0]	app_addr,
    output [2:0]	app_cmd,
    output			app_en,
    output [127:0]	app_wdf_data,
    output			app_wdf_end,
    output			app_wdf_wren,
    input [127:0]	app_rd_data,
    input			app_rd_data_end,
    input			app_rd_data_valid,
    input			app_rdy,
    input			app_wdf_rdy,
    output			app_sr_req,
    output			app_ref_req,
    output			app_zq_req,
    input			app_sr_active,
    input			app_ref_ack,
    input			app_zq_ack,
    input			ui_clk,
    input			ui_clk_sync_rst,
    output [15:0]	app_wdf_mask

);


assign			app_sr_req   = 1'b0;
assign			app_ref_req  = 1'b0;//若高电平，表示需要刷新
assign			app_zq_req   = 1'b0;//若高电平，表示需要ZQ校准
assign          app_wdf_mask = 16'b0000_0000_0000_0000;//该信号为 app_wdf_data[] 提供掩码
    

wire [27:0] app_wr_addr    ;
wire [2:0]  app_wr_cmd     ;
wire        app_wr_en      ;

wire [27:0] app_rd_addr    ;
wire [2:0]  app_rd_cmd     ;
wire        app_rd_en      ;


assign app_addr = (wr_busy) ? app_wr_addr : app_rd_addr;
assign app_cmd  = (wr_busy) ? app_wr_cmd  : app_rd_cmd;
assign app_en   = (wr_busy) ? app_wr_en   : app_rd_en;

mig_ctrl_wr mig_ctrl_wr_inst(
.ui_clk         (ui_clk),
.rst_n          (~ui_clk_sync_rst),

.wr_req         (wr_req),
.wr_req_addr    (wr_req_addr),
.wr_length      (wr_length),
.wr_data        (wr_data),
.wr_busy        (wr_busy),
.wr_data_valid  (wr_data_valid), 
.wr_done        (wr_done), 

//-------------mig-------------
.app_wr_addr    (app_wr_addr),
.app_wr_cmd     (app_wr_cmd),
.app_wr_en      (app_wr_en),
.app_rdy        (app_rdy),
.app_wdf_data   (app_wdf_data),
.app_wdf_end    (app_wdf_end),
.app_wdf_wren   (app_wdf_wren),
.app_wdf_rdy    (app_wdf_rdy)
);



mig_ctrl_rd mig_ctrl_rd_inst(
.ui_clk         (ui_clk),
.rst_n          (~ui_clk_sync_rst),

.rd_req         (rd_req),
.rd_req_addr    (rd_req_addr),
.rd_length      (rd_length),
.rd_data        (rd_data),
.rd_busy        (rd_busy),
.rd_data_valid  (rd_data_valid), 
.rd_done        (rd_done), 

//-------------mig-------------
.app_rd_addr    (app_rd_addr),//
.app_rd_cmd     (app_rd_cmd),
.app_rd_en      (app_rd_en),
.app_rdy        (app_rdy),
.app_rd_data    (app_rd_data),
.app_rd_data_end    (app_rd_data_end),
.app_rd_data_valid  (app_rd_data_valid)
);


endmodule