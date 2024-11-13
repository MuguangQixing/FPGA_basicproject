// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Nov 12 14:59:55 2024
// Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               H:/FPGA_basicproject/mig_color/project/project_migcolorbar/project_migcolorbar.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_200M, clk_375M, clk_75M, resetn, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_200M,clk_375M,clk_75M,resetn,locked,clk_in1" */;
  output clk_200M;
  output clk_375M;
  output clk_75M;
  input resetn;
  output locked;
  input clk_in1;
endmodule
