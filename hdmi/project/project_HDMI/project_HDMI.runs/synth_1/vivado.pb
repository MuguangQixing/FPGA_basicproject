
u
Command: %s
53*	vivadotcl2D
0synth_design -top colorbar -part xc7a35tfgg484-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tfgg484-12default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 973.543 ; gain = 233.840
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
colorbar2default:default2
 2default:default2:
$H:/FPGA_basicproject/hdmi/colorbar.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2�
�H:/FPGA_basicproject/hdmi/project/project_HDMI/project_HDMI.runs/synth_1/.Xil/Vivado-17140-DESKTOP-DQRH7QF/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2�
�H:/FPGA_basicproject/hdmi/project/project_HDMI/project_HDMI.runs/synth_1/.Xil/Vivado-17140-DESKTOP-DQRH7QF/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
VTC2default:default2
 2default:default25
H:/FPGA_basicproject/hdmi/VGA.v2default:default2
102default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter H_ACTIVE bound to: 1280 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter H_FRONT_PORCH bound to: 110 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter H_SYNC_TIME bound to: 40 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter H_BACK_PORCH bound to: 220 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter H_POLARITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter V_ACTIVE bound to: 720 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter V_FRONT_PORCH bound to: 5 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter V_SYNC_TIME bound to: 5 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter V_BACK_PORCH bound to: 20 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter V_POLARITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter H_TOTAL bound to: 1650 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter V_TOTAL bound to: 750 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VTC2default:default2
 2default:default2
22default:default2
12default:default25
H:/FPGA_basicproject/hdmi/VGA.v2default:default2
102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
top_TMDS2default:default2
 2default:default2:
$H:/FPGA_basicproject/hdmi/top_TMDS.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Encoder2default:default2
 2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
22default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter CTRLTOKEN0 bound to: 10'b1101010100 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CTRLTOKEN1 bound to: 10'b0010101011 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CTRLTOKEN2 bound to: 10'b0101010100 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter CTRLTOKEN3 bound to: 10'b1010101011 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Encoder2default:default2
 2default:default2
32default:default2
12default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PISO2default:default2
 2default:default2;
%H:/FPGA_basicproject/hdmi/HDMI_piso.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	OSERDESE22default:default2
 2default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
502882default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b0 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter IS_CLKDIV_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter IS_CLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D3_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D4_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D5_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D6_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D7_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D8_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T1_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T2_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T3_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T4_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter SERDES_MODE bound to: MASTER - type: string 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	OSERDESE22default:default2
 2default:default2
42default:default2
12default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
502882default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
502882default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: DDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b0 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter IS_CLKDIV_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter IS_CLK_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D3_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D4_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D5_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D6_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D7_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D8_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T1_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T2_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T3_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_T4_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SERDES_MODE bound to: SLAVE - type: string 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2
42default:default2
12default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
502882default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PISO2default:default2
 2default:default2
52default:default2
12default:default2;
%H:/FPGA_basicproject/hdmi/HDMI_piso.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OBUFDS2default:default2
 2default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
462252default:default8@Z8-6157h px� 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: TMDS_33 - type: string 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SLEW bound to: SLOW - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUFDS2default:default2
 2default:default2
62default:default2
12default:default2K
5H:/vivado/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
462252default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top_TMDS2default:default2
 2default:default2
72default:default2
12default:default2:
$H:/FPGA_basicproject/hdmi/top_TMDS.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
colorbar2default:default2
 2default:default2
82default:default2
12default:default2:
$H:/FPGA_basicproject/hdmi/colorbar.v2default:default2
12default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1047.145 ; gain = 307.441
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1047.145 ; gain = 307.441
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1047.145 ; gain = 307.441
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1047.1452default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
42default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
zh:/FPGA_basicproject/hdmi/project/project_HDMI/project_HDMI.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk_inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
zh:/FPGA_basicproject/hdmi/project/project_HDMI/project_HDMI.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk_inst	2default:default8Z20-847h px� 
x
Parsing XDC File [%s]
179*designutils27
!H:/FPGA_basicproject/hdmi/pin.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils27
!H:/FPGA_basicproject/hdmi/pin.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project25
!H:/FPGA_basicproject/hdmi/pin.xdc2default:default2.
.Xil/colorbar_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1149.6132default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1149.6132default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tfgg484-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
962default:default8@Z8-5818h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      5 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      4 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 42    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 21    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     10 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 21    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
8
%s
*synth2 
Module VTC 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
<
%s
*synth2$
Module Encoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      5 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 14    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
merging register '%s' into '%s'3619*oasys23
tmds_inst/encode_inst0/c1_q_reg2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
762default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys25
!tmds_inst/encode_inst0/c1_reg_reg2default:default25
!tmds_inst/encode_inst0/c0_reg_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
772default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys23
tmds_inst/encode_inst1/de_q_reg2default:default23
tmds_inst/encode_inst0/de_q_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
722default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys25
!tmds_inst/encode_inst1/de_reg_reg2default:default25
!tmds_inst/encode_inst0/de_reg_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
732default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys23
tmds_inst/encode_inst1/c0_q_reg2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
742default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys25
!tmds_inst/encode_inst1/c0_reg_reg2default:default25
!tmds_inst/encode_inst0/c0_reg_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
752default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys23
tmds_inst/encode_inst1/c1_q_reg2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
762default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys25
!tmds_inst/encode_inst1/c1_reg_reg2default:default25
!tmds_inst/encode_inst0/c0_reg_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
772default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys29
%tmds_inst/encode_inst2/din_q_reg[7:0]2default:default29
%tmds_inst/encode_inst1/din_q_reg[7:0]2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
172default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys23
tmds_inst/encode_inst2/de_q_reg2default:default23
tmds_inst/encode_inst0/de_q_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
722default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys25
!tmds_inst/encode_inst2/de_reg_reg2default:default25
!tmds_inst/encode_inst0/de_reg_reg2default:default28
"H:/FPGA_basicproject/hdmi/encode.v2default:default2
732default:default8@Z8-4471h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst2/n1d_reg[0]2default:default2
FD2default:default25
!tmds_inst/encode_inst2/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst2/n1d_reg[3]2default:default2
FD2default:default25
!tmds_inst/encode_inst2/n1d_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst2/n1d_reg[1]2default:default2
FD2default:default25
!tmds_inst/encode_inst2/n1d_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst2/n1d_reg[2]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[7]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[6]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[5]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[4]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[3]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[2]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst1/n1d_reg[0]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst1/n1d_reg[3]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst1/n1d_reg[1]2default:default2
FD2default:default25
!tmds_inst/encode_inst1/n1d_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst1/n1d_reg[2]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/din_q_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/din_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/din_q_reg[0]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[7]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[6]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[5]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[4]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[3]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[2]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/n1d_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst0/n1d_reg[0]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst0/n1d_reg[3]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/din_q_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst0/n1d_reg[1]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst0/n1d_reg[2]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/din_q_reg[0]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%\tmds_inst/encode_inst0/din_q_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\tmds_inst/encode_inst0/c0_q_reg 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[0]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n0q_m_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n1q_m_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[0]2default:default2
FD2default:default25
!tmds_inst/encode_inst0/c0_reg_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n0q_m_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n1q_m_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/din_q_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n0q_m_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/n1q_m_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!tmds_inst/encode_inst0/c0_reg_reg2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[7]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[6]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[5]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[4]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[3]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[2]2default:default2
FD2default:default29
%tmds_inst/encode_inst2/q_m_reg_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst2/q_m_reg_reg[8]2default:default2
FDR2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n0q_m_reg[3]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n1q_m_reg[3]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n1q_m_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n0q_m_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n1q_m_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n0q_m_reg[2]2default:default2
FD2default:default27
#tmds_inst/encode_inst2/n1q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst2/n1q_m_reg[2]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[7]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[6]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[5]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[4]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[3]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[2]2default:default2
FD2default:default29
%tmds_inst/encode_inst1/q_m_reg_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst1/q_m_reg_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2;
'\tmds_inst/encode_inst1/q_m_reg_reg[8] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n0q_m_reg[3]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n1q_m_reg[3]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n1q_m_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n0q_m_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n1q_m_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n0q_m_reg[2]2default:default2
FD2default:default27
#tmds_inst/encode_inst1/n1q_m_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst1/n1q_m_reg[2]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[7]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[6]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[5]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[4]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[3]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[2]2default:default2
FD2default:default29
%tmds_inst/encode_inst0/q_m_reg_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%tmds_inst/encode_inst0/q_m_reg_reg[1]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/n1q_m_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/din_q_reg[0]2default:default2
FD2default:default27
#tmds_inst/encode_inst0/n1q_m_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n0q_m_reg[3]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default29
%\tmds_inst/encode_inst0/n1q_m_reg[3] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n1q_m_reg[0]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n0q_m_reg[1]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n1q_m_reg[1]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n0q_m_reg[2]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#tmds_inst/encode_inst0/n1q_m_reg[2]2default:default2
FD2default:default23
tmds_inst/encode_inst0/c0_q_reg2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\tmds_inst/encode_inst0/c0_q_reg 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[7]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[6]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[5]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[4]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[3]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst2/dout_reg[1]2default:default2
FDC2default:default26
"tmds_inst/encode_inst2/dout_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[7]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[6]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[5]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[4]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[3]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[1]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[7]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[6]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[5]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[4]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[3]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst0/dout_reg[1]2default:default2
FDC2default:default26
"tmds_inst/encode_inst0/dout_reg[0]2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"tmds_inst/encode_inst1/dout_reg[9]2default:default2
FDC2default:default26
"tmds_inst/encode_inst1/dout_reg[2]2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1149.613 ; gain = 409.910
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |clk_wiz_0   |     1|
2default:defaulth px� 
I
%s*synth21
|2     |CARRY4      |    16|
2default:defaulth px� 
I
%s*synth21
|3     |LUT1        |     4|
2default:defaulth px� 
I
%s*synth21
|4     |LUT2        |     7|
2default:defaulth px� 
I
%s*synth21
|5     |LUT3        |    38|
2default:defaulth px� 
I
%s*synth21
|6     |LUT4        |    15|
2default:defaulth px� 
I
%s*synth21
|7     |LUT5        |    12|
2default:defaulth px� 
I
%s*synth21
|8     |LUT6        |    41|
2default:defaulth px� 
I
%s*synth21
|9     |OSERDESE2   |     4|
2default:defaulth px� 
I
%s*synth21
|10    |OSERDESE2_1 |     4|
2default:defaulth px� 
I
%s*synth21
|11    |FDCE        |    23|
2default:defaulth px� 
I
%s*synth21
|12    |FDRE        |    71|
2default:defaulth px� 
I
%s*synth21
|13    |FDSE        |     2|
2default:defaulth px� 
I
%s*synth21
|14    |IBUF        |     1|
2default:defaulth px� 
I
%s*synth21
|15    |OBUFDS      |     4|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
Y
%s
*synth2A
-|      |Instance         |Module    |Cells |
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
Y
%s
*synth2A
-|1     |top              |          |   245|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|2     |  tmds_inst      |top_TMDS  |    63|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|3     |    encode_inst0 |Encoder   |    19|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|4     |    encode_inst1 |Encoder_0 |    13|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|5     |    encode_inst2 |Encoder_1 |    19|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|6     |    piso_inst0   |PISO      |     2|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|7     |    piso_inst1   |PISO_2    |     2|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|8     |    piso_inst2   |PISO_3    |     2|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|9     |    piso_instclk |PISO_4    |     2|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|10    |  vtc_inst       |VTC       |   178|
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:12 ; elapsed = 00:00:17 . Memory (MB): peak = 1151.398 ; gain = 309.227
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1151.398 ; gain = 411.695
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1151.3982default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
202default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1159.4962default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1452default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:222default:default2
00:00:232default:default2
1159.4962default:default2
688.9452default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1159.4962default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
UH:/FPGA_basicproject/hdmi/project/project_HDMI/project_HDMI.runs/synth_1/colorbar.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file colorbar_utilization_synth.rpt -pb colorbar_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Nov  1 18:23:36 20242default:defaultZ17-206h px� 


End Record