// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:rw_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "rw_ctrl,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "design_1_rw_ctrl_0_0,rw_ctrl,{}" *)
(* CORE_GENERATION_INFO = "design_1_rw_ctrl_0_0,rw_ctrl,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rw_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,M_AXI_ADDR_WIDTH=32,M_AXI_DATA_WIDTH=128}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_rw_ctrl_0_0 (
  M_AXI_ACLK,
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
  fdma_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *)
input wire M_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *)
input wire M_AXI_ARESETN;
output wire [31 : 0] fdma_waddr;
output wire fdma_wareq;
output wire [15 : 0] fdma_wsize;
input wire fdma_wbusy;
output wire [127 : 0] fdma_wdata;
input wire fdma_wvalid;
output wire fdma_wready;
input wire fdma_wend;
input wire fdma_rend;
output wire [31 : 0] fdma_raddr;
output wire fdma_rareq;
output wire [15 : 0] fdma_rsize;
input wire fdma_rbusy;
input wire [127 : 0] fdma_rdata;
input wire fdma_rvalid;
output wire fdma_rready;

  rw_ctrl #(
    .M_AXI_ADDR_WIDTH(32),
    .M_AXI_DATA_WIDTH(128)
  ) inst (
    .M_AXI_ACLK(M_AXI_ACLK),
    .M_AXI_ARESETN(M_AXI_ARESETN),
    .fdma_waddr(fdma_waddr),
    .fdma_wareq(fdma_wareq),
    .fdma_wsize(fdma_wsize),
    .fdma_wbusy(fdma_wbusy),
    .fdma_wdata(fdma_wdata),
    .fdma_wvalid(fdma_wvalid),
    .fdma_wready(fdma_wready),
    .fdma_wend(fdma_wend),
    .fdma_rend(fdma_rend),
    .fdma_raddr(fdma_raddr),
    .fdma_rareq(fdma_rareq),
    .fdma_rsize(fdma_rsize),
    .fdma_rbusy(fdma_rbusy),
    .fdma_rdata(fdma_rdata),
    .fdma_rvalid(fdma_rvalid),
    .fdma_rready(fdma_rready)
  );
endmodule
