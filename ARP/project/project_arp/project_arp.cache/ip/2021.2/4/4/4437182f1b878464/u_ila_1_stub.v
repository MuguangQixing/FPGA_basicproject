// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Nov 28 21:06:17 2024
// Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_1_stub.v
// Design      : u_ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[6:0],probe1[47:0],probe2[31:0],probe3[4:0],probe4[7:0],probe5[0:0],probe6[0:0],probe7[0:0]" */;
  input clk;
  input [6:0]probe0;
  input [47:0]probe1;
  input [31:0]probe2;
  input [4:0]probe3;
  input [7:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
endmodule
