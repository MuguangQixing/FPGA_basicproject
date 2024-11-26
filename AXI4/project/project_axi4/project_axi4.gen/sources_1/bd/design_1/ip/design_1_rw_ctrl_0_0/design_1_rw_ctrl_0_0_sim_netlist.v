// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Nov 19 23:01:04 2024
// Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/FPGA_basicproject/AXI4/project/project_axi4/project_axi4.gen/sources_1/bd/design_1/ip/design_1_rw_ctrl_0_0/design_1_rw_ctrl_0_0_sim_netlist.v
// Design      : design_1_rw_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rw_ctrl_0_0,rw_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rw_ctrl,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_rw_ctrl_0_0
   (M_AXI_ACLK,
    M_AXI_ARESETN,
    fdma_waddr,
    fdma_wareq,
    fdma_wsize,
    fdma_wbusy,
    fdma_wdata,
    fdma_wvalid,
    fdma_wready,
    fdma_wend,
    fdma_rend,
    fdma_raddr,
    fdma_rareq,
    fdma_rsize,
    fdma_rbusy,
    fdma_rdata,
    fdma_rvalid,
    fdma_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
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

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire M_AXI_ARESETN;
  wire fdma_rareq;
  wire fdma_rbusy;
  wire fdma_rend;
  wire fdma_wareq;
  wire fdma_wbusy;
  wire [127:0]fdma_wdata;
  wire fdma_wend;
  wire fdma_wvalid;

  assign fdma_raddr[31] = \<const1> ;
  assign fdma_raddr[30] = \<const0> ;
  assign fdma_raddr[29] = \<const0> ;
  assign fdma_raddr[28] = \<const0> ;
  assign fdma_raddr[27] = \<const0> ;
  assign fdma_raddr[26] = \<const0> ;
  assign fdma_raddr[25] = \<const0> ;
  assign fdma_raddr[24] = \<const0> ;
  assign fdma_raddr[23] = \<const0> ;
  assign fdma_raddr[22] = \<const0> ;
  assign fdma_raddr[21] = \<const0> ;
  assign fdma_raddr[20] = \<const0> ;
  assign fdma_raddr[19] = \<const0> ;
  assign fdma_raddr[18] = \<const0> ;
  assign fdma_raddr[17] = \<const0> ;
  assign fdma_raddr[16] = \<const0> ;
  assign fdma_raddr[15] = \<const0> ;
  assign fdma_raddr[14] = \<const0> ;
  assign fdma_raddr[13] = \<const0> ;
  assign fdma_raddr[12] = \<const0> ;
  assign fdma_raddr[11] = \<const0> ;
  assign fdma_raddr[10] = \<const0> ;
  assign fdma_raddr[9] = \<const0> ;
  assign fdma_raddr[8] = \<const0> ;
  assign fdma_raddr[7] = \<const0> ;
  assign fdma_raddr[6] = \<const0> ;
  assign fdma_raddr[5] = \<const0> ;
  assign fdma_raddr[4] = \<const0> ;
  assign fdma_raddr[3] = \<const0> ;
  assign fdma_raddr[2] = \<const0> ;
  assign fdma_raddr[1] = \<const0> ;
  assign fdma_raddr[0] = \<const0> ;
  assign fdma_rready = \<const1> ;
  assign fdma_rsize[15] = \<const0> ;
  assign fdma_rsize[14] = \<const0> ;
  assign fdma_rsize[13] = \<const0> ;
  assign fdma_rsize[12] = \<const0> ;
  assign fdma_rsize[11] = \<const0> ;
  assign fdma_rsize[10] = \<const0> ;
  assign fdma_rsize[9] = \<const0> ;
  assign fdma_rsize[8] = \<const1> ;
  assign fdma_rsize[7] = \<const1> ;
  assign fdma_rsize[6] = \<const1> ;
  assign fdma_rsize[5] = \<const1> ;
  assign fdma_rsize[4] = \<const1> ;
  assign fdma_rsize[3] = \<const0> ;
  assign fdma_rsize[2] = \<const1> ;
  assign fdma_rsize[1] = \<const0> ;
  assign fdma_rsize[0] = \<const0> ;
  assign fdma_waddr[31] = \<const1> ;
  assign fdma_waddr[30] = \<const0> ;
  assign fdma_waddr[29] = \<const0> ;
  assign fdma_waddr[28] = \<const0> ;
  assign fdma_waddr[27] = \<const0> ;
  assign fdma_waddr[26] = \<const0> ;
  assign fdma_waddr[25] = \<const0> ;
  assign fdma_waddr[24] = \<const0> ;
  assign fdma_waddr[23] = \<const0> ;
  assign fdma_waddr[22] = \<const0> ;
  assign fdma_waddr[21] = \<const0> ;
  assign fdma_waddr[20] = \<const0> ;
  assign fdma_waddr[19] = \<const0> ;
  assign fdma_waddr[18] = \<const0> ;
  assign fdma_waddr[17] = \<const0> ;
  assign fdma_waddr[16] = \<const0> ;
  assign fdma_waddr[15] = \<const0> ;
  assign fdma_waddr[14] = \<const0> ;
  assign fdma_waddr[13] = \<const0> ;
  assign fdma_waddr[12] = \<const0> ;
  assign fdma_waddr[11] = \<const0> ;
  assign fdma_waddr[10] = \<const0> ;
  assign fdma_waddr[9] = \<const0> ;
  assign fdma_waddr[8] = \<const0> ;
  assign fdma_waddr[7] = \<const0> ;
  assign fdma_waddr[6] = \<const0> ;
  assign fdma_waddr[5] = \<const0> ;
  assign fdma_waddr[4] = \<const0> ;
  assign fdma_waddr[3] = \<const0> ;
  assign fdma_waddr[2] = \<const0> ;
  assign fdma_waddr[1] = \<const0> ;
  assign fdma_waddr[0] = \<const0> ;
  assign fdma_wready = \<const1> ;
  assign fdma_wsize[15] = \<const0> ;
  assign fdma_wsize[14] = \<const0> ;
  assign fdma_wsize[13] = \<const0> ;
  assign fdma_wsize[12] = \<const0> ;
  assign fdma_wsize[11] = \<const0> ;
  assign fdma_wsize[10] = \<const0> ;
  assign fdma_wsize[9] = \<const0> ;
  assign fdma_wsize[8] = \<const1> ;
  assign fdma_wsize[7] = \<const1> ;
  assign fdma_wsize[6] = \<const1> ;
  assign fdma_wsize[5] = \<const1> ;
  assign fdma_wsize[4] = \<const1> ;
  assign fdma_wsize[3] = \<const0> ;
  assign fdma_wsize[2] = \<const1> ;
  assign fdma_wsize[1] = \<const0> ;
  assign fdma_wsize[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_rw_ctrl_0_0_rw_ctrl inst
       (.M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .fdma_rareq(fdma_rareq),
        .fdma_rbusy(fdma_rbusy),
        .fdma_rend(fdma_rend),
        .fdma_wareq(fdma_wareq),
        .fdma_wbusy(fdma_wbusy),
        .fdma_wdata(fdma_wdata),
        .fdma_wend(fdma_wend),
        .fdma_wvalid(fdma_wvalid));
endmodule

(* ORIG_REF_NAME = "rw_ctrl" *) 
module design_1_rw_ctrl_0_0_rw_ctrl
   (fdma_wdata,
    fdma_wareq,
    fdma_rareq,
    fdma_rend,
    fdma_wend,
    M_AXI_ARESETN,
    M_AXI_ACLK,
    fdma_wvalid,
    fdma_wbusy,
    fdma_rbusy);
  output [127:0]fdma_wdata;
  output fdma_wareq;
  output fdma_rareq;
  input fdma_rend;
  input fdma_wend;
  input M_AXI_ARESETN;
  input M_AXI_ACLK;
  input fdma_wvalid;
  input fdma_wbusy;
  input fdma_rbusy;

  wire M_AXI_ACLK;
  wire M_AXI_ARESETN;
  wire \cnt_delay[0]_i_1_n_0 ;
  wire \cnt_delay[0]_i_3_n_0 ;
  wire [31:0]cnt_delay_reg;
  wire \cnt_delay_reg[0]_i_2_n_0 ;
  wire \cnt_delay_reg[0]_i_2_n_1 ;
  wire \cnt_delay_reg[0]_i_2_n_2 ;
  wire \cnt_delay_reg[0]_i_2_n_3 ;
  wire \cnt_delay_reg[0]_i_2_n_4 ;
  wire \cnt_delay_reg[0]_i_2_n_5 ;
  wire \cnt_delay_reg[0]_i_2_n_6 ;
  wire \cnt_delay_reg[0]_i_2_n_7 ;
  wire \cnt_delay_reg[12]_i_1_n_0 ;
  wire \cnt_delay_reg[12]_i_1_n_1 ;
  wire \cnt_delay_reg[12]_i_1_n_2 ;
  wire \cnt_delay_reg[12]_i_1_n_3 ;
  wire \cnt_delay_reg[12]_i_1_n_4 ;
  wire \cnt_delay_reg[12]_i_1_n_5 ;
  wire \cnt_delay_reg[12]_i_1_n_6 ;
  wire \cnt_delay_reg[12]_i_1_n_7 ;
  wire \cnt_delay_reg[16]_i_1_n_0 ;
  wire \cnt_delay_reg[16]_i_1_n_1 ;
  wire \cnt_delay_reg[16]_i_1_n_2 ;
  wire \cnt_delay_reg[16]_i_1_n_3 ;
  wire \cnt_delay_reg[16]_i_1_n_4 ;
  wire \cnt_delay_reg[16]_i_1_n_5 ;
  wire \cnt_delay_reg[16]_i_1_n_6 ;
  wire \cnt_delay_reg[16]_i_1_n_7 ;
  wire \cnt_delay_reg[20]_i_1_n_0 ;
  wire \cnt_delay_reg[20]_i_1_n_1 ;
  wire \cnt_delay_reg[20]_i_1_n_2 ;
  wire \cnt_delay_reg[20]_i_1_n_3 ;
  wire \cnt_delay_reg[20]_i_1_n_4 ;
  wire \cnt_delay_reg[20]_i_1_n_5 ;
  wire \cnt_delay_reg[20]_i_1_n_6 ;
  wire \cnt_delay_reg[20]_i_1_n_7 ;
  wire \cnt_delay_reg[24]_i_1_n_0 ;
  wire \cnt_delay_reg[24]_i_1_n_1 ;
  wire \cnt_delay_reg[24]_i_1_n_2 ;
  wire \cnt_delay_reg[24]_i_1_n_3 ;
  wire \cnt_delay_reg[24]_i_1_n_4 ;
  wire \cnt_delay_reg[24]_i_1_n_5 ;
  wire \cnt_delay_reg[24]_i_1_n_6 ;
  wire \cnt_delay_reg[24]_i_1_n_7 ;
  wire \cnt_delay_reg[28]_i_1_n_1 ;
  wire \cnt_delay_reg[28]_i_1_n_2 ;
  wire \cnt_delay_reg[28]_i_1_n_3 ;
  wire \cnt_delay_reg[28]_i_1_n_4 ;
  wire \cnt_delay_reg[28]_i_1_n_5 ;
  wire \cnt_delay_reg[28]_i_1_n_6 ;
  wire \cnt_delay_reg[28]_i_1_n_7 ;
  wire \cnt_delay_reg[4]_i_1_n_0 ;
  wire \cnt_delay_reg[4]_i_1_n_1 ;
  wire \cnt_delay_reg[4]_i_1_n_2 ;
  wire \cnt_delay_reg[4]_i_1_n_3 ;
  wire \cnt_delay_reg[4]_i_1_n_4 ;
  wire \cnt_delay_reg[4]_i_1_n_5 ;
  wire \cnt_delay_reg[4]_i_1_n_6 ;
  wire \cnt_delay_reg[4]_i_1_n_7 ;
  wire \cnt_delay_reg[8]_i_1_n_0 ;
  wire \cnt_delay_reg[8]_i_1_n_1 ;
  wire \cnt_delay_reg[8]_i_1_n_2 ;
  wire \cnt_delay_reg[8]_i_1_n_3 ;
  wire \cnt_delay_reg[8]_i_1_n_4 ;
  wire \cnt_delay_reg[8]_i_1_n_5 ;
  wire \cnt_delay_reg[8]_i_1_n_6 ;
  wire \cnt_delay_reg[8]_i_1_n_7 ;
  wire fdma_rareq;
  wire fdma_rareq0;
  wire fdma_rbusy;
  wire fdma_rend;
  wire fdma_wareq;
  wire fdma_wareq0;
  wire fdma_wareq_i_1_n_0;
  wire fdma_wbusy;
  wire [127:0]fdma_wdata;
  wire fdma_wdata0_carry__0_i_1_n_0;
  wire fdma_wdata0_carry__0_i_2_n_0;
  wire fdma_wdata0_carry__0_i_3_n_0;
  wire fdma_wdata0_carry__0_i_4_n_0;
  wire fdma_wdata0_carry__0_n_0;
  wire fdma_wdata0_carry__0_n_1;
  wire fdma_wdata0_carry__0_n_2;
  wire fdma_wdata0_carry__0_n_3;
  wire fdma_wdata0_carry__1_i_1_n_0;
  wire fdma_wdata0_carry__1_i_2_n_0;
  wire fdma_wdata0_carry__1_i_3_n_0;
  wire fdma_wdata0_carry__1_i_4_n_0;
  wire fdma_wdata0_carry__1_n_0;
  wire fdma_wdata0_carry__1_n_1;
  wire fdma_wdata0_carry__1_n_2;
  wire fdma_wdata0_carry__1_n_3;
  wire fdma_wdata0_carry__2_i_1_n_0;
  wire fdma_wdata0_carry__2_i_2_n_0;
  wire fdma_wdata0_carry__2_i_3_n_0;
  wire fdma_wdata0_carry__2_i_4_n_0;
  wire fdma_wdata0_carry__2_n_0;
  wire fdma_wdata0_carry__2_n_1;
  wire fdma_wdata0_carry__2_n_2;
  wire fdma_wdata0_carry__2_n_3;
  wire fdma_wdata0_carry__3_i_1_n_0;
  wire fdma_wdata0_carry__3_i_2_n_0;
  wire fdma_wdata0_carry__3_i_3_n_0;
  wire fdma_wdata0_carry__3_i_4_n_0;
  wire fdma_wdata0_carry__3_n_0;
  wire fdma_wdata0_carry__3_n_1;
  wire fdma_wdata0_carry__3_n_2;
  wire fdma_wdata0_carry__3_n_3;
  wire fdma_wdata0_carry__4_i_1_n_0;
  wire fdma_wdata0_carry__4_i_2_n_0;
  wire fdma_wdata0_carry__4_i_3_n_0;
  wire fdma_wdata0_carry__4_i_4_n_0;
  wire fdma_wdata0_carry__4_n_0;
  wire fdma_wdata0_carry__4_n_1;
  wire fdma_wdata0_carry__4_n_2;
  wire fdma_wdata0_carry__4_n_3;
  wire fdma_wdata0_carry__5_i_1_n_0;
  wire fdma_wdata0_carry__5_i_2_n_0;
  wire fdma_wdata0_carry__5_i_3_n_0;
  wire fdma_wdata0_carry__5_i_4_n_0;
  wire fdma_wdata0_carry__5_n_0;
  wire fdma_wdata0_carry__5_n_1;
  wire fdma_wdata0_carry__5_n_2;
  wire fdma_wdata0_carry__5_n_3;
  wire fdma_wdata0_carry__6_i_1_n_0;
  wire fdma_wdata0_carry__6_i_2_n_0;
  wire fdma_wdata0_carry__6_i_3_n_0;
  wire fdma_wdata0_carry__6_i_4_n_0;
  wire fdma_wdata0_carry__6_n_0;
  wire fdma_wdata0_carry__6_n_1;
  wire fdma_wdata0_carry__6_n_2;
  wire fdma_wdata0_carry__6_n_3;
  wire fdma_wdata0_carry__7_i_1_n_0;
  wire fdma_wdata0_carry__7_i_2_n_0;
  wire fdma_wdata0_carry__7_i_3_n_0;
  wire fdma_wdata0_carry__7_i_4_n_0;
  wire fdma_wdata0_carry__7_n_0;
  wire fdma_wdata0_carry__7_n_1;
  wire fdma_wdata0_carry__7_n_2;
  wire fdma_wdata0_carry__7_n_3;
  wire fdma_wdata0_carry__8_i_1_n_0;
  wire fdma_wdata0_carry__8_i_2_n_0;
  wire fdma_wdata0_carry__8_i_3_n_0;
  wire fdma_wdata0_carry__8_i_4_n_0;
  wire fdma_wdata0_carry__8_n_0;
  wire fdma_wdata0_carry__8_n_1;
  wire fdma_wdata0_carry__8_n_2;
  wire fdma_wdata0_carry__8_n_3;
  wire fdma_wdata0_carry__9_i_1_n_0;
  wire fdma_wdata0_carry__9_i_2_n_0;
  wire fdma_wdata0_carry__9_i_3_n_0;
  wire fdma_wdata0_carry__9_n_1;
  wire fdma_wdata0_carry__9_n_2;
  wire fdma_wdata0_carry__9_n_3;
  wire fdma_wdata0_carry_i_1_n_0;
  wire fdma_wdata0_carry_i_2_n_0;
  wire fdma_wdata0_carry_i_3_n_0;
  wire fdma_wdata0_carry_i_4_n_0;
  wire fdma_wdata0_carry_n_0;
  wire fdma_wdata0_carry_n_1;
  wire fdma_wdata0_carry_n_2;
  wire fdma_wdata0_carry_n_3;
  wire \fdma_wdata[127]_i_1_n_0 ;
  wire \fdma_wdata[3]_i_2_n_0 ;
  wire \fdma_wdata_reg[103]_i_1_n_0 ;
  wire \fdma_wdata_reg[103]_i_1_n_1 ;
  wire \fdma_wdata_reg[103]_i_1_n_2 ;
  wire \fdma_wdata_reg[103]_i_1_n_3 ;
  wire \fdma_wdata_reg[103]_i_1_n_4 ;
  wire \fdma_wdata_reg[103]_i_1_n_5 ;
  wire \fdma_wdata_reg[103]_i_1_n_6 ;
  wire \fdma_wdata_reg[103]_i_1_n_7 ;
  wire \fdma_wdata_reg[107]_i_1_n_0 ;
  wire \fdma_wdata_reg[107]_i_1_n_1 ;
  wire \fdma_wdata_reg[107]_i_1_n_2 ;
  wire \fdma_wdata_reg[107]_i_1_n_3 ;
  wire \fdma_wdata_reg[107]_i_1_n_4 ;
  wire \fdma_wdata_reg[107]_i_1_n_5 ;
  wire \fdma_wdata_reg[107]_i_1_n_6 ;
  wire \fdma_wdata_reg[107]_i_1_n_7 ;
  wire \fdma_wdata_reg[111]_i_1_n_0 ;
  wire \fdma_wdata_reg[111]_i_1_n_1 ;
  wire \fdma_wdata_reg[111]_i_1_n_2 ;
  wire \fdma_wdata_reg[111]_i_1_n_3 ;
  wire \fdma_wdata_reg[111]_i_1_n_4 ;
  wire \fdma_wdata_reg[111]_i_1_n_5 ;
  wire \fdma_wdata_reg[111]_i_1_n_6 ;
  wire \fdma_wdata_reg[111]_i_1_n_7 ;
  wire \fdma_wdata_reg[115]_i_1_n_0 ;
  wire \fdma_wdata_reg[115]_i_1_n_1 ;
  wire \fdma_wdata_reg[115]_i_1_n_2 ;
  wire \fdma_wdata_reg[115]_i_1_n_3 ;
  wire \fdma_wdata_reg[115]_i_1_n_4 ;
  wire \fdma_wdata_reg[115]_i_1_n_5 ;
  wire \fdma_wdata_reg[115]_i_1_n_6 ;
  wire \fdma_wdata_reg[115]_i_1_n_7 ;
  wire \fdma_wdata_reg[119]_i_1_n_0 ;
  wire \fdma_wdata_reg[119]_i_1_n_1 ;
  wire \fdma_wdata_reg[119]_i_1_n_2 ;
  wire \fdma_wdata_reg[119]_i_1_n_3 ;
  wire \fdma_wdata_reg[119]_i_1_n_4 ;
  wire \fdma_wdata_reg[119]_i_1_n_5 ;
  wire \fdma_wdata_reg[119]_i_1_n_6 ;
  wire \fdma_wdata_reg[119]_i_1_n_7 ;
  wire \fdma_wdata_reg[11]_i_1_n_0 ;
  wire \fdma_wdata_reg[11]_i_1_n_1 ;
  wire \fdma_wdata_reg[11]_i_1_n_2 ;
  wire \fdma_wdata_reg[11]_i_1_n_3 ;
  wire \fdma_wdata_reg[11]_i_1_n_4 ;
  wire \fdma_wdata_reg[11]_i_1_n_5 ;
  wire \fdma_wdata_reg[11]_i_1_n_6 ;
  wire \fdma_wdata_reg[11]_i_1_n_7 ;
  wire \fdma_wdata_reg[123]_i_1_n_0 ;
  wire \fdma_wdata_reg[123]_i_1_n_1 ;
  wire \fdma_wdata_reg[123]_i_1_n_2 ;
  wire \fdma_wdata_reg[123]_i_1_n_3 ;
  wire \fdma_wdata_reg[123]_i_1_n_4 ;
  wire \fdma_wdata_reg[123]_i_1_n_5 ;
  wire \fdma_wdata_reg[123]_i_1_n_6 ;
  wire \fdma_wdata_reg[123]_i_1_n_7 ;
  wire \fdma_wdata_reg[127]_i_2_n_1 ;
  wire \fdma_wdata_reg[127]_i_2_n_2 ;
  wire \fdma_wdata_reg[127]_i_2_n_3 ;
  wire \fdma_wdata_reg[127]_i_2_n_4 ;
  wire \fdma_wdata_reg[127]_i_2_n_5 ;
  wire \fdma_wdata_reg[127]_i_2_n_6 ;
  wire \fdma_wdata_reg[127]_i_2_n_7 ;
  wire \fdma_wdata_reg[15]_i_1_n_0 ;
  wire \fdma_wdata_reg[15]_i_1_n_1 ;
  wire \fdma_wdata_reg[15]_i_1_n_2 ;
  wire \fdma_wdata_reg[15]_i_1_n_3 ;
  wire \fdma_wdata_reg[15]_i_1_n_4 ;
  wire \fdma_wdata_reg[15]_i_1_n_5 ;
  wire \fdma_wdata_reg[15]_i_1_n_6 ;
  wire \fdma_wdata_reg[15]_i_1_n_7 ;
  wire \fdma_wdata_reg[19]_i_1_n_0 ;
  wire \fdma_wdata_reg[19]_i_1_n_1 ;
  wire \fdma_wdata_reg[19]_i_1_n_2 ;
  wire \fdma_wdata_reg[19]_i_1_n_3 ;
  wire \fdma_wdata_reg[19]_i_1_n_4 ;
  wire \fdma_wdata_reg[19]_i_1_n_5 ;
  wire \fdma_wdata_reg[19]_i_1_n_6 ;
  wire \fdma_wdata_reg[19]_i_1_n_7 ;
  wire \fdma_wdata_reg[23]_i_1_n_0 ;
  wire \fdma_wdata_reg[23]_i_1_n_1 ;
  wire \fdma_wdata_reg[23]_i_1_n_2 ;
  wire \fdma_wdata_reg[23]_i_1_n_3 ;
  wire \fdma_wdata_reg[23]_i_1_n_4 ;
  wire \fdma_wdata_reg[23]_i_1_n_5 ;
  wire \fdma_wdata_reg[23]_i_1_n_6 ;
  wire \fdma_wdata_reg[23]_i_1_n_7 ;
  wire \fdma_wdata_reg[27]_i_1_n_0 ;
  wire \fdma_wdata_reg[27]_i_1_n_1 ;
  wire \fdma_wdata_reg[27]_i_1_n_2 ;
  wire \fdma_wdata_reg[27]_i_1_n_3 ;
  wire \fdma_wdata_reg[27]_i_1_n_4 ;
  wire \fdma_wdata_reg[27]_i_1_n_5 ;
  wire \fdma_wdata_reg[27]_i_1_n_6 ;
  wire \fdma_wdata_reg[27]_i_1_n_7 ;
  wire \fdma_wdata_reg[31]_i_1_n_0 ;
  wire \fdma_wdata_reg[31]_i_1_n_1 ;
  wire \fdma_wdata_reg[31]_i_1_n_2 ;
  wire \fdma_wdata_reg[31]_i_1_n_3 ;
  wire \fdma_wdata_reg[31]_i_1_n_4 ;
  wire \fdma_wdata_reg[31]_i_1_n_5 ;
  wire \fdma_wdata_reg[31]_i_1_n_6 ;
  wire \fdma_wdata_reg[31]_i_1_n_7 ;
  wire \fdma_wdata_reg[35]_i_1_n_0 ;
  wire \fdma_wdata_reg[35]_i_1_n_1 ;
  wire \fdma_wdata_reg[35]_i_1_n_2 ;
  wire \fdma_wdata_reg[35]_i_1_n_3 ;
  wire \fdma_wdata_reg[35]_i_1_n_4 ;
  wire \fdma_wdata_reg[35]_i_1_n_5 ;
  wire \fdma_wdata_reg[35]_i_1_n_6 ;
  wire \fdma_wdata_reg[35]_i_1_n_7 ;
  wire \fdma_wdata_reg[39]_i_1_n_0 ;
  wire \fdma_wdata_reg[39]_i_1_n_1 ;
  wire \fdma_wdata_reg[39]_i_1_n_2 ;
  wire \fdma_wdata_reg[39]_i_1_n_3 ;
  wire \fdma_wdata_reg[39]_i_1_n_4 ;
  wire \fdma_wdata_reg[39]_i_1_n_5 ;
  wire \fdma_wdata_reg[39]_i_1_n_6 ;
  wire \fdma_wdata_reg[39]_i_1_n_7 ;
  wire \fdma_wdata_reg[3]_i_1_n_0 ;
  wire \fdma_wdata_reg[3]_i_1_n_1 ;
  wire \fdma_wdata_reg[3]_i_1_n_2 ;
  wire \fdma_wdata_reg[3]_i_1_n_3 ;
  wire \fdma_wdata_reg[3]_i_1_n_4 ;
  wire \fdma_wdata_reg[3]_i_1_n_5 ;
  wire \fdma_wdata_reg[3]_i_1_n_6 ;
  wire \fdma_wdata_reg[3]_i_1_n_7 ;
  wire \fdma_wdata_reg[43]_i_1_n_0 ;
  wire \fdma_wdata_reg[43]_i_1_n_1 ;
  wire \fdma_wdata_reg[43]_i_1_n_2 ;
  wire \fdma_wdata_reg[43]_i_1_n_3 ;
  wire \fdma_wdata_reg[43]_i_1_n_4 ;
  wire \fdma_wdata_reg[43]_i_1_n_5 ;
  wire \fdma_wdata_reg[43]_i_1_n_6 ;
  wire \fdma_wdata_reg[43]_i_1_n_7 ;
  wire \fdma_wdata_reg[47]_i_1_n_0 ;
  wire \fdma_wdata_reg[47]_i_1_n_1 ;
  wire \fdma_wdata_reg[47]_i_1_n_2 ;
  wire \fdma_wdata_reg[47]_i_1_n_3 ;
  wire \fdma_wdata_reg[47]_i_1_n_4 ;
  wire \fdma_wdata_reg[47]_i_1_n_5 ;
  wire \fdma_wdata_reg[47]_i_1_n_6 ;
  wire \fdma_wdata_reg[47]_i_1_n_7 ;
  wire \fdma_wdata_reg[51]_i_1_n_0 ;
  wire \fdma_wdata_reg[51]_i_1_n_1 ;
  wire \fdma_wdata_reg[51]_i_1_n_2 ;
  wire \fdma_wdata_reg[51]_i_1_n_3 ;
  wire \fdma_wdata_reg[51]_i_1_n_4 ;
  wire \fdma_wdata_reg[51]_i_1_n_5 ;
  wire \fdma_wdata_reg[51]_i_1_n_6 ;
  wire \fdma_wdata_reg[51]_i_1_n_7 ;
  wire \fdma_wdata_reg[55]_i_1_n_0 ;
  wire \fdma_wdata_reg[55]_i_1_n_1 ;
  wire \fdma_wdata_reg[55]_i_1_n_2 ;
  wire \fdma_wdata_reg[55]_i_1_n_3 ;
  wire \fdma_wdata_reg[55]_i_1_n_4 ;
  wire \fdma_wdata_reg[55]_i_1_n_5 ;
  wire \fdma_wdata_reg[55]_i_1_n_6 ;
  wire \fdma_wdata_reg[55]_i_1_n_7 ;
  wire \fdma_wdata_reg[59]_i_1_n_0 ;
  wire \fdma_wdata_reg[59]_i_1_n_1 ;
  wire \fdma_wdata_reg[59]_i_1_n_2 ;
  wire \fdma_wdata_reg[59]_i_1_n_3 ;
  wire \fdma_wdata_reg[59]_i_1_n_4 ;
  wire \fdma_wdata_reg[59]_i_1_n_5 ;
  wire \fdma_wdata_reg[59]_i_1_n_6 ;
  wire \fdma_wdata_reg[59]_i_1_n_7 ;
  wire \fdma_wdata_reg[63]_i_1_n_0 ;
  wire \fdma_wdata_reg[63]_i_1_n_1 ;
  wire \fdma_wdata_reg[63]_i_1_n_2 ;
  wire \fdma_wdata_reg[63]_i_1_n_3 ;
  wire \fdma_wdata_reg[63]_i_1_n_4 ;
  wire \fdma_wdata_reg[63]_i_1_n_5 ;
  wire \fdma_wdata_reg[63]_i_1_n_6 ;
  wire \fdma_wdata_reg[63]_i_1_n_7 ;
  wire \fdma_wdata_reg[67]_i_1_n_0 ;
  wire \fdma_wdata_reg[67]_i_1_n_1 ;
  wire \fdma_wdata_reg[67]_i_1_n_2 ;
  wire \fdma_wdata_reg[67]_i_1_n_3 ;
  wire \fdma_wdata_reg[67]_i_1_n_4 ;
  wire \fdma_wdata_reg[67]_i_1_n_5 ;
  wire \fdma_wdata_reg[67]_i_1_n_6 ;
  wire \fdma_wdata_reg[67]_i_1_n_7 ;
  wire \fdma_wdata_reg[71]_i_1_n_0 ;
  wire \fdma_wdata_reg[71]_i_1_n_1 ;
  wire \fdma_wdata_reg[71]_i_1_n_2 ;
  wire \fdma_wdata_reg[71]_i_1_n_3 ;
  wire \fdma_wdata_reg[71]_i_1_n_4 ;
  wire \fdma_wdata_reg[71]_i_1_n_5 ;
  wire \fdma_wdata_reg[71]_i_1_n_6 ;
  wire \fdma_wdata_reg[71]_i_1_n_7 ;
  wire \fdma_wdata_reg[75]_i_1_n_0 ;
  wire \fdma_wdata_reg[75]_i_1_n_1 ;
  wire \fdma_wdata_reg[75]_i_1_n_2 ;
  wire \fdma_wdata_reg[75]_i_1_n_3 ;
  wire \fdma_wdata_reg[75]_i_1_n_4 ;
  wire \fdma_wdata_reg[75]_i_1_n_5 ;
  wire \fdma_wdata_reg[75]_i_1_n_6 ;
  wire \fdma_wdata_reg[75]_i_1_n_7 ;
  wire \fdma_wdata_reg[79]_i_1_n_0 ;
  wire \fdma_wdata_reg[79]_i_1_n_1 ;
  wire \fdma_wdata_reg[79]_i_1_n_2 ;
  wire \fdma_wdata_reg[79]_i_1_n_3 ;
  wire \fdma_wdata_reg[79]_i_1_n_4 ;
  wire \fdma_wdata_reg[79]_i_1_n_5 ;
  wire \fdma_wdata_reg[79]_i_1_n_6 ;
  wire \fdma_wdata_reg[79]_i_1_n_7 ;
  wire \fdma_wdata_reg[7]_i_1_n_0 ;
  wire \fdma_wdata_reg[7]_i_1_n_1 ;
  wire \fdma_wdata_reg[7]_i_1_n_2 ;
  wire \fdma_wdata_reg[7]_i_1_n_3 ;
  wire \fdma_wdata_reg[7]_i_1_n_4 ;
  wire \fdma_wdata_reg[7]_i_1_n_5 ;
  wire \fdma_wdata_reg[7]_i_1_n_6 ;
  wire \fdma_wdata_reg[7]_i_1_n_7 ;
  wire \fdma_wdata_reg[83]_i_1_n_0 ;
  wire \fdma_wdata_reg[83]_i_1_n_1 ;
  wire \fdma_wdata_reg[83]_i_1_n_2 ;
  wire \fdma_wdata_reg[83]_i_1_n_3 ;
  wire \fdma_wdata_reg[83]_i_1_n_4 ;
  wire \fdma_wdata_reg[83]_i_1_n_5 ;
  wire \fdma_wdata_reg[83]_i_1_n_6 ;
  wire \fdma_wdata_reg[83]_i_1_n_7 ;
  wire \fdma_wdata_reg[87]_i_1_n_0 ;
  wire \fdma_wdata_reg[87]_i_1_n_1 ;
  wire \fdma_wdata_reg[87]_i_1_n_2 ;
  wire \fdma_wdata_reg[87]_i_1_n_3 ;
  wire \fdma_wdata_reg[87]_i_1_n_4 ;
  wire \fdma_wdata_reg[87]_i_1_n_5 ;
  wire \fdma_wdata_reg[87]_i_1_n_6 ;
  wire \fdma_wdata_reg[87]_i_1_n_7 ;
  wire \fdma_wdata_reg[91]_i_1_n_0 ;
  wire \fdma_wdata_reg[91]_i_1_n_1 ;
  wire \fdma_wdata_reg[91]_i_1_n_2 ;
  wire \fdma_wdata_reg[91]_i_1_n_3 ;
  wire \fdma_wdata_reg[91]_i_1_n_4 ;
  wire \fdma_wdata_reg[91]_i_1_n_5 ;
  wire \fdma_wdata_reg[91]_i_1_n_6 ;
  wire \fdma_wdata_reg[91]_i_1_n_7 ;
  wire \fdma_wdata_reg[95]_i_1_n_0 ;
  wire \fdma_wdata_reg[95]_i_1_n_1 ;
  wire \fdma_wdata_reg[95]_i_1_n_2 ;
  wire \fdma_wdata_reg[95]_i_1_n_3 ;
  wire \fdma_wdata_reg[95]_i_1_n_4 ;
  wire \fdma_wdata_reg[95]_i_1_n_5 ;
  wire \fdma_wdata_reg[95]_i_1_n_6 ;
  wire \fdma_wdata_reg[95]_i_1_n_7 ;
  wire \fdma_wdata_reg[99]_i_1_n_0 ;
  wire \fdma_wdata_reg[99]_i_1_n_1 ;
  wire \fdma_wdata_reg[99]_i_1_n_2 ;
  wire \fdma_wdata_reg[99]_i_1_n_3 ;
  wire \fdma_wdata_reg[99]_i_1_n_4 ;
  wire \fdma_wdata_reg[99]_i_1_n_5 ;
  wire \fdma_wdata_reg[99]_i_1_n_6 ;
  wire \fdma_wdata_reg[99]_i_1_n_7 ;
  wire fdma_wend;
  wire fdma_wvalid;
  wire next_state__1_n_0;
  wire next_state__2_n_0;
  wire next_state__3_n_0;
  wire [3:0]next_state__4;
  wire [3:0]state;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire [3:3]\NLW_cnt_delay_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_fdma_wdata0_carry_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__7_O_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__8_O_UNCONNECTED;
  wire [3:3]NLW_fdma_wdata0_carry__9_CO_UNCONNECTED;
  wire [3:0]NLW_fdma_wdata0_carry__9_O_UNCONNECTED;
  wire [3:3]\NLW_fdma_wdata_reg[127]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \cnt_delay[0]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\cnt_delay[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_delay[0]_i_3 
       (.I0(cnt_delay_reg[0]),
        .O(\cnt_delay[0]_i_3_n_0 ));
  FDRE \cnt_delay_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[0]_i_2_n_7 ),
        .Q(cnt_delay_reg[0]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_delay_reg[0]_i_2_n_0 ,\cnt_delay_reg[0]_i_2_n_1 ,\cnt_delay_reg[0]_i_2_n_2 ,\cnt_delay_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_delay_reg[0]_i_2_n_4 ,\cnt_delay_reg[0]_i_2_n_5 ,\cnt_delay_reg[0]_i_2_n_6 ,\cnt_delay_reg[0]_i_2_n_7 }),
        .S({cnt_delay_reg[3:1],\cnt_delay[0]_i_3_n_0 }));
  FDRE \cnt_delay_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[8]_i_1_n_5 ),
        .Q(cnt_delay_reg[10]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[8]_i_1_n_4 ),
        .Q(cnt_delay_reg[11]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[12]_i_1_n_7 ),
        .Q(cnt_delay_reg[12]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[12]_i_1 
       (.CI(\cnt_delay_reg[8]_i_1_n_0 ),
        .CO({\cnt_delay_reg[12]_i_1_n_0 ,\cnt_delay_reg[12]_i_1_n_1 ,\cnt_delay_reg[12]_i_1_n_2 ,\cnt_delay_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[12]_i_1_n_4 ,\cnt_delay_reg[12]_i_1_n_5 ,\cnt_delay_reg[12]_i_1_n_6 ,\cnt_delay_reg[12]_i_1_n_7 }),
        .S(cnt_delay_reg[15:12]));
  FDRE \cnt_delay_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[12]_i_1_n_6 ),
        .Q(cnt_delay_reg[13]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[12]_i_1_n_5 ),
        .Q(cnt_delay_reg[14]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[12]_i_1_n_4 ),
        .Q(cnt_delay_reg[15]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[16]_i_1_n_7 ),
        .Q(cnt_delay_reg[16]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[16]_i_1 
       (.CI(\cnt_delay_reg[12]_i_1_n_0 ),
        .CO({\cnt_delay_reg[16]_i_1_n_0 ,\cnt_delay_reg[16]_i_1_n_1 ,\cnt_delay_reg[16]_i_1_n_2 ,\cnt_delay_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[16]_i_1_n_4 ,\cnt_delay_reg[16]_i_1_n_5 ,\cnt_delay_reg[16]_i_1_n_6 ,\cnt_delay_reg[16]_i_1_n_7 }),
        .S(cnt_delay_reg[19:16]));
  FDRE \cnt_delay_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[16]_i_1_n_6 ),
        .Q(cnt_delay_reg[17]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[16]_i_1_n_5 ),
        .Q(cnt_delay_reg[18]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[16]_i_1_n_4 ),
        .Q(cnt_delay_reg[19]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[0]_i_2_n_6 ),
        .Q(cnt_delay_reg[1]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[20]_i_1_n_7 ),
        .Q(cnt_delay_reg[20]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[20]_i_1 
       (.CI(\cnt_delay_reg[16]_i_1_n_0 ),
        .CO({\cnt_delay_reg[20]_i_1_n_0 ,\cnt_delay_reg[20]_i_1_n_1 ,\cnt_delay_reg[20]_i_1_n_2 ,\cnt_delay_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[20]_i_1_n_4 ,\cnt_delay_reg[20]_i_1_n_5 ,\cnt_delay_reg[20]_i_1_n_6 ,\cnt_delay_reg[20]_i_1_n_7 }),
        .S(cnt_delay_reg[23:20]));
  FDRE \cnt_delay_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[20]_i_1_n_6 ),
        .Q(cnt_delay_reg[21]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[20]_i_1_n_5 ),
        .Q(cnt_delay_reg[22]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[20]_i_1_n_4 ),
        .Q(cnt_delay_reg[23]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[24]_i_1_n_7 ),
        .Q(cnt_delay_reg[24]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[24]_i_1 
       (.CI(\cnt_delay_reg[20]_i_1_n_0 ),
        .CO({\cnt_delay_reg[24]_i_1_n_0 ,\cnt_delay_reg[24]_i_1_n_1 ,\cnt_delay_reg[24]_i_1_n_2 ,\cnt_delay_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[24]_i_1_n_4 ,\cnt_delay_reg[24]_i_1_n_5 ,\cnt_delay_reg[24]_i_1_n_6 ,\cnt_delay_reg[24]_i_1_n_7 }),
        .S(cnt_delay_reg[27:24]));
  FDRE \cnt_delay_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[24]_i_1_n_6 ),
        .Q(cnt_delay_reg[25]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[24]_i_1_n_5 ),
        .Q(cnt_delay_reg[26]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[24]_i_1_n_4 ),
        .Q(cnt_delay_reg[27]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[28]_i_1_n_7 ),
        .Q(cnt_delay_reg[28]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[28]_i_1 
       (.CI(\cnt_delay_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_delay_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_delay_reg[28]_i_1_n_1 ,\cnt_delay_reg[28]_i_1_n_2 ,\cnt_delay_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[28]_i_1_n_4 ,\cnt_delay_reg[28]_i_1_n_5 ,\cnt_delay_reg[28]_i_1_n_6 ,\cnt_delay_reg[28]_i_1_n_7 }),
        .S(cnt_delay_reg[31:28]));
  FDRE \cnt_delay_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[28]_i_1_n_6 ),
        .Q(cnt_delay_reg[29]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[0]_i_2_n_5 ),
        .Q(cnt_delay_reg[2]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[28]_i_1_n_5 ),
        .Q(cnt_delay_reg[30]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[28]_i_1_n_4 ),
        .Q(cnt_delay_reg[31]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[0]_i_2_n_4 ),
        .Q(cnt_delay_reg[3]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[4]_i_1_n_7 ),
        .Q(cnt_delay_reg[4]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[4]_i_1 
       (.CI(\cnt_delay_reg[0]_i_2_n_0 ),
        .CO({\cnt_delay_reg[4]_i_1_n_0 ,\cnt_delay_reg[4]_i_1_n_1 ,\cnt_delay_reg[4]_i_1_n_2 ,\cnt_delay_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[4]_i_1_n_4 ,\cnt_delay_reg[4]_i_1_n_5 ,\cnt_delay_reg[4]_i_1_n_6 ,\cnt_delay_reg[4]_i_1_n_7 }),
        .S(cnt_delay_reg[7:4]));
  FDRE \cnt_delay_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[4]_i_1_n_6 ),
        .Q(cnt_delay_reg[5]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[4]_i_1_n_5 ),
        .Q(cnt_delay_reg[6]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[4]_i_1_n_4 ),
        .Q(cnt_delay_reg[7]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  FDRE \cnt_delay_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[8]_i_1_n_7 ),
        .Q(cnt_delay_reg[8]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_delay_reg[8]_i_1 
       (.CI(\cnt_delay_reg[4]_i_1_n_0 ),
        .CO({\cnt_delay_reg[8]_i_1_n_0 ,\cnt_delay_reg[8]_i_1_n_1 ,\cnt_delay_reg[8]_i_1_n_2 ,\cnt_delay_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_delay_reg[8]_i_1_n_4 ,\cnt_delay_reg[8]_i_1_n_5 ,\cnt_delay_reg[8]_i_1_n_6 ,\cnt_delay_reg[8]_i_1_n_7 }),
        .S(cnt_delay_reg[11:8]));
  FDRE \cnt_delay_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\cnt_delay_reg[8]_i_1_n_6 ),
        .Q(cnt_delay_reg[9]),
        .R(\cnt_delay[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    fdma_rareq_i_1
       (.I0(fdma_rbusy),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .O(fdma_rareq0));
  FDRE fdma_rareq_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(fdma_rareq0),
        .Q(fdma_rareq),
        .R(fdma_wareq_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fdma_wareq_i_1
       (.I0(M_AXI_ARESETN),
        .O(fdma_wareq_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    fdma_wareq_i_2
       (.I0(fdma_wbusy),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(state[2]),
        .O(fdma_wareq0));
  FDRE fdma_wareq_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(fdma_wareq0),
        .Q(fdma_wareq),
        .R(fdma_wareq_i_1_n_0));
  CARRY4 fdma_wdata0_carry
       (.CI(1'b0),
        .CO({fdma_wdata0_carry_n_0,fdma_wdata0_carry_n_1,fdma_wdata0_carry_n_2,fdma_wdata0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry_i_1_n_0,fdma_wdata0_carry_i_2_n_0,fdma_wdata0_carry_i_3_n_0,fdma_wdata0_carry_i_4_n_0}));
  CARRY4 fdma_wdata0_carry__0
       (.CI(fdma_wdata0_carry_n_0),
        .CO({fdma_wdata0_carry__0_n_0,fdma_wdata0_carry__0_n_1,fdma_wdata0_carry__0_n_2,fdma_wdata0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__0_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__0_i_1_n_0,fdma_wdata0_carry__0_i_2_n_0,fdma_wdata0_carry__0_i_3_n_0,fdma_wdata0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__0_i_1
       (.I0(fdma_wdata[23]),
        .I1(fdma_wdata[22]),
        .I2(fdma_wdata[21]),
        .O(fdma_wdata0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__0_i_2
       (.I0(fdma_wdata[20]),
        .I1(fdma_wdata[19]),
        .I2(fdma_wdata[18]),
        .O(fdma_wdata0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__0_i_3
       (.I0(fdma_wdata[17]),
        .I1(fdma_wdata[16]),
        .I2(fdma_wdata[15]),
        .O(fdma_wdata0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__0_i_4
       (.I0(fdma_wdata[14]),
        .I1(fdma_wdata[13]),
        .I2(fdma_wdata[12]),
        .O(fdma_wdata0_carry__0_i_4_n_0));
  CARRY4 fdma_wdata0_carry__1
       (.CI(fdma_wdata0_carry__0_n_0),
        .CO({fdma_wdata0_carry__1_n_0,fdma_wdata0_carry__1_n_1,fdma_wdata0_carry__1_n_2,fdma_wdata0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__1_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__1_i_1_n_0,fdma_wdata0_carry__1_i_2_n_0,fdma_wdata0_carry__1_i_3_n_0,fdma_wdata0_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__1_i_1
       (.I0(fdma_wdata[35]),
        .I1(fdma_wdata[34]),
        .I2(fdma_wdata[33]),
        .O(fdma_wdata0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__1_i_2
       (.I0(fdma_wdata[32]),
        .I1(fdma_wdata[31]),
        .I2(fdma_wdata[30]),
        .O(fdma_wdata0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__1_i_3
       (.I0(fdma_wdata[29]),
        .I1(fdma_wdata[28]),
        .I2(fdma_wdata[27]),
        .O(fdma_wdata0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__1_i_4
       (.I0(fdma_wdata[26]),
        .I1(fdma_wdata[25]),
        .I2(fdma_wdata[24]),
        .O(fdma_wdata0_carry__1_i_4_n_0));
  CARRY4 fdma_wdata0_carry__2
       (.CI(fdma_wdata0_carry__1_n_0),
        .CO({fdma_wdata0_carry__2_n_0,fdma_wdata0_carry__2_n_1,fdma_wdata0_carry__2_n_2,fdma_wdata0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__2_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__2_i_1_n_0,fdma_wdata0_carry__2_i_2_n_0,fdma_wdata0_carry__2_i_3_n_0,fdma_wdata0_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__2_i_1
       (.I0(fdma_wdata[47]),
        .I1(fdma_wdata[46]),
        .I2(fdma_wdata[45]),
        .O(fdma_wdata0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__2_i_2
       (.I0(fdma_wdata[44]),
        .I1(fdma_wdata[43]),
        .I2(fdma_wdata[42]),
        .O(fdma_wdata0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__2_i_3
       (.I0(fdma_wdata[41]),
        .I1(fdma_wdata[40]),
        .I2(fdma_wdata[39]),
        .O(fdma_wdata0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__2_i_4
       (.I0(fdma_wdata[38]),
        .I1(fdma_wdata[37]),
        .I2(fdma_wdata[36]),
        .O(fdma_wdata0_carry__2_i_4_n_0));
  CARRY4 fdma_wdata0_carry__3
       (.CI(fdma_wdata0_carry__2_n_0),
        .CO({fdma_wdata0_carry__3_n_0,fdma_wdata0_carry__3_n_1,fdma_wdata0_carry__3_n_2,fdma_wdata0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__3_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__3_i_1_n_0,fdma_wdata0_carry__3_i_2_n_0,fdma_wdata0_carry__3_i_3_n_0,fdma_wdata0_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__3_i_1
       (.I0(fdma_wdata[59]),
        .I1(fdma_wdata[58]),
        .I2(fdma_wdata[57]),
        .O(fdma_wdata0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__3_i_2
       (.I0(fdma_wdata[56]),
        .I1(fdma_wdata[55]),
        .I2(fdma_wdata[54]),
        .O(fdma_wdata0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__3_i_3
       (.I0(fdma_wdata[53]),
        .I1(fdma_wdata[52]),
        .I2(fdma_wdata[51]),
        .O(fdma_wdata0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__3_i_4
       (.I0(fdma_wdata[50]),
        .I1(fdma_wdata[49]),
        .I2(fdma_wdata[48]),
        .O(fdma_wdata0_carry__3_i_4_n_0));
  CARRY4 fdma_wdata0_carry__4
       (.CI(fdma_wdata0_carry__3_n_0),
        .CO({fdma_wdata0_carry__4_n_0,fdma_wdata0_carry__4_n_1,fdma_wdata0_carry__4_n_2,fdma_wdata0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__4_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__4_i_1_n_0,fdma_wdata0_carry__4_i_2_n_0,fdma_wdata0_carry__4_i_3_n_0,fdma_wdata0_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__4_i_1
       (.I0(fdma_wdata[71]),
        .I1(fdma_wdata[70]),
        .I2(fdma_wdata[69]),
        .O(fdma_wdata0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__4_i_2
       (.I0(fdma_wdata[68]),
        .I1(fdma_wdata[67]),
        .I2(fdma_wdata[66]),
        .O(fdma_wdata0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__4_i_3
       (.I0(fdma_wdata[65]),
        .I1(fdma_wdata[64]),
        .I2(fdma_wdata[63]),
        .O(fdma_wdata0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__4_i_4
       (.I0(fdma_wdata[62]),
        .I1(fdma_wdata[61]),
        .I2(fdma_wdata[60]),
        .O(fdma_wdata0_carry__4_i_4_n_0));
  CARRY4 fdma_wdata0_carry__5
       (.CI(fdma_wdata0_carry__4_n_0),
        .CO({fdma_wdata0_carry__5_n_0,fdma_wdata0_carry__5_n_1,fdma_wdata0_carry__5_n_2,fdma_wdata0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__5_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__5_i_1_n_0,fdma_wdata0_carry__5_i_2_n_0,fdma_wdata0_carry__5_i_3_n_0,fdma_wdata0_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__5_i_1
       (.I0(fdma_wdata[83]),
        .I1(fdma_wdata[82]),
        .I2(fdma_wdata[81]),
        .O(fdma_wdata0_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__5_i_2
       (.I0(fdma_wdata[80]),
        .I1(fdma_wdata[79]),
        .I2(fdma_wdata[78]),
        .O(fdma_wdata0_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__5_i_3
       (.I0(fdma_wdata[77]),
        .I1(fdma_wdata[76]),
        .I2(fdma_wdata[75]),
        .O(fdma_wdata0_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__5_i_4
       (.I0(fdma_wdata[74]),
        .I1(fdma_wdata[73]),
        .I2(fdma_wdata[72]),
        .O(fdma_wdata0_carry__5_i_4_n_0));
  CARRY4 fdma_wdata0_carry__6
       (.CI(fdma_wdata0_carry__5_n_0),
        .CO({fdma_wdata0_carry__6_n_0,fdma_wdata0_carry__6_n_1,fdma_wdata0_carry__6_n_2,fdma_wdata0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__6_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__6_i_1_n_0,fdma_wdata0_carry__6_i_2_n_0,fdma_wdata0_carry__6_i_3_n_0,fdma_wdata0_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__6_i_1
       (.I0(fdma_wdata[95]),
        .I1(fdma_wdata[94]),
        .I2(fdma_wdata[93]),
        .O(fdma_wdata0_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__6_i_2
       (.I0(fdma_wdata[92]),
        .I1(fdma_wdata[91]),
        .I2(fdma_wdata[90]),
        .O(fdma_wdata0_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__6_i_3
       (.I0(fdma_wdata[89]),
        .I1(fdma_wdata[88]),
        .I2(fdma_wdata[87]),
        .O(fdma_wdata0_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__6_i_4
       (.I0(fdma_wdata[86]),
        .I1(fdma_wdata[85]),
        .I2(fdma_wdata[84]),
        .O(fdma_wdata0_carry__6_i_4_n_0));
  CARRY4 fdma_wdata0_carry__7
       (.CI(fdma_wdata0_carry__6_n_0),
        .CO({fdma_wdata0_carry__7_n_0,fdma_wdata0_carry__7_n_1,fdma_wdata0_carry__7_n_2,fdma_wdata0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__7_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__7_i_1_n_0,fdma_wdata0_carry__7_i_2_n_0,fdma_wdata0_carry__7_i_3_n_0,fdma_wdata0_carry__7_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__7_i_1
       (.I0(fdma_wdata[107]),
        .I1(fdma_wdata[106]),
        .I2(fdma_wdata[105]),
        .O(fdma_wdata0_carry__7_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__7_i_2
       (.I0(fdma_wdata[104]),
        .I1(fdma_wdata[103]),
        .I2(fdma_wdata[102]),
        .O(fdma_wdata0_carry__7_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__7_i_3
       (.I0(fdma_wdata[101]),
        .I1(fdma_wdata[100]),
        .I2(fdma_wdata[99]),
        .O(fdma_wdata0_carry__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__7_i_4
       (.I0(fdma_wdata[98]),
        .I1(fdma_wdata[97]),
        .I2(fdma_wdata[96]),
        .O(fdma_wdata0_carry__7_i_4_n_0));
  CARRY4 fdma_wdata0_carry__8
       (.CI(fdma_wdata0_carry__7_n_0),
        .CO({fdma_wdata0_carry__8_n_0,fdma_wdata0_carry__8_n_1,fdma_wdata0_carry__8_n_2,fdma_wdata0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__8_O_UNCONNECTED[3:0]),
        .S({fdma_wdata0_carry__8_i_1_n_0,fdma_wdata0_carry__8_i_2_n_0,fdma_wdata0_carry__8_i_3_n_0,fdma_wdata0_carry__8_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__8_i_1
       (.I0(fdma_wdata[119]),
        .I1(fdma_wdata[118]),
        .I2(fdma_wdata[117]),
        .O(fdma_wdata0_carry__8_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__8_i_2
       (.I0(fdma_wdata[116]),
        .I1(fdma_wdata[115]),
        .I2(fdma_wdata[114]),
        .O(fdma_wdata0_carry__8_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__8_i_3
       (.I0(fdma_wdata[113]),
        .I1(fdma_wdata[112]),
        .I2(fdma_wdata[111]),
        .O(fdma_wdata0_carry__8_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__8_i_4
       (.I0(fdma_wdata[110]),
        .I1(fdma_wdata[109]),
        .I2(fdma_wdata[108]),
        .O(fdma_wdata0_carry__8_i_4_n_0));
  CARRY4 fdma_wdata0_carry__9
       (.CI(fdma_wdata0_carry__8_n_0),
        .CO({NLW_fdma_wdata0_carry__9_CO_UNCONNECTED[3],fdma_wdata0_carry__9_n_1,fdma_wdata0_carry__9_n_2,fdma_wdata0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fdma_wdata0_carry__9_O_UNCONNECTED[3:0]),
        .S({1'b0,fdma_wdata0_carry__9_i_1_n_0,fdma_wdata0_carry__9_i_2_n_0,fdma_wdata0_carry__9_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    fdma_wdata0_carry__9_i_1
       (.I0(fdma_wdata[126]),
        .I1(fdma_wdata[127]),
        .O(fdma_wdata0_carry__9_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__9_i_2
       (.I0(fdma_wdata[125]),
        .I1(fdma_wdata[124]),
        .I2(fdma_wdata[123]),
        .O(fdma_wdata0_carry__9_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry__9_i_3
       (.I0(fdma_wdata[122]),
        .I1(fdma_wdata[121]),
        .I2(fdma_wdata[120]),
        .O(fdma_wdata0_carry__9_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    fdma_wdata0_carry_i_1
       (.I0(fdma_wdata[11]),
        .I1(fdma_wdata[10]),
        .I2(fdma_wdata[9]),
        .O(fdma_wdata0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    fdma_wdata0_carry_i_2
       (.I0(fdma_wdata[8]),
        .I1(fdma_wdata[7]),
        .I2(fdma_wdata[6]),
        .O(fdma_wdata0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    fdma_wdata0_carry_i_3
       (.I0(fdma_wdata[5]),
        .I1(fdma_wdata[4]),
        .I2(fdma_wdata[3]),
        .O(fdma_wdata0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    fdma_wdata0_carry_i_4
       (.I0(fdma_wdata[2]),
        .I1(fdma_wdata[1]),
        .I2(fdma_wdata[0]),
        .O(fdma_wdata0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    \fdma_wdata[127]_i_1 
       (.I0(fdma_wdata0_carry__9_n_1),
        .I1(fdma_wvalid),
        .I2(M_AXI_ARESETN),
        .O(\fdma_wdata[127]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fdma_wdata[3]_i_2 
       (.I0(fdma_wdata[0]),
        .O(\fdma_wdata[3]_i_2_n_0 ));
  FDRE \fdma_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[3]_i_1_n_7 ),
        .Q(fdma_wdata[0]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[100] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[103]_i_1_n_7 ),
        .Q(fdma_wdata[100]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[101] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[103]_i_1_n_6 ),
        .Q(fdma_wdata[101]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[102] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[103]_i_1_n_5 ),
        .Q(fdma_wdata[102]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[103] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[103]_i_1_n_4 ),
        .Q(fdma_wdata[103]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[103]_i_1 
       (.CI(\fdma_wdata_reg[99]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[103]_i_1_n_0 ,\fdma_wdata_reg[103]_i_1_n_1 ,\fdma_wdata_reg[103]_i_1_n_2 ,\fdma_wdata_reg[103]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[103]_i_1_n_4 ,\fdma_wdata_reg[103]_i_1_n_5 ,\fdma_wdata_reg[103]_i_1_n_6 ,\fdma_wdata_reg[103]_i_1_n_7 }),
        .S(fdma_wdata[103:100]));
  FDRE \fdma_wdata_reg[104] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[107]_i_1_n_7 ),
        .Q(fdma_wdata[104]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[105] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[107]_i_1_n_6 ),
        .Q(fdma_wdata[105]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[106] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[107]_i_1_n_5 ),
        .Q(fdma_wdata[106]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[107] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[107]_i_1_n_4 ),
        .Q(fdma_wdata[107]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[107]_i_1 
       (.CI(\fdma_wdata_reg[103]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[107]_i_1_n_0 ,\fdma_wdata_reg[107]_i_1_n_1 ,\fdma_wdata_reg[107]_i_1_n_2 ,\fdma_wdata_reg[107]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[107]_i_1_n_4 ,\fdma_wdata_reg[107]_i_1_n_5 ,\fdma_wdata_reg[107]_i_1_n_6 ,\fdma_wdata_reg[107]_i_1_n_7 }),
        .S(fdma_wdata[107:104]));
  FDRE \fdma_wdata_reg[108] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[111]_i_1_n_7 ),
        .Q(fdma_wdata[108]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[109] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[111]_i_1_n_6 ),
        .Q(fdma_wdata[109]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[11]_i_1_n_5 ),
        .Q(fdma_wdata[10]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[110] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[111]_i_1_n_5 ),
        .Q(fdma_wdata[110]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[111] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[111]_i_1_n_4 ),
        .Q(fdma_wdata[111]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[111]_i_1 
       (.CI(\fdma_wdata_reg[107]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[111]_i_1_n_0 ,\fdma_wdata_reg[111]_i_1_n_1 ,\fdma_wdata_reg[111]_i_1_n_2 ,\fdma_wdata_reg[111]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[111]_i_1_n_4 ,\fdma_wdata_reg[111]_i_1_n_5 ,\fdma_wdata_reg[111]_i_1_n_6 ,\fdma_wdata_reg[111]_i_1_n_7 }),
        .S(fdma_wdata[111:108]));
  FDRE \fdma_wdata_reg[112] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[115]_i_1_n_7 ),
        .Q(fdma_wdata[112]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[113] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[115]_i_1_n_6 ),
        .Q(fdma_wdata[113]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[114] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[115]_i_1_n_5 ),
        .Q(fdma_wdata[114]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[115] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[115]_i_1_n_4 ),
        .Q(fdma_wdata[115]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[115]_i_1 
       (.CI(\fdma_wdata_reg[111]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[115]_i_1_n_0 ,\fdma_wdata_reg[115]_i_1_n_1 ,\fdma_wdata_reg[115]_i_1_n_2 ,\fdma_wdata_reg[115]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[115]_i_1_n_4 ,\fdma_wdata_reg[115]_i_1_n_5 ,\fdma_wdata_reg[115]_i_1_n_6 ,\fdma_wdata_reg[115]_i_1_n_7 }),
        .S(fdma_wdata[115:112]));
  FDRE \fdma_wdata_reg[116] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[119]_i_1_n_7 ),
        .Q(fdma_wdata[116]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[117] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[119]_i_1_n_6 ),
        .Q(fdma_wdata[117]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[118] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[119]_i_1_n_5 ),
        .Q(fdma_wdata[118]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[119] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[119]_i_1_n_4 ),
        .Q(fdma_wdata[119]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[119]_i_1 
       (.CI(\fdma_wdata_reg[115]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[119]_i_1_n_0 ,\fdma_wdata_reg[119]_i_1_n_1 ,\fdma_wdata_reg[119]_i_1_n_2 ,\fdma_wdata_reg[119]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[119]_i_1_n_4 ,\fdma_wdata_reg[119]_i_1_n_5 ,\fdma_wdata_reg[119]_i_1_n_6 ,\fdma_wdata_reg[119]_i_1_n_7 }),
        .S(fdma_wdata[119:116]));
  FDRE \fdma_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[11]_i_1_n_4 ),
        .Q(fdma_wdata[11]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[11]_i_1 
       (.CI(\fdma_wdata_reg[7]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[11]_i_1_n_0 ,\fdma_wdata_reg[11]_i_1_n_1 ,\fdma_wdata_reg[11]_i_1_n_2 ,\fdma_wdata_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[11]_i_1_n_4 ,\fdma_wdata_reg[11]_i_1_n_5 ,\fdma_wdata_reg[11]_i_1_n_6 ,\fdma_wdata_reg[11]_i_1_n_7 }),
        .S(fdma_wdata[11:8]));
  FDRE \fdma_wdata_reg[120] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[123]_i_1_n_7 ),
        .Q(fdma_wdata[120]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[121] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[123]_i_1_n_6 ),
        .Q(fdma_wdata[121]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[122] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[123]_i_1_n_5 ),
        .Q(fdma_wdata[122]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[123] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[123]_i_1_n_4 ),
        .Q(fdma_wdata[123]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[123]_i_1 
       (.CI(\fdma_wdata_reg[119]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[123]_i_1_n_0 ,\fdma_wdata_reg[123]_i_1_n_1 ,\fdma_wdata_reg[123]_i_1_n_2 ,\fdma_wdata_reg[123]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[123]_i_1_n_4 ,\fdma_wdata_reg[123]_i_1_n_5 ,\fdma_wdata_reg[123]_i_1_n_6 ,\fdma_wdata_reg[123]_i_1_n_7 }),
        .S(fdma_wdata[123:120]));
  FDRE \fdma_wdata_reg[124] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[127]_i_2_n_7 ),
        .Q(fdma_wdata[124]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[125] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[127]_i_2_n_6 ),
        .Q(fdma_wdata[125]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[126] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[127]_i_2_n_5 ),
        .Q(fdma_wdata[126]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[127] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[127]_i_2_n_4 ),
        .Q(fdma_wdata[127]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[127]_i_2 
       (.CI(\fdma_wdata_reg[123]_i_1_n_0 ),
        .CO({\NLW_fdma_wdata_reg[127]_i_2_CO_UNCONNECTED [3],\fdma_wdata_reg[127]_i_2_n_1 ,\fdma_wdata_reg[127]_i_2_n_2 ,\fdma_wdata_reg[127]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[127]_i_2_n_4 ,\fdma_wdata_reg[127]_i_2_n_5 ,\fdma_wdata_reg[127]_i_2_n_6 ,\fdma_wdata_reg[127]_i_2_n_7 }),
        .S(fdma_wdata[127:124]));
  FDRE \fdma_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[15]_i_1_n_7 ),
        .Q(fdma_wdata[12]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[15]_i_1_n_6 ),
        .Q(fdma_wdata[13]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[15]_i_1_n_5 ),
        .Q(fdma_wdata[14]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[15]_i_1_n_4 ),
        .Q(fdma_wdata[15]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[15]_i_1 
       (.CI(\fdma_wdata_reg[11]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[15]_i_1_n_0 ,\fdma_wdata_reg[15]_i_1_n_1 ,\fdma_wdata_reg[15]_i_1_n_2 ,\fdma_wdata_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[15]_i_1_n_4 ,\fdma_wdata_reg[15]_i_1_n_5 ,\fdma_wdata_reg[15]_i_1_n_6 ,\fdma_wdata_reg[15]_i_1_n_7 }),
        .S(fdma_wdata[15:12]));
  FDRE \fdma_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[19]_i_1_n_7 ),
        .Q(fdma_wdata[16]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[19]_i_1_n_6 ),
        .Q(fdma_wdata[17]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[19]_i_1_n_5 ),
        .Q(fdma_wdata[18]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[19]_i_1_n_4 ),
        .Q(fdma_wdata[19]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[19]_i_1 
       (.CI(\fdma_wdata_reg[15]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[19]_i_1_n_0 ,\fdma_wdata_reg[19]_i_1_n_1 ,\fdma_wdata_reg[19]_i_1_n_2 ,\fdma_wdata_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[19]_i_1_n_4 ,\fdma_wdata_reg[19]_i_1_n_5 ,\fdma_wdata_reg[19]_i_1_n_6 ,\fdma_wdata_reg[19]_i_1_n_7 }),
        .S(fdma_wdata[19:16]));
  FDRE \fdma_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[3]_i_1_n_6 ),
        .Q(fdma_wdata[1]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[23]_i_1_n_7 ),
        .Q(fdma_wdata[20]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[23]_i_1_n_6 ),
        .Q(fdma_wdata[21]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[23]_i_1_n_5 ),
        .Q(fdma_wdata[22]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[23]_i_1_n_4 ),
        .Q(fdma_wdata[23]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[23]_i_1 
       (.CI(\fdma_wdata_reg[19]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[23]_i_1_n_0 ,\fdma_wdata_reg[23]_i_1_n_1 ,\fdma_wdata_reg[23]_i_1_n_2 ,\fdma_wdata_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[23]_i_1_n_4 ,\fdma_wdata_reg[23]_i_1_n_5 ,\fdma_wdata_reg[23]_i_1_n_6 ,\fdma_wdata_reg[23]_i_1_n_7 }),
        .S(fdma_wdata[23:20]));
  FDRE \fdma_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[27]_i_1_n_7 ),
        .Q(fdma_wdata[24]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[27]_i_1_n_6 ),
        .Q(fdma_wdata[25]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[27]_i_1_n_5 ),
        .Q(fdma_wdata[26]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[27]_i_1_n_4 ),
        .Q(fdma_wdata[27]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[27]_i_1 
       (.CI(\fdma_wdata_reg[23]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[27]_i_1_n_0 ,\fdma_wdata_reg[27]_i_1_n_1 ,\fdma_wdata_reg[27]_i_1_n_2 ,\fdma_wdata_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[27]_i_1_n_4 ,\fdma_wdata_reg[27]_i_1_n_5 ,\fdma_wdata_reg[27]_i_1_n_6 ,\fdma_wdata_reg[27]_i_1_n_7 }),
        .S(fdma_wdata[27:24]));
  FDRE \fdma_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[31]_i_1_n_7 ),
        .Q(fdma_wdata[28]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[31]_i_1_n_6 ),
        .Q(fdma_wdata[29]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[3]_i_1_n_5 ),
        .Q(fdma_wdata[2]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[31]_i_1_n_5 ),
        .Q(fdma_wdata[30]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[31]_i_1_n_4 ),
        .Q(fdma_wdata[31]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[31]_i_1 
       (.CI(\fdma_wdata_reg[27]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[31]_i_1_n_0 ,\fdma_wdata_reg[31]_i_1_n_1 ,\fdma_wdata_reg[31]_i_1_n_2 ,\fdma_wdata_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[31]_i_1_n_4 ,\fdma_wdata_reg[31]_i_1_n_5 ,\fdma_wdata_reg[31]_i_1_n_6 ,\fdma_wdata_reg[31]_i_1_n_7 }),
        .S(fdma_wdata[31:28]));
  FDRE \fdma_wdata_reg[32] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[35]_i_1_n_7 ),
        .Q(fdma_wdata[32]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[33] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[35]_i_1_n_6 ),
        .Q(fdma_wdata[33]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[34] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[35]_i_1_n_5 ),
        .Q(fdma_wdata[34]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[35] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[35]_i_1_n_4 ),
        .Q(fdma_wdata[35]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[35]_i_1 
       (.CI(\fdma_wdata_reg[31]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[35]_i_1_n_0 ,\fdma_wdata_reg[35]_i_1_n_1 ,\fdma_wdata_reg[35]_i_1_n_2 ,\fdma_wdata_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[35]_i_1_n_4 ,\fdma_wdata_reg[35]_i_1_n_5 ,\fdma_wdata_reg[35]_i_1_n_6 ,\fdma_wdata_reg[35]_i_1_n_7 }),
        .S(fdma_wdata[35:32]));
  FDRE \fdma_wdata_reg[36] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[39]_i_1_n_7 ),
        .Q(fdma_wdata[36]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[37] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[39]_i_1_n_6 ),
        .Q(fdma_wdata[37]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[38] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[39]_i_1_n_5 ),
        .Q(fdma_wdata[38]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[39] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[39]_i_1_n_4 ),
        .Q(fdma_wdata[39]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[39]_i_1 
       (.CI(\fdma_wdata_reg[35]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[39]_i_1_n_0 ,\fdma_wdata_reg[39]_i_1_n_1 ,\fdma_wdata_reg[39]_i_1_n_2 ,\fdma_wdata_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[39]_i_1_n_4 ,\fdma_wdata_reg[39]_i_1_n_5 ,\fdma_wdata_reg[39]_i_1_n_6 ,\fdma_wdata_reg[39]_i_1_n_7 }),
        .S(fdma_wdata[39:36]));
  FDRE \fdma_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[3]_i_1_n_4 ),
        .Q(fdma_wdata[3]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\fdma_wdata_reg[3]_i_1_n_0 ,\fdma_wdata_reg[3]_i_1_n_1 ,\fdma_wdata_reg[3]_i_1_n_2 ,\fdma_wdata_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fdma_wdata_reg[3]_i_1_n_4 ,\fdma_wdata_reg[3]_i_1_n_5 ,\fdma_wdata_reg[3]_i_1_n_6 ,\fdma_wdata_reg[3]_i_1_n_7 }),
        .S({fdma_wdata[3:1],\fdma_wdata[3]_i_2_n_0 }));
  FDRE \fdma_wdata_reg[40] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[43]_i_1_n_7 ),
        .Q(fdma_wdata[40]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[41] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[43]_i_1_n_6 ),
        .Q(fdma_wdata[41]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[42] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[43]_i_1_n_5 ),
        .Q(fdma_wdata[42]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[43] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[43]_i_1_n_4 ),
        .Q(fdma_wdata[43]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[43]_i_1 
       (.CI(\fdma_wdata_reg[39]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[43]_i_1_n_0 ,\fdma_wdata_reg[43]_i_1_n_1 ,\fdma_wdata_reg[43]_i_1_n_2 ,\fdma_wdata_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[43]_i_1_n_4 ,\fdma_wdata_reg[43]_i_1_n_5 ,\fdma_wdata_reg[43]_i_1_n_6 ,\fdma_wdata_reg[43]_i_1_n_7 }),
        .S(fdma_wdata[43:40]));
  FDRE \fdma_wdata_reg[44] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[47]_i_1_n_7 ),
        .Q(fdma_wdata[44]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[45] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[47]_i_1_n_6 ),
        .Q(fdma_wdata[45]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[46] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[47]_i_1_n_5 ),
        .Q(fdma_wdata[46]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[47] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[47]_i_1_n_4 ),
        .Q(fdma_wdata[47]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[47]_i_1 
       (.CI(\fdma_wdata_reg[43]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[47]_i_1_n_0 ,\fdma_wdata_reg[47]_i_1_n_1 ,\fdma_wdata_reg[47]_i_1_n_2 ,\fdma_wdata_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[47]_i_1_n_4 ,\fdma_wdata_reg[47]_i_1_n_5 ,\fdma_wdata_reg[47]_i_1_n_6 ,\fdma_wdata_reg[47]_i_1_n_7 }),
        .S(fdma_wdata[47:44]));
  FDRE \fdma_wdata_reg[48] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[51]_i_1_n_7 ),
        .Q(fdma_wdata[48]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[49] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[51]_i_1_n_6 ),
        .Q(fdma_wdata[49]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[7]_i_1_n_7 ),
        .Q(fdma_wdata[4]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[50] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[51]_i_1_n_5 ),
        .Q(fdma_wdata[50]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[51] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[51]_i_1_n_4 ),
        .Q(fdma_wdata[51]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[51]_i_1 
       (.CI(\fdma_wdata_reg[47]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[51]_i_1_n_0 ,\fdma_wdata_reg[51]_i_1_n_1 ,\fdma_wdata_reg[51]_i_1_n_2 ,\fdma_wdata_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[51]_i_1_n_4 ,\fdma_wdata_reg[51]_i_1_n_5 ,\fdma_wdata_reg[51]_i_1_n_6 ,\fdma_wdata_reg[51]_i_1_n_7 }),
        .S(fdma_wdata[51:48]));
  FDRE \fdma_wdata_reg[52] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[55]_i_1_n_7 ),
        .Q(fdma_wdata[52]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[53] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[55]_i_1_n_6 ),
        .Q(fdma_wdata[53]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[54] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[55]_i_1_n_5 ),
        .Q(fdma_wdata[54]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[55] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[55]_i_1_n_4 ),
        .Q(fdma_wdata[55]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[55]_i_1 
       (.CI(\fdma_wdata_reg[51]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[55]_i_1_n_0 ,\fdma_wdata_reg[55]_i_1_n_1 ,\fdma_wdata_reg[55]_i_1_n_2 ,\fdma_wdata_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[55]_i_1_n_4 ,\fdma_wdata_reg[55]_i_1_n_5 ,\fdma_wdata_reg[55]_i_1_n_6 ,\fdma_wdata_reg[55]_i_1_n_7 }),
        .S(fdma_wdata[55:52]));
  FDRE \fdma_wdata_reg[56] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[59]_i_1_n_7 ),
        .Q(fdma_wdata[56]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[57] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[59]_i_1_n_6 ),
        .Q(fdma_wdata[57]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[58] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[59]_i_1_n_5 ),
        .Q(fdma_wdata[58]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[59] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[59]_i_1_n_4 ),
        .Q(fdma_wdata[59]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[59]_i_1 
       (.CI(\fdma_wdata_reg[55]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[59]_i_1_n_0 ,\fdma_wdata_reg[59]_i_1_n_1 ,\fdma_wdata_reg[59]_i_1_n_2 ,\fdma_wdata_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[59]_i_1_n_4 ,\fdma_wdata_reg[59]_i_1_n_5 ,\fdma_wdata_reg[59]_i_1_n_6 ,\fdma_wdata_reg[59]_i_1_n_7 }),
        .S(fdma_wdata[59:56]));
  FDRE \fdma_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[7]_i_1_n_6 ),
        .Q(fdma_wdata[5]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[60] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[63]_i_1_n_7 ),
        .Q(fdma_wdata[60]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[61] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[63]_i_1_n_6 ),
        .Q(fdma_wdata[61]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[62] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[63]_i_1_n_5 ),
        .Q(fdma_wdata[62]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[63] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[63]_i_1_n_4 ),
        .Q(fdma_wdata[63]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[63]_i_1 
       (.CI(\fdma_wdata_reg[59]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[63]_i_1_n_0 ,\fdma_wdata_reg[63]_i_1_n_1 ,\fdma_wdata_reg[63]_i_1_n_2 ,\fdma_wdata_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[63]_i_1_n_4 ,\fdma_wdata_reg[63]_i_1_n_5 ,\fdma_wdata_reg[63]_i_1_n_6 ,\fdma_wdata_reg[63]_i_1_n_7 }),
        .S(fdma_wdata[63:60]));
  FDRE \fdma_wdata_reg[64] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[67]_i_1_n_7 ),
        .Q(fdma_wdata[64]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[65] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[67]_i_1_n_6 ),
        .Q(fdma_wdata[65]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[66] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[67]_i_1_n_5 ),
        .Q(fdma_wdata[66]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[67] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[67]_i_1_n_4 ),
        .Q(fdma_wdata[67]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[67]_i_1 
       (.CI(\fdma_wdata_reg[63]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[67]_i_1_n_0 ,\fdma_wdata_reg[67]_i_1_n_1 ,\fdma_wdata_reg[67]_i_1_n_2 ,\fdma_wdata_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[67]_i_1_n_4 ,\fdma_wdata_reg[67]_i_1_n_5 ,\fdma_wdata_reg[67]_i_1_n_6 ,\fdma_wdata_reg[67]_i_1_n_7 }),
        .S(fdma_wdata[67:64]));
  FDRE \fdma_wdata_reg[68] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[71]_i_1_n_7 ),
        .Q(fdma_wdata[68]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[69] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[71]_i_1_n_6 ),
        .Q(fdma_wdata[69]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[7]_i_1_n_5 ),
        .Q(fdma_wdata[6]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[70] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[71]_i_1_n_5 ),
        .Q(fdma_wdata[70]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[71] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[71]_i_1_n_4 ),
        .Q(fdma_wdata[71]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[71]_i_1 
       (.CI(\fdma_wdata_reg[67]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[71]_i_1_n_0 ,\fdma_wdata_reg[71]_i_1_n_1 ,\fdma_wdata_reg[71]_i_1_n_2 ,\fdma_wdata_reg[71]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[71]_i_1_n_4 ,\fdma_wdata_reg[71]_i_1_n_5 ,\fdma_wdata_reg[71]_i_1_n_6 ,\fdma_wdata_reg[71]_i_1_n_7 }),
        .S(fdma_wdata[71:68]));
  FDRE \fdma_wdata_reg[72] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[75]_i_1_n_7 ),
        .Q(fdma_wdata[72]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[73] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[75]_i_1_n_6 ),
        .Q(fdma_wdata[73]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[74] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[75]_i_1_n_5 ),
        .Q(fdma_wdata[74]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[75] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[75]_i_1_n_4 ),
        .Q(fdma_wdata[75]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[75]_i_1 
       (.CI(\fdma_wdata_reg[71]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[75]_i_1_n_0 ,\fdma_wdata_reg[75]_i_1_n_1 ,\fdma_wdata_reg[75]_i_1_n_2 ,\fdma_wdata_reg[75]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[75]_i_1_n_4 ,\fdma_wdata_reg[75]_i_1_n_5 ,\fdma_wdata_reg[75]_i_1_n_6 ,\fdma_wdata_reg[75]_i_1_n_7 }),
        .S(fdma_wdata[75:72]));
  FDRE \fdma_wdata_reg[76] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[79]_i_1_n_7 ),
        .Q(fdma_wdata[76]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[77] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[79]_i_1_n_6 ),
        .Q(fdma_wdata[77]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[78] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[79]_i_1_n_5 ),
        .Q(fdma_wdata[78]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[79] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[79]_i_1_n_4 ),
        .Q(fdma_wdata[79]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[79]_i_1 
       (.CI(\fdma_wdata_reg[75]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[79]_i_1_n_0 ,\fdma_wdata_reg[79]_i_1_n_1 ,\fdma_wdata_reg[79]_i_1_n_2 ,\fdma_wdata_reg[79]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[79]_i_1_n_4 ,\fdma_wdata_reg[79]_i_1_n_5 ,\fdma_wdata_reg[79]_i_1_n_6 ,\fdma_wdata_reg[79]_i_1_n_7 }),
        .S(fdma_wdata[79:76]));
  FDRE \fdma_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[7]_i_1_n_4 ),
        .Q(fdma_wdata[7]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[7]_i_1 
       (.CI(\fdma_wdata_reg[3]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[7]_i_1_n_0 ,\fdma_wdata_reg[7]_i_1_n_1 ,\fdma_wdata_reg[7]_i_1_n_2 ,\fdma_wdata_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[7]_i_1_n_4 ,\fdma_wdata_reg[7]_i_1_n_5 ,\fdma_wdata_reg[7]_i_1_n_6 ,\fdma_wdata_reg[7]_i_1_n_7 }),
        .S(fdma_wdata[7:4]));
  FDRE \fdma_wdata_reg[80] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[83]_i_1_n_7 ),
        .Q(fdma_wdata[80]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[81] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[83]_i_1_n_6 ),
        .Q(fdma_wdata[81]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[82] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[83]_i_1_n_5 ),
        .Q(fdma_wdata[82]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[83] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[83]_i_1_n_4 ),
        .Q(fdma_wdata[83]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[83]_i_1 
       (.CI(\fdma_wdata_reg[79]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[83]_i_1_n_0 ,\fdma_wdata_reg[83]_i_1_n_1 ,\fdma_wdata_reg[83]_i_1_n_2 ,\fdma_wdata_reg[83]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[83]_i_1_n_4 ,\fdma_wdata_reg[83]_i_1_n_5 ,\fdma_wdata_reg[83]_i_1_n_6 ,\fdma_wdata_reg[83]_i_1_n_7 }),
        .S(fdma_wdata[83:80]));
  FDRE \fdma_wdata_reg[84] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[87]_i_1_n_7 ),
        .Q(fdma_wdata[84]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[85] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[87]_i_1_n_6 ),
        .Q(fdma_wdata[85]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[86] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[87]_i_1_n_5 ),
        .Q(fdma_wdata[86]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[87] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[87]_i_1_n_4 ),
        .Q(fdma_wdata[87]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[87]_i_1 
       (.CI(\fdma_wdata_reg[83]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[87]_i_1_n_0 ,\fdma_wdata_reg[87]_i_1_n_1 ,\fdma_wdata_reg[87]_i_1_n_2 ,\fdma_wdata_reg[87]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[87]_i_1_n_4 ,\fdma_wdata_reg[87]_i_1_n_5 ,\fdma_wdata_reg[87]_i_1_n_6 ,\fdma_wdata_reg[87]_i_1_n_7 }),
        .S(fdma_wdata[87:84]));
  FDRE \fdma_wdata_reg[88] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[91]_i_1_n_7 ),
        .Q(fdma_wdata[88]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[89] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[91]_i_1_n_6 ),
        .Q(fdma_wdata[89]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[11]_i_1_n_7 ),
        .Q(fdma_wdata[8]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[90] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[91]_i_1_n_5 ),
        .Q(fdma_wdata[90]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[91] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[91]_i_1_n_4 ),
        .Q(fdma_wdata[91]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[91]_i_1 
       (.CI(\fdma_wdata_reg[87]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[91]_i_1_n_0 ,\fdma_wdata_reg[91]_i_1_n_1 ,\fdma_wdata_reg[91]_i_1_n_2 ,\fdma_wdata_reg[91]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[91]_i_1_n_4 ,\fdma_wdata_reg[91]_i_1_n_5 ,\fdma_wdata_reg[91]_i_1_n_6 ,\fdma_wdata_reg[91]_i_1_n_7 }),
        .S(fdma_wdata[91:88]));
  FDRE \fdma_wdata_reg[92] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[95]_i_1_n_7 ),
        .Q(fdma_wdata[92]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[93] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[95]_i_1_n_6 ),
        .Q(fdma_wdata[93]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[94] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[95]_i_1_n_5 ),
        .Q(fdma_wdata[94]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[95] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[95]_i_1_n_4 ),
        .Q(fdma_wdata[95]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[95]_i_1 
       (.CI(\fdma_wdata_reg[91]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[95]_i_1_n_0 ,\fdma_wdata_reg[95]_i_1_n_1 ,\fdma_wdata_reg[95]_i_1_n_2 ,\fdma_wdata_reg[95]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[95]_i_1_n_4 ,\fdma_wdata_reg[95]_i_1_n_5 ,\fdma_wdata_reg[95]_i_1_n_6 ,\fdma_wdata_reg[95]_i_1_n_7 }),
        .S(fdma_wdata[95:92]));
  FDRE \fdma_wdata_reg[96] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[99]_i_1_n_7 ),
        .Q(fdma_wdata[96]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[97] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[99]_i_1_n_6 ),
        .Q(fdma_wdata[97]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[98] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[99]_i_1_n_5 ),
        .Q(fdma_wdata[98]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  FDRE \fdma_wdata_reg[99] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[99]_i_1_n_4 ),
        .Q(fdma_wdata[99]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fdma_wdata_reg[99]_i_1 
       (.CI(\fdma_wdata_reg[95]_i_1_n_0 ),
        .CO({\fdma_wdata_reg[99]_i_1_n_0 ,\fdma_wdata_reg[99]_i_1_n_1 ,\fdma_wdata_reg[99]_i_1_n_2 ,\fdma_wdata_reg[99]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fdma_wdata_reg[99]_i_1_n_4 ,\fdma_wdata_reg[99]_i_1_n_5 ,\fdma_wdata_reg[99]_i_1_n_6 ,\fdma_wdata_reg[99]_i_1_n_7 }),
        .S(fdma_wdata[99:96]));
  FDRE \fdma_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\fdma_wdata_reg[11]_i_1_n_6 ),
        .Q(fdma_wdata[9]),
        .R(\fdma_wdata[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE9FEE9)) 
    next_state
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(fdma_rend),
        .O(next_state__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00020006)) 
    next_state__0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(fdma_wend),
        .O(next_state__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    next_state__1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(fdma_wend),
        .O(next_state__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    next_state__2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(fdma_rend),
        .O(next_state__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    next_state__3
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(next_state__3_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \state[2]_i_1 
       (.I0(next_state__1_n_0),
        .I1(next_state__3_n_0),
        .I2(\state[3]_i_2_n_0 ),
        .I3(\state[3]_i_3_n_0 ),
        .I4(\state[3]_i_4_n_0 ),
        .I5(\state[3]_i_5_n_0 ),
        .O(next_state__4[2]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \state[3]_i_1 
       (.I0(next_state__2_n_0),
        .I1(\state[3]_i_2_n_0 ),
        .I2(\state[3]_i_3_n_0 ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\state[3]_i_5_n_0 ),
        .I5(next_state__3_n_0),
        .O(next_state__4[3]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \state[3]_i_2 
       (.I0(cnt_delay_reg[10]),
        .I1(cnt_delay_reg[11]),
        .I2(cnt_delay_reg[8]),
        .I3(cnt_delay_reg[9]),
        .I4(\state[3]_i_6_n_0 ),
        .O(\state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \state[3]_i_3 
       (.I0(cnt_delay_reg[2]),
        .I1(cnt_delay_reg[3]),
        .I2(cnt_delay_reg[0]),
        .I3(cnt_delay_reg[1]),
        .I4(\state[3]_i_7_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_4 
       (.I0(cnt_delay_reg[26]),
        .I1(cnt_delay_reg[27]),
        .I2(cnt_delay_reg[24]),
        .I3(cnt_delay_reg[25]),
        .I4(\state[3]_i_8_n_0 ),
        .O(\state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_5 
       (.I0(cnt_delay_reg[18]),
        .I1(cnt_delay_reg[19]),
        .I2(cnt_delay_reg[16]),
        .I3(cnt_delay_reg[17]),
        .I4(\state[3]_i_9_n_0 ),
        .O(\state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_6 
       (.I0(cnt_delay_reg[13]),
        .I1(cnt_delay_reg[12]),
        .I2(cnt_delay_reg[15]),
        .I3(cnt_delay_reg[14]),
        .O(\state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[3]_i_7 
       (.I0(cnt_delay_reg[5]),
        .I1(cnt_delay_reg[4]),
        .I2(cnt_delay_reg[7]),
        .I3(cnt_delay_reg[6]),
        .O(\state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_8 
       (.I0(cnt_delay_reg[29]),
        .I1(cnt_delay_reg[28]),
        .I2(cnt_delay_reg[31]),
        .I3(cnt_delay_reg[30]),
        .O(\state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_9 
       (.I0(cnt_delay_reg[21]),
        .I1(cnt_delay_reg[20]),
        .I2(cnt_delay_reg[23]),
        .I3(cnt_delay_reg[22]),
        .O(\state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001" *) 
  FDSE \state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(next_state__4[0]),
        .Q(state[0]),
        .S(fdma_wareq_i_1_n_0));
  (* FSM_ENCODED_STATES = "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001" *) 
  FDRE \state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(next_state__4[1]),
        .Q(state[1]),
        .R(fdma_wareq_i_1_n_0));
  (* FSM_ENCODED_STATES = "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001" *) 
  FDRE \state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(next_state__4[2]),
        .Q(state[2]),
        .R(fdma_wareq_i_1_n_0));
  (* FSM_ENCODED_STATES = "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001" *) 
  FDRE \state_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(next_state__4[3]),
        .Q(state[3]),
        .R(fdma_wareq_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
