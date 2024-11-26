-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Nov 19 23:01:04 2024
-- Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/FPGA_basicproject/AXI4/project/project_axi4/project_axi4.gen/sources_1/bd/design_1/ip/design_1_rw_ctrl_0_0/design_1_rw_ctrl_0_0_stub.vhdl
-- Design      : design_1_rw_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_rw_ctrl_0_0 is
  Port ( 
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    fdma_waddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fdma_wareq : out STD_LOGIC;
    fdma_wsize : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fdma_wbusy : in STD_LOGIC;
    fdma_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fdma_wvalid : in STD_LOGIC;
    fdma_wready : out STD_LOGIC;
    fdma_wend : in STD_LOGIC;
    fdma_rend : in STD_LOGIC;
    fdma_raddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fdma_rareq : out STD_LOGIC;
    fdma_rsize : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fdma_rbusy : in STD_LOGIC;
    fdma_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fdma_rvalid : in STD_LOGIC;
    fdma_rready : out STD_LOGIC
  );

end design_1_rw_ctrl_0_0;

architecture stub of design_1_rw_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_AXI_ACLK,M_AXI_ARESETN,fdma_waddr[31:0],fdma_wareq,fdma_wsize[15:0],fdma_wbusy,fdma_wdata[127:0],fdma_wvalid,fdma_wready,fdma_wend,fdma_rend,fdma_raddr[31:0],fdma_rareq,fdma_rsize[15:0],fdma_rbusy,fdma_rdata[127:0],fdma_rvalid,fdma_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rw_ctrl,Vivado 2021.2";
begin
end;
