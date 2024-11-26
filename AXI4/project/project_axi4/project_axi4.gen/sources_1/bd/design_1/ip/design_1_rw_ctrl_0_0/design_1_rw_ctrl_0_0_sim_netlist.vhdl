-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Nov 19 23:01:04 2024
-- Host        : DESKTOP-DQRH7QF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               h:/FPGA_basicproject/AXI4/project/project_axi4/project_axi4.gen/sources_1/bd/design_1/ip/design_1_rw_ctrl_0_0/design_1_rw_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_1_rw_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rw_ctrl_0_0_rw_ctrl is
  port (
    fdma_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fdma_wareq : out STD_LOGIC;
    fdma_rareq : out STD_LOGIC;
    fdma_rend : in STD_LOGIC;
    fdma_wend : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    fdma_wvalid : in STD_LOGIC;
    fdma_wbusy : in STD_LOGIC;
    fdma_rbusy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rw_ctrl_0_0_rw_ctrl : entity is "rw_ctrl";
end design_1_rw_ctrl_0_0_rw_ctrl;

architecture STRUCTURE of design_1_rw_ctrl_0_0_rw_ctrl is
  signal \cnt_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay[0]_i_3_n_0\ : STD_LOGIC;
  signal cnt_delay_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_delay_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_delay_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal fdma_rareq0 : STD_LOGIC;
  signal fdma_wareq0 : STD_LOGIC;
  signal fdma_wareq_i_1_n_0 : STD_LOGIC;
  signal \^fdma_wdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \fdma_wdata0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__0_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__1_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__2_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__3_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__4_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__5_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__6_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__7_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__8_n_3\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_n_1\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_n_2\ : STD_LOGIC;
  signal \fdma_wdata0_carry__9_n_3\ : STD_LOGIC;
  signal fdma_wdata0_carry_i_1_n_0 : STD_LOGIC;
  signal fdma_wdata0_carry_i_2_n_0 : STD_LOGIC;
  signal fdma_wdata0_carry_i_3_n_0 : STD_LOGIC;
  signal fdma_wdata0_carry_i_4_n_0 : STD_LOGIC;
  signal fdma_wdata0_carry_n_0 : STD_LOGIC;
  signal fdma_wdata0_carry_n_1 : STD_LOGIC;
  signal fdma_wdata0_carry_n_2 : STD_LOGIC;
  signal fdma_wdata0_carry_n_3 : STD_LOGIC;
  signal \fdma_wdata[127]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[103]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[107]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[111]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[115]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[119]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[123]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[127]_i_2_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[63]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[67]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[71]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[75]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[79]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[83]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[87]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[91]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[95]_i_1_n_7\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_0\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_1\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_2\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_3\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_4\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_5\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_6\ : STD_LOGIC;
  signal \fdma_wdata_reg[99]_i_1_n_7\ : STD_LOGIC;
  signal \next_state__1_n_0\ : STD_LOGIC;
  signal \next_state__2_n_0\ : STD_LOGIC;
  signal \next_state__3_n_0\ : STD_LOGIC;
  signal \next_state__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_8_n_0\ : STD_LOGIC;
  signal \state[3]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_cnt_delay_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_fdma_wdata0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata0_carry__9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_fdma_wdata0_carry__9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fdma_wdata_reg[127]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_delay_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fdma_wareq_i_2 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[103]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[107]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[111]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[115]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[119]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[123]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[127]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[35]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[39]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[43]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[47]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[51]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[55]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[59]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[63]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[67]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[71]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[75]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[79]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[7]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[83]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[87]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[91]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[95]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \fdma_wdata_reg[99]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of next_state : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state__3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "WRITE:0010,WAIT:0100,READ:1000,IDLE:0001";
begin
  fdma_wdata(127 downto 0) <= \^fdma_wdata\(127 downto 0);
\cnt_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_delay_reg(0),
      O => \cnt_delay[0]_i_3_n_0\
    );
\cnt_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[0]_i_2_n_7\,
      Q => cnt_delay_reg(0),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_delay_reg[0]_i_2_n_0\,
      CO(2) => \cnt_delay_reg[0]_i_2_n_1\,
      CO(1) => \cnt_delay_reg[0]_i_2_n_2\,
      CO(0) => \cnt_delay_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_delay_reg[0]_i_2_n_4\,
      O(2) => \cnt_delay_reg[0]_i_2_n_5\,
      O(1) => \cnt_delay_reg[0]_i_2_n_6\,
      O(0) => \cnt_delay_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_delay_reg(3 downto 1),
      S(0) => \cnt_delay[0]_i_3_n_0\
    );
\cnt_delay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[8]_i_1_n_5\,
      Q => cnt_delay_reg(10),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[8]_i_1_n_4\,
      Q => cnt_delay_reg(11),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[12]_i_1_n_7\,
      Q => cnt_delay_reg(12),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[8]_i_1_n_0\,
      CO(3) => \cnt_delay_reg[12]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[12]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[12]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[12]_i_1_n_4\,
      O(2) => \cnt_delay_reg[12]_i_1_n_5\,
      O(1) => \cnt_delay_reg[12]_i_1_n_6\,
      O(0) => \cnt_delay_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(15 downto 12)
    );
\cnt_delay_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[12]_i_1_n_6\,
      Q => cnt_delay_reg(13),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[12]_i_1_n_5\,
      Q => cnt_delay_reg(14),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[12]_i_1_n_4\,
      Q => cnt_delay_reg(15),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[16]_i_1_n_7\,
      Q => cnt_delay_reg(16),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[12]_i_1_n_0\,
      CO(3) => \cnt_delay_reg[16]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[16]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[16]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[16]_i_1_n_4\,
      O(2) => \cnt_delay_reg[16]_i_1_n_5\,
      O(1) => \cnt_delay_reg[16]_i_1_n_6\,
      O(0) => \cnt_delay_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(19 downto 16)
    );
\cnt_delay_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[16]_i_1_n_6\,
      Q => cnt_delay_reg(17),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[16]_i_1_n_5\,
      Q => cnt_delay_reg(18),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[16]_i_1_n_4\,
      Q => cnt_delay_reg(19),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[0]_i_2_n_6\,
      Q => cnt_delay_reg(1),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[20]_i_1_n_7\,
      Q => cnt_delay_reg(20),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[16]_i_1_n_0\,
      CO(3) => \cnt_delay_reg[20]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[20]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[20]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[20]_i_1_n_4\,
      O(2) => \cnt_delay_reg[20]_i_1_n_5\,
      O(1) => \cnt_delay_reg[20]_i_1_n_6\,
      O(0) => \cnt_delay_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(23 downto 20)
    );
\cnt_delay_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[20]_i_1_n_6\,
      Q => cnt_delay_reg(21),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[20]_i_1_n_5\,
      Q => cnt_delay_reg(22),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[20]_i_1_n_4\,
      Q => cnt_delay_reg(23),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[24]_i_1_n_7\,
      Q => cnt_delay_reg(24),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[20]_i_1_n_0\,
      CO(3) => \cnt_delay_reg[24]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[24]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[24]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[24]_i_1_n_4\,
      O(2) => \cnt_delay_reg[24]_i_1_n_5\,
      O(1) => \cnt_delay_reg[24]_i_1_n_6\,
      O(0) => \cnt_delay_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(27 downto 24)
    );
\cnt_delay_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[24]_i_1_n_6\,
      Q => cnt_delay_reg(25),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[24]_i_1_n_5\,
      Q => cnt_delay_reg(26),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[24]_i_1_n_4\,
      Q => cnt_delay_reg(27),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[28]_i_1_n_7\,
      Q => cnt_delay_reg(28),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_delay_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_delay_reg[28]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[28]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[28]_i_1_n_4\,
      O(2) => \cnt_delay_reg[28]_i_1_n_5\,
      O(1) => \cnt_delay_reg[28]_i_1_n_6\,
      O(0) => \cnt_delay_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(31 downto 28)
    );
\cnt_delay_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[28]_i_1_n_6\,
      Q => cnt_delay_reg(29),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[0]_i_2_n_5\,
      Q => cnt_delay_reg(2),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[28]_i_1_n_5\,
      Q => cnt_delay_reg(30),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[28]_i_1_n_4\,
      Q => cnt_delay_reg(31),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[0]_i_2_n_4\,
      Q => cnt_delay_reg(3),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[4]_i_1_n_7\,
      Q => cnt_delay_reg(4),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[0]_i_2_n_0\,
      CO(3) => \cnt_delay_reg[4]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[4]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[4]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[4]_i_1_n_4\,
      O(2) => \cnt_delay_reg[4]_i_1_n_5\,
      O(1) => \cnt_delay_reg[4]_i_1_n_6\,
      O(0) => \cnt_delay_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(7 downto 4)
    );
\cnt_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[4]_i_1_n_6\,
      Q => cnt_delay_reg(5),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[4]_i_1_n_5\,
      Q => cnt_delay_reg(6),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[4]_i_1_n_4\,
      Q => cnt_delay_reg(7),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[8]_i_1_n_7\,
      Q => cnt_delay_reg(8),
      R => \cnt_delay[0]_i_1_n_0\
    );
\cnt_delay_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay_reg[4]_i_1_n_0\,
      CO(3) => \cnt_delay_reg[8]_i_1_n_0\,
      CO(2) => \cnt_delay_reg[8]_i_1_n_1\,
      CO(1) => \cnt_delay_reg[8]_i_1_n_2\,
      CO(0) => \cnt_delay_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_delay_reg[8]_i_1_n_4\,
      O(2) => \cnt_delay_reg[8]_i_1_n_5\,
      O(1) => \cnt_delay_reg[8]_i_1_n_6\,
      O(0) => \cnt_delay_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_delay_reg(11 downto 8)
    );
\cnt_delay_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \cnt_delay_reg[8]_i_1_n_6\,
      Q => cnt_delay_reg(9),
      R => \cnt_delay[0]_i_1_n_0\
    );
fdma_rareq_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => fdma_rbusy,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      O => fdma_rareq0
    );
fdma_rareq_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => fdma_rareq0,
      Q => fdma_rareq,
      R => fdma_wareq_i_1_n_0
    );
fdma_wareq_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => fdma_wareq_i_1_n_0
    );
fdma_wareq_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => fdma_wbusy,
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => state(2),
      O => fdma_wareq0
    );
fdma_wareq_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => fdma_wareq0,
      Q => fdma_wareq,
      R => fdma_wareq_i_1_n_0
    );
fdma_wdata0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fdma_wdata0_carry_n_0,
      CO(2) => fdma_wdata0_carry_n_1,
      CO(1) => fdma_wdata0_carry_n_2,
      CO(0) => fdma_wdata0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_fdma_wdata0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => fdma_wdata0_carry_i_1_n_0,
      S(2) => fdma_wdata0_carry_i_2_n_0,
      S(1) => fdma_wdata0_carry_i_3_n_0,
      S(0) => fdma_wdata0_carry_i_4_n_0
    );
\fdma_wdata0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => fdma_wdata0_carry_n_0,
      CO(3) => \fdma_wdata0_carry__0_n_0\,
      CO(2) => \fdma_wdata0_carry__0_n_1\,
      CO(1) => \fdma_wdata0_carry__0_n_2\,
      CO(0) => \fdma_wdata0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__0_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__0_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__0_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__0_i_4_n_0\
    );
\fdma_wdata0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(23),
      I1 => \^fdma_wdata\(22),
      I2 => \^fdma_wdata\(21),
      O => \fdma_wdata0_carry__0_i_1_n_0\
    );
\fdma_wdata0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(20),
      I1 => \^fdma_wdata\(19),
      I2 => \^fdma_wdata\(18),
      O => \fdma_wdata0_carry__0_i_2_n_0\
    );
\fdma_wdata0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(17),
      I1 => \^fdma_wdata\(16),
      I2 => \^fdma_wdata\(15),
      O => \fdma_wdata0_carry__0_i_3_n_0\
    );
\fdma_wdata0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(14),
      I1 => \^fdma_wdata\(13),
      I2 => \^fdma_wdata\(12),
      O => \fdma_wdata0_carry__0_i_4_n_0\
    );
\fdma_wdata0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__0_n_0\,
      CO(3) => \fdma_wdata0_carry__1_n_0\,
      CO(2) => \fdma_wdata0_carry__1_n_1\,
      CO(1) => \fdma_wdata0_carry__1_n_2\,
      CO(0) => \fdma_wdata0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__1_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__1_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__1_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__1_i_4_n_0\
    );
\fdma_wdata0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(35),
      I1 => \^fdma_wdata\(34),
      I2 => \^fdma_wdata\(33),
      O => \fdma_wdata0_carry__1_i_1_n_0\
    );
\fdma_wdata0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(32),
      I1 => \^fdma_wdata\(31),
      I2 => \^fdma_wdata\(30),
      O => \fdma_wdata0_carry__1_i_2_n_0\
    );
\fdma_wdata0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(29),
      I1 => \^fdma_wdata\(28),
      I2 => \^fdma_wdata\(27),
      O => \fdma_wdata0_carry__1_i_3_n_0\
    );
\fdma_wdata0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(26),
      I1 => \^fdma_wdata\(25),
      I2 => \^fdma_wdata\(24),
      O => \fdma_wdata0_carry__1_i_4_n_0\
    );
\fdma_wdata0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__1_n_0\,
      CO(3) => \fdma_wdata0_carry__2_n_0\,
      CO(2) => \fdma_wdata0_carry__2_n_1\,
      CO(1) => \fdma_wdata0_carry__2_n_2\,
      CO(0) => \fdma_wdata0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__2_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__2_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__2_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__2_i_4_n_0\
    );
\fdma_wdata0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(47),
      I1 => \^fdma_wdata\(46),
      I2 => \^fdma_wdata\(45),
      O => \fdma_wdata0_carry__2_i_1_n_0\
    );
\fdma_wdata0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(44),
      I1 => \^fdma_wdata\(43),
      I2 => \^fdma_wdata\(42),
      O => \fdma_wdata0_carry__2_i_2_n_0\
    );
\fdma_wdata0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(41),
      I1 => \^fdma_wdata\(40),
      I2 => \^fdma_wdata\(39),
      O => \fdma_wdata0_carry__2_i_3_n_0\
    );
\fdma_wdata0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(38),
      I1 => \^fdma_wdata\(37),
      I2 => \^fdma_wdata\(36),
      O => \fdma_wdata0_carry__2_i_4_n_0\
    );
\fdma_wdata0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__2_n_0\,
      CO(3) => \fdma_wdata0_carry__3_n_0\,
      CO(2) => \fdma_wdata0_carry__3_n_1\,
      CO(1) => \fdma_wdata0_carry__3_n_2\,
      CO(0) => \fdma_wdata0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__3_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__3_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__3_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__3_i_4_n_0\
    );
\fdma_wdata0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(59),
      I1 => \^fdma_wdata\(58),
      I2 => \^fdma_wdata\(57),
      O => \fdma_wdata0_carry__3_i_1_n_0\
    );
\fdma_wdata0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(56),
      I1 => \^fdma_wdata\(55),
      I2 => \^fdma_wdata\(54),
      O => \fdma_wdata0_carry__3_i_2_n_0\
    );
\fdma_wdata0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(53),
      I1 => \^fdma_wdata\(52),
      I2 => \^fdma_wdata\(51),
      O => \fdma_wdata0_carry__3_i_3_n_0\
    );
\fdma_wdata0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(50),
      I1 => \^fdma_wdata\(49),
      I2 => \^fdma_wdata\(48),
      O => \fdma_wdata0_carry__3_i_4_n_0\
    );
\fdma_wdata0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__3_n_0\,
      CO(3) => \fdma_wdata0_carry__4_n_0\,
      CO(2) => \fdma_wdata0_carry__4_n_1\,
      CO(1) => \fdma_wdata0_carry__4_n_2\,
      CO(0) => \fdma_wdata0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__4_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__4_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__4_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__4_i_4_n_0\
    );
\fdma_wdata0_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(71),
      I1 => \^fdma_wdata\(70),
      I2 => \^fdma_wdata\(69),
      O => \fdma_wdata0_carry__4_i_1_n_0\
    );
\fdma_wdata0_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(68),
      I1 => \^fdma_wdata\(67),
      I2 => \^fdma_wdata\(66),
      O => \fdma_wdata0_carry__4_i_2_n_0\
    );
\fdma_wdata0_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(65),
      I1 => \^fdma_wdata\(64),
      I2 => \^fdma_wdata\(63),
      O => \fdma_wdata0_carry__4_i_3_n_0\
    );
\fdma_wdata0_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(62),
      I1 => \^fdma_wdata\(61),
      I2 => \^fdma_wdata\(60),
      O => \fdma_wdata0_carry__4_i_4_n_0\
    );
\fdma_wdata0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__4_n_0\,
      CO(3) => \fdma_wdata0_carry__5_n_0\,
      CO(2) => \fdma_wdata0_carry__5_n_1\,
      CO(1) => \fdma_wdata0_carry__5_n_2\,
      CO(0) => \fdma_wdata0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__5_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__5_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__5_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__5_i_4_n_0\
    );
\fdma_wdata0_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(83),
      I1 => \^fdma_wdata\(82),
      I2 => \^fdma_wdata\(81),
      O => \fdma_wdata0_carry__5_i_1_n_0\
    );
\fdma_wdata0_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(80),
      I1 => \^fdma_wdata\(79),
      I2 => \^fdma_wdata\(78),
      O => \fdma_wdata0_carry__5_i_2_n_0\
    );
\fdma_wdata0_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(77),
      I1 => \^fdma_wdata\(76),
      I2 => \^fdma_wdata\(75),
      O => \fdma_wdata0_carry__5_i_3_n_0\
    );
\fdma_wdata0_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(74),
      I1 => \^fdma_wdata\(73),
      I2 => \^fdma_wdata\(72),
      O => \fdma_wdata0_carry__5_i_4_n_0\
    );
\fdma_wdata0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__5_n_0\,
      CO(3) => \fdma_wdata0_carry__6_n_0\,
      CO(2) => \fdma_wdata0_carry__6_n_1\,
      CO(1) => \fdma_wdata0_carry__6_n_2\,
      CO(0) => \fdma_wdata0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__6_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__6_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__6_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__6_i_4_n_0\
    );
\fdma_wdata0_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(95),
      I1 => \^fdma_wdata\(94),
      I2 => \^fdma_wdata\(93),
      O => \fdma_wdata0_carry__6_i_1_n_0\
    );
\fdma_wdata0_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(92),
      I1 => \^fdma_wdata\(91),
      I2 => \^fdma_wdata\(90),
      O => \fdma_wdata0_carry__6_i_2_n_0\
    );
\fdma_wdata0_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(89),
      I1 => \^fdma_wdata\(88),
      I2 => \^fdma_wdata\(87),
      O => \fdma_wdata0_carry__6_i_3_n_0\
    );
\fdma_wdata0_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(86),
      I1 => \^fdma_wdata\(85),
      I2 => \^fdma_wdata\(84),
      O => \fdma_wdata0_carry__6_i_4_n_0\
    );
\fdma_wdata0_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__6_n_0\,
      CO(3) => \fdma_wdata0_carry__7_n_0\,
      CO(2) => \fdma_wdata0_carry__7_n_1\,
      CO(1) => \fdma_wdata0_carry__7_n_2\,
      CO(0) => \fdma_wdata0_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__7_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__7_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__7_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__7_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__7_i_4_n_0\
    );
\fdma_wdata0_carry__7_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(107),
      I1 => \^fdma_wdata\(106),
      I2 => \^fdma_wdata\(105),
      O => \fdma_wdata0_carry__7_i_1_n_0\
    );
\fdma_wdata0_carry__7_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(104),
      I1 => \^fdma_wdata\(103),
      I2 => \^fdma_wdata\(102),
      O => \fdma_wdata0_carry__7_i_2_n_0\
    );
\fdma_wdata0_carry__7_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(101),
      I1 => \^fdma_wdata\(100),
      I2 => \^fdma_wdata\(99),
      O => \fdma_wdata0_carry__7_i_3_n_0\
    );
\fdma_wdata0_carry__7_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(98),
      I1 => \^fdma_wdata\(97),
      I2 => \^fdma_wdata\(96),
      O => \fdma_wdata0_carry__7_i_4_n_0\
    );
\fdma_wdata0_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__7_n_0\,
      CO(3) => \fdma_wdata0_carry__8_n_0\,
      CO(2) => \fdma_wdata0_carry__8_n_1\,
      CO(1) => \fdma_wdata0_carry__8_n_2\,
      CO(0) => \fdma_wdata0_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__8_O_UNCONNECTED\(3 downto 0),
      S(3) => \fdma_wdata0_carry__8_i_1_n_0\,
      S(2) => \fdma_wdata0_carry__8_i_2_n_0\,
      S(1) => \fdma_wdata0_carry__8_i_3_n_0\,
      S(0) => \fdma_wdata0_carry__8_i_4_n_0\
    );
\fdma_wdata0_carry__8_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(119),
      I1 => \^fdma_wdata\(118),
      I2 => \^fdma_wdata\(117),
      O => \fdma_wdata0_carry__8_i_1_n_0\
    );
\fdma_wdata0_carry__8_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(116),
      I1 => \^fdma_wdata\(115),
      I2 => \^fdma_wdata\(114),
      O => \fdma_wdata0_carry__8_i_2_n_0\
    );
\fdma_wdata0_carry__8_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(113),
      I1 => \^fdma_wdata\(112),
      I2 => \^fdma_wdata\(111),
      O => \fdma_wdata0_carry__8_i_3_n_0\
    );
\fdma_wdata0_carry__8_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(110),
      I1 => \^fdma_wdata\(109),
      I2 => \^fdma_wdata\(108),
      O => \fdma_wdata0_carry__8_i_4_n_0\
    );
\fdma_wdata0_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata0_carry__8_n_0\,
      CO(3) => \NLW_fdma_wdata0_carry__9_CO_UNCONNECTED\(3),
      CO(2) => \fdma_wdata0_carry__9_n_1\,
      CO(1) => \fdma_wdata0_carry__9_n_2\,
      CO(0) => \fdma_wdata0_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_fdma_wdata0_carry__9_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \fdma_wdata0_carry__9_i_1_n_0\,
      S(1) => \fdma_wdata0_carry__9_i_2_n_0\,
      S(0) => \fdma_wdata0_carry__9_i_3_n_0\
    );
\fdma_wdata0_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fdma_wdata\(126),
      I1 => \^fdma_wdata\(127),
      O => \fdma_wdata0_carry__9_i_1_n_0\
    );
\fdma_wdata0_carry__9_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(125),
      I1 => \^fdma_wdata\(124),
      I2 => \^fdma_wdata\(123),
      O => \fdma_wdata0_carry__9_i_2_n_0\
    );
\fdma_wdata0_carry__9_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(122),
      I1 => \^fdma_wdata\(121),
      I2 => \^fdma_wdata\(120),
      O => \fdma_wdata0_carry__9_i_3_n_0\
    );
fdma_wdata0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fdma_wdata\(11),
      I1 => \^fdma_wdata\(10),
      I2 => \^fdma_wdata\(9),
      O => fdma_wdata0_carry_i_1_n_0
    );
fdma_wdata0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fdma_wdata\(8),
      I1 => \^fdma_wdata\(7),
      I2 => \^fdma_wdata\(6),
      O => fdma_wdata0_carry_i_2_n_0
    );
fdma_wdata0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fdma_wdata\(5),
      I1 => \^fdma_wdata\(4),
      I2 => \^fdma_wdata\(3),
      O => fdma_wdata0_carry_i_3_n_0
    );
fdma_wdata0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fdma_wdata\(2),
      I1 => \^fdma_wdata\(1),
      I2 => \^fdma_wdata\(0),
      O => fdma_wdata0_carry_i_4_n_0
    );
\fdma_wdata[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \fdma_wdata0_carry__9_n_1\,
      I1 => fdma_wvalid,
      I2 => M_AXI_ARESETN,
      O => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fdma_wdata\(0),
      O => \fdma_wdata[3]_i_2_n_0\
    );
\fdma_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[3]_i_1_n_7\,
      Q => \^fdma_wdata\(0),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[103]_i_1_n_7\,
      Q => \^fdma_wdata\(100),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[103]_i_1_n_6\,
      Q => \^fdma_wdata\(101),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[103]_i_1_n_5\,
      Q => \^fdma_wdata\(102),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[103]_i_1_n_4\,
      Q => \^fdma_wdata\(103),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[103]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[99]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[103]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[103]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[103]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[103]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[103]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[103]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[103]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[103]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(103 downto 100)
    );
\fdma_wdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[107]_i_1_n_7\,
      Q => \^fdma_wdata\(104),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[107]_i_1_n_6\,
      Q => \^fdma_wdata\(105),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[107]_i_1_n_5\,
      Q => \^fdma_wdata\(106),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[107]_i_1_n_4\,
      Q => \^fdma_wdata\(107),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[107]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[103]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[107]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[107]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[107]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[107]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[107]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[107]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[107]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[107]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(107 downto 104)
    );
\fdma_wdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[111]_i_1_n_7\,
      Q => \^fdma_wdata\(108),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[111]_i_1_n_6\,
      Q => \^fdma_wdata\(109),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[11]_i_1_n_5\,
      Q => \^fdma_wdata\(10),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[111]_i_1_n_5\,
      Q => \^fdma_wdata\(110),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[111]_i_1_n_4\,
      Q => \^fdma_wdata\(111),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[111]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[107]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[111]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[111]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[111]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[111]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[111]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[111]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[111]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[111]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(111 downto 108)
    );
\fdma_wdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[115]_i_1_n_7\,
      Q => \^fdma_wdata\(112),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[115]_i_1_n_6\,
      Q => \^fdma_wdata\(113),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[115]_i_1_n_5\,
      Q => \^fdma_wdata\(114),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[115]_i_1_n_4\,
      Q => \^fdma_wdata\(115),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[115]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[111]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[115]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[115]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[115]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[115]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[115]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[115]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[115]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[115]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(115 downto 112)
    );
\fdma_wdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[119]_i_1_n_7\,
      Q => \^fdma_wdata\(116),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[119]_i_1_n_6\,
      Q => \^fdma_wdata\(117),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[119]_i_1_n_5\,
      Q => \^fdma_wdata\(118),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[119]_i_1_n_4\,
      Q => \^fdma_wdata\(119),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[119]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[115]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[119]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[119]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[119]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[119]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[119]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[119]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[119]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[119]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(119 downto 116)
    );
\fdma_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[11]_i_1_n_4\,
      Q => \^fdma_wdata\(11),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[7]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[11]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[11]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[11]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[11]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[11]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[11]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(11 downto 8)
    );
\fdma_wdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[123]_i_1_n_7\,
      Q => \^fdma_wdata\(120),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[123]_i_1_n_6\,
      Q => \^fdma_wdata\(121),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[123]_i_1_n_5\,
      Q => \^fdma_wdata\(122),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[123]_i_1_n_4\,
      Q => \^fdma_wdata\(123),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[123]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[119]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[123]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[123]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[123]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[123]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[123]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[123]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[123]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[123]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(123 downto 120)
    );
\fdma_wdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[127]_i_2_n_7\,
      Q => \^fdma_wdata\(124),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[127]_i_2_n_6\,
      Q => \^fdma_wdata\(125),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[127]_i_2_n_5\,
      Q => \^fdma_wdata\(126),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[127]_i_2_n_4\,
      Q => \^fdma_wdata\(127),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[127]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[123]_i_1_n_0\,
      CO(3) => \NLW_fdma_wdata_reg[127]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \fdma_wdata_reg[127]_i_2_n_1\,
      CO(1) => \fdma_wdata_reg[127]_i_2_n_2\,
      CO(0) => \fdma_wdata_reg[127]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[127]_i_2_n_4\,
      O(2) => \fdma_wdata_reg[127]_i_2_n_5\,
      O(1) => \fdma_wdata_reg[127]_i_2_n_6\,
      O(0) => \fdma_wdata_reg[127]_i_2_n_7\,
      S(3 downto 0) => \^fdma_wdata\(127 downto 124)
    );
\fdma_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[15]_i_1_n_7\,
      Q => \^fdma_wdata\(12),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[15]_i_1_n_6\,
      Q => \^fdma_wdata\(13),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[15]_i_1_n_5\,
      Q => \^fdma_wdata\(14),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[15]_i_1_n_4\,
      Q => \^fdma_wdata\(15),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[11]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[15]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[15]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[15]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[15]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[15]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[15]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(15 downto 12)
    );
\fdma_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[19]_i_1_n_7\,
      Q => \^fdma_wdata\(16),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[19]_i_1_n_6\,
      Q => \^fdma_wdata\(17),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[19]_i_1_n_5\,
      Q => \^fdma_wdata\(18),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[19]_i_1_n_4\,
      Q => \^fdma_wdata\(19),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[15]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[19]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[19]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[19]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[19]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[19]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[19]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(19 downto 16)
    );
\fdma_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[3]_i_1_n_6\,
      Q => \^fdma_wdata\(1),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[23]_i_1_n_7\,
      Q => \^fdma_wdata\(20),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[23]_i_1_n_6\,
      Q => \^fdma_wdata\(21),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[23]_i_1_n_5\,
      Q => \^fdma_wdata\(22),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[23]_i_1_n_4\,
      Q => \^fdma_wdata\(23),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[19]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[23]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[23]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[23]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[23]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[23]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[23]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(23 downto 20)
    );
\fdma_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[27]_i_1_n_7\,
      Q => \^fdma_wdata\(24),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[27]_i_1_n_6\,
      Q => \^fdma_wdata\(25),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[27]_i_1_n_5\,
      Q => \^fdma_wdata\(26),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[27]_i_1_n_4\,
      Q => \^fdma_wdata\(27),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[23]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[27]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[27]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[27]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[27]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[27]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[27]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(27 downto 24)
    );
\fdma_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[31]_i_1_n_7\,
      Q => \^fdma_wdata\(28),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[31]_i_1_n_6\,
      Q => \^fdma_wdata\(29),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[3]_i_1_n_5\,
      Q => \^fdma_wdata\(2),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[31]_i_1_n_5\,
      Q => \^fdma_wdata\(30),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[31]_i_1_n_4\,
      Q => \^fdma_wdata\(31),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[27]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[31]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[31]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[31]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[31]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[31]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[31]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[31]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(31 downto 28)
    );
\fdma_wdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[35]_i_1_n_7\,
      Q => \^fdma_wdata\(32),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[35]_i_1_n_6\,
      Q => \^fdma_wdata\(33),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[35]_i_1_n_5\,
      Q => \^fdma_wdata\(34),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[35]_i_1_n_4\,
      Q => \^fdma_wdata\(35),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[31]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[35]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[35]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[35]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[35]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[35]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[35]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[35]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(35 downto 32)
    );
\fdma_wdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[39]_i_1_n_7\,
      Q => \^fdma_wdata\(36),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[39]_i_1_n_6\,
      Q => \^fdma_wdata\(37),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[39]_i_1_n_5\,
      Q => \^fdma_wdata\(38),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[39]_i_1_n_4\,
      Q => \^fdma_wdata\(39),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[35]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[39]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[39]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[39]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[39]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[39]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[39]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[39]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(39 downto 36)
    );
\fdma_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[3]_i_1_n_4\,
      Q => \^fdma_wdata\(3),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fdma_wdata_reg[3]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[3]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[3]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \fdma_wdata_reg[3]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[3]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[3]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^fdma_wdata\(3 downto 1),
      S(0) => \fdma_wdata[3]_i_2_n_0\
    );
\fdma_wdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[43]_i_1_n_7\,
      Q => \^fdma_wdata\(40),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[43]_i_1_n_6\,
      Q => \^fdma_wdata\(41),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[43]_i_1_n_5\,
      Q => \^fdma_wdata\(42),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[43]_i_1_n_4\,
      Q => \^fdma_wdata\(43),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[39]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[43]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[43]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[43]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[43]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[43]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[43]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[43]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(43 downto 40)
    );
\fdma_wdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[47]_i_1_n_7\,
      Q => \^fdma_wdata\(44),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[47]_i_1_n_6\,
      Q => \^fdma_wdata\(45),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[47]_i_1_n_5\,
      Q => \^fdma_wdata\(46),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[47]_i_1_n_4\,
      Q => \^fdma_wdata\(47),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[43]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[47]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[47]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[47]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[47]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[47]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[47]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[47]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(47 downto 44)
    );
\fdma_wdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[51]_i_1_n_7\,
      Q => \^fdma_wdata\(48),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[51]_i_1_n_6\,
      Q => \^fdma_wdata\(49),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[7]_i_1_n_7\,
      Q => \^fdma_wdata\(4),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[51]_i_1_n_5\,
      Q => \^fdma_wdata\(50),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[51]_i_1_n_4\,
      Q => \^fdma_wdata\(51),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[47]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[51]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[51]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[51]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[51]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[51]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[51]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[51]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(51 downto 48)
    );
\fdma_wdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[55]_i_1_n_7\,
      Q => \^fdma_wdata\(52),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[55]_i_1_n_6\,
      Q => \^fdma_wdata\(53),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[55]_i_1_n_5\,
      Q => \^fdma_wdata\(54),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[55]_i_1_n_4\,
      Q => \^fdma_wdata\(55),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[51]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[55]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[55]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[55]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[55]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[55]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[55]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[55]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(55 downto 52)
    );
\fdma_wdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[59]_i_1_n_7\,
      Q => \^fdma_wdata\(56),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[59]_i_1_n_6\,
      Q => \^fdma_wdata\(57),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[59]_i_1_n_5\,
      Q => \^fdma_wdata\(58),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[59]_i_1_n_4\,
      Q => \^fdma_wdata\(59),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[55]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[59]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[59]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[59]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[59]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[59]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[59]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[59]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(59 downto 56)
    );
\fdma_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[7]_i_1_n_6\,
      Q => \^fdma_wdata\(5),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[63]_i_1_n_7\,
      Q => \^fdma_wdata\(60),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[63]_i_1_n_6\,
      Q => \^fdma_wdata\(61),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[63]_i_1_n_5\,
      Q => \^fdma_wdata\(62),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[63]_i_1_n_4\,
      Q => \^fdma_wdata\(63),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[63]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[59]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[63]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[63]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[63]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[63]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[63]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[63]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[63]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[63]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(63 downto 60)
    );
\fdma_wdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[67]_i_1_n_7\,
      Q => \^fdma_wdata\(64),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[67]_i_1_n_6\,
      Q => \^fdma_wdata\(65),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[67]_i_1_n_5\,
      Q => \^fdma_wdata\(66),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[67]_i_1_n_4\,
      Q => \^fdma_wdata\(67),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[67]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[63]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[67]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[67]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[67]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[67]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[67]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[67]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[67]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[67]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(67 downto 64)
    );
\fdma_wdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[71]_i_1_n_7\,
      Q => \^fdma_wdata\(68),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[71]_i_1_n_6\,
      Q => \^fdma_wdata\(69),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[7]_i_1_n_5\,
      Q => \^fdma_wdata\(6),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[71]_i_1_n_5\,
      Q => \^fdma_wdata\(70),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[71]_i_1_n_4\,
      Q => \^fdma_wdata\(71),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[71]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[67]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[71]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[71]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[71]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[71]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[71]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[71]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[71]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[71]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(71 downto 68)
    );
\fdma_wdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[75]_i_1_n_7\,
      Q => \^fdma_wdata\(72),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[75]_i_1_n_6\,
      Q => \^fdma_wdata\(73),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[75]_i_1_n_5\,
      Q => \^fdma_wdata\(74),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[75]_i_1_n_4\,
      Q => \^fdma_wdata\(75),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[75]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[71]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[75]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[75]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[75]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[75]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[75]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[75]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[75]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[75]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(75 downto 72)
    );
\fdma_wdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[79]_i_1_n_7\,
      Q => \^fdma_wdata\(76),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[79]_i_1_n_6\,
      Q => \^fdma_wdata\(77),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[79]_i_1_n_5\,
      Q => \^fdma_wdata\(78),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[79]_i_1_n_4\,
      Q => \^fdma_wdata\(79),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[79]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[75]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[79]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[79]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[79]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[79]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[79]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[79]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[79]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[79]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(79 downto 76)
    );
\fdma_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[7]_i_1_n_4\,
      Q => \^fdma_wdata\(7),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[3]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[7]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[7]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[7]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[7]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[7]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[7]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(7 downto 4)
    );
\fdma_wdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[83]_i_1_n_7\,
      Q => \^fdma_wdata\(80),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[83]_i_1_n_6\,
      Q => \^fdma_wdata\(81),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[83]_i_1_n_5\,
      Q => \^fdma_wdata\(82),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[83]_i_1_n_4\,
      Q => \^fdma_wdata\(83),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[83]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[79]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[83]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[83]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[83]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[83]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[83]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[83]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[83]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[83]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(83 downto 80)
    );
\fdma_wdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[87]_i_1_n_7\,
      Q => \^fdma_wdata\(84),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[87]_i_1_n_6\,
      Q => \^fdma_wdata\(85),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[87]_i_1_n_5\,
      Q => \^fdma_wdata\(86),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[87]_i_1_n_4\,
      Q => \^fdma_wdata\(87),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[87]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[83]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[87]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[87]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[87]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[87]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[87]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[87]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[87]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[87]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(87 downto 84)
    );
\fdma_wdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[91]_i_1_n_7\,
      Q => \^fdma_wdata\(88),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[91]_i_1_n_6\,
      Q => \^fdma_wdata\(89),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[11]_i_1_n_7\,
      Q => \^fdma_wdata\(8),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[91]_i_1_n_5\,
      Q => \^fdma_wdata\(90),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[91]_i_1_n_4\,
      Q => \^fdma_wdata\(91),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[91]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[87]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[91]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[91]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[91]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[91]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[91]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[91]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[91]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[91]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(91 downto 88)
    );
\fdma_wdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[95]_i_1_n_7\,
      Q => \^fdma_wdata\(92),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[95]_i_1_n_6\,
      Q => \^fdma_wdata\(93),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[95]_i_1_n_5\,
      Q => \^fdma_wdata\(94),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[95]_i_1_n_4\,
      Q => \^fdma_wdata\(95),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[95]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[91]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[95]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[95]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[95]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[95]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[95]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[95]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[95]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[95]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(95 downto 92)
    );
\fdma_wdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[99]_i_1_n_7\,
      Q => \^fdma_wdata\(96),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[99]_i_1_n_6\,
      Q => \^fdma_wdata\(97),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[99]_i_1_n_5\,
      Q => \^fdma_wdata\(98),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[99]_i_1_n_4\,
      Q => \^fdma_wdata\(99),
      R => \fdma_wdata[127]_i_1_n_0\
    );
\fdma_wdata_reg[99]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fdma_wdata_reg[95]_i_1_n_0\,
      CO(3) => \fdma_wdata_reg[99]_i_1_n_0\,
      CO(2) => \fdma_wdata_reg[99]_i_1_n_1\,
      CO(1) => \fdma_wdata_reg[99]_i_1_n_2\,
      CO(0) => \fdma_wdata_reg[99]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fdma_wdata_reg[99]_i_1_n_4\,
      O(2) => \fdma_wdata_reg[99]_i_1_n_5\,
      O(1) => \fdma_wdata_reg[99]_i_1_n_6\,
      O(0) => \fdma_wdata_reg[99]_i_1_n_7\,
      S(3 downto 0) => \^fdma_wdata\(99 downto 96)
    );
\fdma_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => fdma_wvalid,
      D => \fdma_wdata_reg[11]_i_1_n_6\,
      Q => \^fdma_wdata\(9),
      R => \fdma_wdata[127]_i_1_n_0\
    );
next_state: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE9FEE9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => fdma_rend,
      O => \next_state__4\(0)
    );
\next_state__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020006"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => fdma_wend,
      O => \next_state__4\(1)
    );
\next_state__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => fdma_wend,
      O => \next_state__1_n_0\
    );
\next_state__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => fdma_rend,
      O => \next_state__2_n_0\
    );
\next_state__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \next_state__3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \next_state__1_n_0\,
      I1 => \next_state__3_n_0\,
      I2 => \state[3]_i_2_n_0\,
      I3 => \state[3]_i_3_n_0\,
      I4 => \state[3]_i_4_n_0\,
      I5 => \state[3]_i_5_n_0\,
      O => \next_state__4\(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \next_state__2_n_0\,
      I1 => \state[3]_i_2_n_0\,
      I2 => \state[3]_i_3_n_0\,
      I3 => \state[3]_i_4_n_0\,
      I4 => \state[3]_i_5_n_0\,
      I5 => \next_state__3_n_0\,
      O => \next_state__4\(3)
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => cnt_delay_reg(10),
      I1 => cnt_delay_reg(11),
      I2 => cnt_delay_reg(8),
      I3 => cnt_delay_reg(9),
      I4 => \state[3]_i_6_n_0\,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => cnt_delay_reg(2),
      I1 => cnt_delay_reg(3),
      I2 => cnt_delay_reg(0),
      I3 => cnt_delay_reg(1),
      I4 => \state[3]_i_7_n_0\,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_delay_reg(26),
      I1 => cnt_delay_reg(27),
      I2 => cnt_delay_reg(24),
      I3 => cnt_delay_reg(25),
      I4 => \state[3]_i_8_n_0\,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt_delay_reg(18),
      I1 => cnt_delay_reg(19),
      I2 => cnt_delay_reg(16),
      I3 => cnt_delay_reg(17),
      I4 => \state[3]_i_9_n_0\,
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_delay_reg(13),
      I1 => cnt_delay_reg(12),
      I2 => cnt_delay_reg(15),
      I3 => cnt_delay_reg(14),
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => cnt_delay_reg(5),
      I1 => cnt_delay_reg(4),
      I2 => cnt_delay_reg(7),
      I3 => cnt_delay_reg(6),
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_delay_reg(29),
      I1 => cnt_delay_reg(28),
      I2 => cnt_delay_reg(31),
      I3 => cnt_delay_reg(30),
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_delay_reg(21),
      I1 => cnt_delay_reg(20),
      I2 => cnt_delay_reg(23),
      I3 => cnt_delay_reg(22),
      O => \state[3]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \next_state__4\(0),
      Q => state(0),
      S => fdma_wareq_i_1_n_0
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \next_state__4\(1),
      Q => state(1),
      R => fdma_wareq_i_1_n_0
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \next_state__4\(2),
      Q => state(2),
      R => fdma_wareq_i_1_n_0
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \next_state__4\(3),
      Q => state(3),
      R => fdma_wareq_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rw_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rw_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rw_ctrl_0_0 : entity is "design_1_rw_ctrl_0_0,rw_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rw_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_rw_ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rw_ctrl_0_0 : entity is "rw_ctrl,Vivado 2021.2";
end design_1_rw_ctrl_0_0;

architecture STRUCTURE of design_1_rw_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of M_AXI_ARESETN : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  fdma_raddr(31) <= \<const1>\;
  fdma_raddr(30) <= \<const0>\;
  fdma_raddr(29) <= \<const0>\;
  fdma_raddr(28) <= \<const0>\;
  fdma_raddr(27) <= \<const0>\;
  fdma_raddr(26) <= \<const0>\;
  fdma_raddr(25) <= \<const0>\;
  fdma_raddr(24) <= \<const0>\;
  fdma_raddr(23) <= \<const0>\;
  fdma_raddr(22) <= \<const0>\;
  fdma_raddr(21) <= \<const0>\;
  fdma_raddr(20) <= \<const0>\;
  fdma_raddr(19) <= \<const0>\;
  fdma_raddr(18) <= \<const0>\;
  fdma_raddr(17) <= \<const0>\;
  fdma_raddr(16) <= \<const0>\;
  fdma_raddr(15) <= \<const0>\;
  fdma_raddr(14) <= \<const0>\;
  fdma_raddr(13) <= \<const0>\;
  fdma_raddr(12) <= \<const0>\;
  fdma_raddr(11) <= \<const0>\;
  fdma_raddr(10) <= \<const0>\;
  fdma_raddr(9) <= \<const0>\;
  fdma_raddr(8) <= \<const0>\;
  fdma_raddr(7) <= \<const0>\;
  fdma_raddr(6) <= \<const0>\;
  fdma_raddr(5) <= \<const0>\;
  fdma_raddr(4) <= \<const0>\;
  fdma_raddr(3) <= \<const0>\;
  fdma_raddr(2) <= \<const0>\;
  fdma_raddr(1) <= \<const0>\;
  fdma_raddr(0) <= \<const0>\;
  fdma_rready <= \<const1>\;
  fdma_rsize(15) <= \<const0>\;
  fdma_rsize(14) <= \<const0>\;
  fdma_rsize(13) <= \<const0>\;
  fdma_rsize(12) <= \<const0>\;
  fdma_rsize(11) <= \<const0>\;
  fdma_rsize(10) <= \<const0>\;
  fdma_rsize(9) <= \<const0>\;
  fdma_rsize(8) <= \<const1>\;
  fdma_rsize(7) <= \<const1>\;
  fdma_rsize(6) <= \<const1>\;
  fdma_rsize(5) <= \<const1>\;
  fdma_rsize(4) <= \<const1>\;
  fdma_rsize(3) <= \<const0>\;
  fdma_rsize(2) <= \<const1>\;
  fdma_rsize(1) <= \<const0>\;
  fdma_rsize(0) <= \<const0>\;
  fdma_waddr(31) <= \<const1>\;
  fdma_waddr(30) <= \<const0>\;
  fdma_waddr(29) <= \<const0>\;
  fdma_waddr(28) <= \<const0>\;
  fdma_waddr(27) <= \<const0>\;
  fdma_waddr(26) <= \<const0>\;
  fdma_waddr(25) <= \<const0>\;
  fdma_waddr(24) <= \<const0>\;
  fdma_waddr(23) <= \<const0>\;
  fdma_waddr(22) <= \<const0>\;
  fdma_waddr(21) <= \<const0>\;
  fdma_waddr(20) <= \<const0>\;
  fdma_waddr(19) <= \<const0>\;
  fdma_waddr(18) <= \<const0>\;
  fdma_waddr(17) <= \<const0>\;
  fdma_waddr(16) <= \<const0>\;
  fdma_waddr(15) <= \<const0>\;
  fdma_waddr(14) <= \<const0>\;
  fdma_waddr(13) <= \<const0>\;
  fdma_waddr(12) <= \<const0>\;
  fdma_waddr(11) <= \<const0>\;
  fdma_waddr(10) <= \<const0>\;
  fdma_waddr(9) <= \<const0>\;
  fdma_waddr(8) <= \<const0>\;
  fdma_waddr(7) <= \<const0>\;
  fdma_waddr(6) <= \<const0>\;
  fdma_waddr(5) <= \<const0>\;
  fdma_waddr(4) <= \<const0>\;
  fdma_waddr(3) <= \<const0>\;
  fdma_waddr(2) <= \<const0>\;
  fdma_waddr(1) <= \<const0>\;
  fdma_waddr(0) <= \<const0>\;
  fdma_wready <= \<const1>\;
  fdma_wsize(15) <= \<const0>\;
  fdma_wsize(14) <= \<const0>\;
  fdma_wsize(13) <= \<const0>\;
  fdma_wsize(12) <= \<const0>\;
  fdma_wsize(11) <= \<const0>\;
  fdma_wsize(10) <= \<const0>\;
  fdma_wsize(9) <= \<const0>\;
  fdma_wsize(8) <= \<const1>\;
  fdma_wsize(7) <= \<const1>\;
  fdma_wsize(6) <= \<const1>\;
  fdma_wsize(5) <= \<const1>\;
  fdma_wsize(4) <= \<const1>\;
  fdma_wsize(3) <= \<const0>\;
  fdma_wsize(2) <= \<const1>\;
  fdma_wsize(1) <= \<const0>\;
  fdma_wsize(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_rw_ctrl_0_0_rw_ctrl
     port map (
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARESETN => M_AXI_ARESETN,
      fdma_rareq => fdma_rareq,
      fdma_rbusy => fdma_rbusy,
      fdma_rend => fdma_rend,
      fdma_wareq => fdma_wareq,
      fdma_wbusy => fdma_wbusy,
      fdma_wdata(127 downto 0) => fdma_wdata(127 downto 0),
      fdma_wend => fdma_wend,
      fdma_wvalid => fdma_wvalid
    );
end STRUCTURE;
