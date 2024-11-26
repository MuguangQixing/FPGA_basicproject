// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Nov 19 23:01:04 2024
// Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rw_ctrl_0_0_stub.v
// Design      : design_1_rw_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rw_ctrl,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(M_AXI_ACLK, M_AXI_ARESETN, fdma_waddr, 
  fdma_wareq, fdma_wsize, fdma_wbusy, fdma_wdata, fdma_wvalid, fdma_wready, fdma_wend, fdma_rend, 
  fdma_raddr, fdma_rareq, fdma_rsize, fdma_rbusy, fdma_rdata, fdma_rvalid, fdma_rready)
/* synthesis syn_black_box black_box_pad_pin="M_AXI_ACLK,M_AXI_ARESETN,fdma_waddr[31:0],fdma_wareq,fdma_wsize[15:0],fdma_wbusy,fdma_wdata[127:0],fdma_wvalid,fdma_wready,fdma_wend,fdma_rend,fdma_raddr[31:0],fdma_rareq,fdma_rsize[15:0],fdma_rbusy,fdma_rdata[127:0],fdma_rvalid,fdma_rready" */;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [31:0]fdma_waddr;
  output fdma_wareq;
  output [15:0]fdma_wsize;
  input fdma_wbusy;
  output [127:0]fdma_wdata;
  input fdma_wvalid;
  output fdma_wready;
  input fdma_wend;
  input fdma_rend;
  output [31:0]fdma_raddr;
  output fdma_rareq;
  output [15:0]fdma_rsize;
  input fdma_rbusy;
  input [127:0]fdma_rdata;
  input fdma_rvalid;
  output fdma_rready;
endmodule
