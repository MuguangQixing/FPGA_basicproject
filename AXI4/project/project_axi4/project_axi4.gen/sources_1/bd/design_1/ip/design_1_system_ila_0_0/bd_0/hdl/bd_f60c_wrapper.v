//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (clk,
    probe0,
    probe1,
    probe2,
    probe3);
  input clk;
  input [127:0]probe0;
  input [127:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;

  wire clk;
  wire [127:0]probe0;
  wire [127:0]probe1;
  wire [0:0]probe2;
  wire [0:0]probe3;

  bd_f60c bd_f60c_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3));
endmodule
