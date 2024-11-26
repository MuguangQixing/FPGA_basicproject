vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_25
vlib modelsim_lib/msim/axi_vip_v1_1_11

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 modelsim_lib/msim/axi_register_slice_v2_1_25
vmap axi_vip_v1_1_11 modelsim_lib/msim/axi_vip_v1_1_11

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/vivado/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"D:/vivado/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/vivado/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_uiFDMA_0_0/sim/design_1_uiFDMA_0_0.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_mig_7series_0_100M_0/sim/design_1_rst_mig_7series_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/62b6" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_axi4.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/vivado/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_rw_ctrl_0_0/sim/design_1_rw_ctrl_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

