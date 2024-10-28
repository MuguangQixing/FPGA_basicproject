module top_mig(
 input sysclk,
 input rst_n,

 output [13:0]		ddr3_addr,
 output [2:0]		ddr3_ba,
 output			ddr3_cas_n,
 output 		ddr3_ck_n,
 output 		ddr3_ck_p,
 output 		ddr3_cke,
 output			ddr3_ras_n,
 output			ddr3_reset_n,
 output			ddr3_we_n,
 inout [15:0]		ddr3_dq,
 inout [1:0]		ddr3_dqs_n,
 inout [1:0]		ddr3_dqs_p,
 output 		ddr3_cs_n,
 output [1:0]		ddr3_dm,
 output 		ddr3_odt
);

    wire  [27:0]	app_addr;
    wire  [2:0]	    app_cmd;
    wire 			app_en;
    wire  [127:0]	app_wdf_data;
    wire 			app_wdf_end;
    wire 			app_wdf_wren;
    wire [127:0]	app_rd_data;
    wire 			app_rd_data_end;
    wire 			app_rd_data_valid;
    wire 			app_rdy;
    wire 			app_wdf_rdy;
    wire			app_sr_req;
    wire			app_ref_req;
    wire			app_zq_req;
    wire			app_sr_active;
    wire			app_ref_ack;
    wire			app_zq_ack;
    wire			ui_clk;
    wire			ui_clk_sync_rst;
    wire [15:0]	app_wdf_mask;




wire wr_req;
wire [27:0]  wr_req_addr;
wire [15:0]  wr_length;
wire [127:0] wr_data;
wire wr_busy;
wire wr_data_valid;
wire wr_done;
//---------rd-----------
wire rd_req;
wire [27:0] rd_req_addr;
wire [15:0] rd_length;
wire [127:0] rd_data;
wire rd_busy;
wire rd_data_valid;
wire rd_done;



wire clk_200M;
wire locked;

  clk_wiz_0 clk_wiz_0_inst
   (
    
    .clk_200M(clk_200M),     // output clk_200M
    
    .resetn(rst_n), // input resetn
    .locked(locked),       // output locked
   
    .clk_in1(sysclk) // input clk_in1
    );     





mig_ctrl mig_ctrl_inst(

//---------wr-----------
.wr_req     (wr_req),
.wr_req_addr(wr_req_addr),
.wr_length  (wr_length),
.wr_data    (wr_data),
.wr_busy    (wr_busy),
.wr_data_valid(wr_data_valid), 
.wr_done    (wr_done),  
//---------rd-----------
.rd_req     (rd_req),
.rd_req_addr(rd_req_addr),
.rd_length  (rd_length),
.rd_data    (rd_data),
.rd_busy    (rd_busy),
.rd_data_valid(rd_data_valid), 
.rd_done    (rd_done),
//---------------MIG-------------
.app_addr       (app_addr),  
.app_cmd        (app_cmd),
.app_en         (app_en),
.app_wdf_data   (app_wdf_data),
.app_wdf_end    (app_wdf_end),
.app_wdf_wren   (app_wdf_wren),
.app_rd_data    (app_rd_data),
.app_rd_data_end(app_rd_data_end),
.app_rd_data_valid(app_rd_data_valid),
.app_rdy        (app_rdy),
.app_wdf_rdy    (app_wdf_rdy),
.app_sr_req     (app_sr_req),
.app_ref_req    (app_ref_req),
.app_zq_req     (app_zq_req),
.app_sr_active  (app_sr_active),
.app_ref_ack    (app_ref_ack),
.app_zq_ack     (app_zq_ack),
.ui_clk         (ui_clk),
.ui_clk_sync_rst(ui_clk_sync_rst),
.app_wdf_mask   (app_wdf_mask)
);


  mig_7series_0 u_mig_7series_0 (

    // Memory interface ports
    .ddr3_addr                      (ddr3_addr),        // output [13:0]		ddr3_addr
    .ddr3_ba                        (ddr3_ba),          // output [2:0]		ddr3_ba
    .ddr3_cas_n                     (ddr3_cas_n),       // output			ddr3_cas_n
    .ddr3_ck_n                      (ddr3_ck_n),        // output [0:0]		ddr3_ck_n
    .ddr3_ck_p                      (ddr3_ck_p),        // output [0:0]		ddr3_ck_p
    .ddr3_cke                       (ddr3_cke),         // output [0:0]		ddr3_cke
    .ddr3_ras_n                     (ddr3_ras_n),       // output			ddr3_ras_n
    .ddr3_reset_n                   (ddr3_reset_n),     // output			ddr3_reset_n
    .ddr3_we_n                      (ddr3_we_n),        // output			ddr3_we_n
    .ddr3_dq                        (ddr3_dq),          // inout [15:0]		ddr3_dq
    .ddr3_dqs_n                     (ddr3_dqs_n),       // inout [1:0]		ddr3_dqs_n
    .ddr3_dqs_p                     (ddr3_dqs_p),       // inout [1:0]		ddr3_dqs_p
    .init_calib_complete            (init_calib_complete),  // output			init_calib_complete   
	.ddr3_cs_n                      (ddr3_cs_n),        // output [0:0]		ddr3_cs_n
    .ddr3_dm                        (ddr3_dm),          // output [1:0]		ddr3_dm
    .ddr3_odt                       (ddr3_odt),         // output [0:0]		ddr3_odt
    // Application interface ports
    .app_addr                       (app_addr),         // input [27:0]		app_addr
    .app_cmd                        (app_cmd),          // input [2:0]		app_cmd
    .app_en                         (app_en),           // input				app_en
    .app_wdf_data                   (app_wdf_data),     // input [127:0]		app_wdf_data
    .app_wdf_end                    (app_wdf_end),      // input				app_wdf_end
    .app_wdf_wren                   (app_wdf_wren),  // input				app_wdf_wren
    .app_rd_data                    (app_rd_data),  // output [127:0]		app_rd_data
    .app_rd_data_end                (app_rd_data_end),  // output			app_rd_data_end
    .app_rd_data_valid              (app_rd_data_valid),  // output			app_rd_data_valid
    .app_rdy                        (app_rdy),  // output			app_rdy
    .app_wdf_rdy                    (app_wdf_rdy),  // output			app_wdf_rdy
    .app_sr_req                     (app_sr_req),  // input			app_sr_req
    .app_ref_req                    (app_ref_req),  // input			app_ref_req
    .app_zq_req                     (app_zq_req),  // input			app_zq_req
    .app_sr_active                  (app_sr_active),  // output			app_sr_active
    .app_ref_ack                    (app_ref_ack),  // output			app_ref_ack
    .app_zq_ack                     (app_zq_ack),  // output			app_zq_ack
    .ui_clk                         (ui_clk),  // output			ui_clk
    .ui_clk_sync_rst                (ui_clk_sync_rst),  // output			ui_clk_sync_rst
    .app_wdf_mask                   (app_wdf_mask),  // input [15:0]		app_wdf_mask
    // System Clock Ports
    .sys_clk_i                       (clk_200M),  // input			sys_clk_i
    .sys_rst                        (locked) // input sys_rst
    );

test_mig test_mig_inst(
.ui_clk     (ui_clk),
.ui_rstn    (init_calib_complete),

.wr_req     (wr_req),
.wr_req_addr(wr_req_addr),
.wr_length  (wr_length),
.wr_data    (wr_data),
.wr_busy    (wr_busy),
.wr_data_valid(wr_data_valid), 
.wr_done    (wr_done), 
//---------rd-----------
.rd_req     (rd_req),
.rd_req_addr(rd_req_addr),
.rd_length  (rd_length),
.rd_data    (rd_data),
.rd_busy    (rd_busy),
.rd_data_valid(rd_data_valid), 
.rd_done    (rd_done)
);

endmodule