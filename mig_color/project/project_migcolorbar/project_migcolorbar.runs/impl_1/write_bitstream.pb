
g
Command: %s
53*	vivadotcl26
"write_bitstream -force top_mig.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�OSERDES_DataRateTqTriWidth: Unexpected programming for %s with TRISTATE_WIDTH. DATA_RATE_TQ set DDR expects TRISTATE_WIDTH to be set 4%s*DRC2~
 "h
(top_TMDS_inst/piso_inst0/OSERDESE2_inst1	(top_TMDS_inst/piso_inst0/OSERDESE2_inst12default:default2default:default2N
 6DRC|Netlist|Instance|Invalid attribute value|OSERDESE22default:default8ZAVAL-70h px� 
�
�OSERDES_DataRateTqTriWidth: Unexpected programming for %s with TRISTATE_WIDTH. DATA_RATE_TQ set DDR expects TRISTATE_WIDTH to be set 4%s*DRC2~
 "h
(top_TMDS_inst/piso_inst1/OSERDESE2_inst1	(top_TMDS_inst/piso_inst1/OSERDESE2_inst12default:default2default:default2N
 6DRC|Netlist|Instance|Invalid attribute value|OSERDESE22default:default8ZAVAL-70h px� 
�
�OSERDES_DataRateTqTriWidth: Unexpected programming for %s with TRISTATE_WIDTH. DATA_RATE_TQ set DDR expects TRISTATE_WIDTH to be set 4%s*DRC2~
 "h
(top_TMDS_inst/piso_inst2/OSERDESE2_inst1	(top_TMDS_inst/piso_inst2/OSERDESE2_inst12default:default2default:default2N
 6DRC|Netlist|Instance|Invalid attribute value|OSERDESE22default:default8ZAVAL-70h px� 
�
�OSERDES_DataRateTqTriWidth: Unexpected programming for %s with TRISTATE_WIDTH. DATA_RATE_TQ set DDR expects TRISTATE_WIDTH to be set 4%s*DRC2�
 "l
*top_TMDS_inst/piso_instclk/OSERDESE2_inst1	*top_TMDS_inst/piso_instclk/OSERDESE2_inst12default:default2default:default2N
 6DRC|Netlist|Instance|Invalid attribute value|OSERDESE22default:default8ZAVAL-70h px� 
�
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2�
 "�
�u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[0].gen_dqs_diff.u_iobuf_dqs/IBUFDS_0	�u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[0].gen_dqs_diff.u_iobuf_dqs/IBUFDS_02default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px� 
�
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2�
 "�
�u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[1].gen_dqs_diff.u_iobuf_dqs/IBUFDS_0	�u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/gen_dqs_iobuf_HR.gen_dqs_iobuf[1].gen_dqs_diff.u_iobuf_dqs/IBUFDS_02default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
�Clock output buffering: PLLE2_ADV connectivity violation. The signal %s on the %s pin of %s does not drive the same kind of BUFFER load as the other CLKOUT pins. Routing from the different buffer types will not be phase aligned.%s*DRC2�
 "�
Fu_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/pll_clk3_outFu_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/pll_clk3_out2default:default2default:default2�
 "�
Iu_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i/CLKOUT3Iu_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i/CLKOUT32default:default2default:default2�
 "�
Au_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i	Au_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/plle2_i2default:default2default:default2C
 +DRC|Netlist|Instance|Required Pin|PLLE2_ADV2default:default8Z	REQP-1709h px� 
�
`No routable loads: 12 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�
 "�
�rd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENA_dly_D�rd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENA_dly_D2default:default"�
urd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_iurd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
trd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_itrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i2default:default"�
krd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_ikrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gras.rsts/ram_empty_i2default:default"�
jrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_ijrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i2default:default"�
Srd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2:0]Nrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg2default:default"�
rrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_validrrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid2default:default"�
Srd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg[2:0]Nrd_color_inst/FIFO_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 9 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
^
Writing bitstream %s...
11*	bitstream2!
./top_mig.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2962default:default2
112default:default2
12default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:152default:default2
00:00:142default:default2
2440.2772default:default2
446.9612default:defaultZ17-268h px� 


End Record