
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental H:/FPGA_basicproject/ARP/project/project_arp/project_arp.srcs/utils_1/imports/synth_1/top_arp.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2u
aH:/FPGA_basicproject/ARP/project/project_arp/project_arp.srcs/utils_1/imports/synth_1/top_arp.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
t
Command: %s
53*	vivadotcl2C
/synth_design -top top_arp -part xc7a35tfgg484-12default:defaultZ4-113h px� 
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
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
271522default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1261.410 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top_arp2default:default2
 2default:default28
"H:/FPGA_basicproject/ARP/top_arp.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
arp_ctrl2default:default2
 2default:default29
#H:/FPGA_basicproject/ARP/arp_ctrl.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
arp_ctrl2default:default2
 2default:default2
12default:default2
12default:default29
#H:/FPGA_basicproject/ARP/arp_ctrl.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
arp2default:default2
 2default:default24
H:/FPGA_basicproject/ARP/arp.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
arp_tx2default:default2
 2default:default27
!H:/FPGA_basicproject/ARP/arp_tx.v2default:default2
12default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys27
!H:/FPGA_basicproject/ARP/arp_tx.v2default:default2
1862default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
arp_tx2default:default2
 2default:default2
22default:default2
12default:default27
!H:/FPGA_basicproject/ARP/arp_tx.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
arp_rx2default:default2
 2default:default27
!H:/FPGA_basicproject/ARP/arp_rx.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
arp_rx2default:default2
 2default:default2
32default:default2
12default:default27
!H:/FPGA_basicproject/ARP/arp_rx.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
crc2default:default2
 2default:default26
 H:/FPGA_basicproject/ARP/crc32.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
crc2default:default2
 2default:default2
42default:default2
12default:default26
 H:/FPGA_basicproject/ARP/crc32.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
arp2default:default2
 2default:default2
52default:default2
12default:default24
H:/FPGA_basicproject/ARP/arp.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	top_rgmii2default:default2
 2default:default2:
$H:/FPGA_basicproject/ARP/top_rgmii.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
rgmii_rx2default:default2
 2default:default29
#H:/FPGA_basicproject/ARP/RGMII_rx.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IDDR2default:default2
 2default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
571782default:default8@Z8-6157h px� 
r
%s
*synth2Z
F	Parameter DDR_CLK_EDGE bound to: SAME_EDGE_PIPELINED - type: string 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_Q1 bound to: 1'b0 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_Q2 bound to: 1'b0 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IDDR2default:default2
 2default:default2
62default:default2
12default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
571782default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
72default:default2
12default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFIO2default:default2
 2default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
13442default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFIO2default:default2
 2default:default2
82default:default2
12default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
13442default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rgmii_rx2default:default2
 2default:default2
92default:default2
12default:default29
#H:/FPGA_basicproject/ARP/RGMII_rx.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
rgmii_tx2default:default2
 2default:default29
#H:/FPGA_basicproject/ARP/RGMII_tx.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6157h px� 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
102default:default2
12default:default2K
5D:/vivado/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rgmii_tx2default:default2
 2default:default2
112default:default2
12default:default29
#H:/FPGA_basicproject/ARP/RGMII_tx.v2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	top_rgmii2default:default2
 2default:default2
122default:default2
12default:default2:
$H:/FPGA_basicproject/ARP/top_rgmii.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top_arp2default:default2
 2default:default2
132default:default2
12default:default28
"H:/FPGA_basicproject/ARP/top_arp.v2default:default2
12default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[31]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[30]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[29]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[28]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[27]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[26]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[25]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[24]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[23]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[22]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[21]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[20]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[19]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[18]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[17]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[16]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[15]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[14]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[13]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[12]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[11]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[10]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[9]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[8]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[7]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[6]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[5]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[4]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[3]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[2]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[1]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[0]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1261.410 ; gain = 0.000
2default:defaulth px� 
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
00:00:00.0102default:default2
1261.4102default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px� 
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
�
Parsing XDC File [%s]
179*designutils2i
SH:/FPGA_basicproject/ARP/project/project_arp/project_arp.srcs/constrs_1/new/pin.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2i
SH:/FPGA_basicproject/ARP/project/project_arp/project_arp.srcs/constrs_1/new/pin.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2g
SH:/FPGA_basicproject/ARP/project/project_arp/project_arp.srcs/constrs_1/new/pin.xdc2default:default2-
.Xil/top_arp_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1261.4102default:default2
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
00:00:00.0052default:default2
1261.4102default:default2
0.0002default:defaultZ17-268h px� 
�
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1261.410 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
arp_tx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
arp_rx2default:defaultZ8-802h px� 
�
QFound Keep on FSM register '%s' in module '%s', re-encoding will not be performed4499*oasys2
	state_reg2default:default2
arp_tx2default:defaultZ8-6159h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                            00001 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 PREAMBL |                            00010 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                     SFD |                            00011 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_                ETH_MAC0 |                            00100 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_              ETH_MAC_S0 |                            00101 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START0 |                            00110 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START1 |                            00111 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START2 |                            01000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START3 |                            01001 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START4 |                            01010 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_                      OP |                            01011 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_              ETH_MAC_S1 |                            01100 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2s
_               ETH_IP_S1 |                            01101 |                            01101
2default:defaulth p
x
� 
�
%s
*synth2s
_                ETH_MAC1 |                            01110 |                            01110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 ETH_IP1 |                            01111 |                            01111
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START5 |                            10000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2s
_                     CRC |                            10001 |                            10001
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
QFound Keep on FSM register '%s' in module '%s', re-encoding will not be performed4499*oasys2
	state_reg2default:default2
arp_rx2default:defaultZ8-6159h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                            00001 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 PREAMBL |                            00010 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                     SFD |                            00011 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_                ETH_MAC0 |                            00100 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_              ETH_MAC_S0 |                            00101 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START0 |                            00110 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START1 |                            00111 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START2 |                            01000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START3 |                            01001 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START4 |                            01010 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_                      OP |                            01011 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_              ETH_MAC_S1 |                            01100 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2s
_               ETH_IP_S1 |                            01101 |                            01101
2default:defaulth p
x
� 
�
%s
*synth2s
_                ETH_MAC1 |                            01110 |                            01110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 ETH_IP1 |                            01111 |                            01111
2default:defaulth p
x
� 
�
%s
*synth2s
_              ARP_START5 |                            10000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2s
_                     CRC |                            10001 |                            10001
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 2     
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
.	   2 Input      1 Bit         XORs := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit         XORs := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 1     
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
.	               48 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
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
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 24    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
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
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[31]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[30]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[29]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[28]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[27]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[26]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[25]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[24]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[23]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[22]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[21]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[20]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[19]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[18]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[17]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[16]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[15]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[14]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[13]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[12]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[11]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

des_ip[10]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[9]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[8]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[7]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[6]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[5]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[4]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[3]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[2]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[1]2default:default2
arp_tx2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	des_ip[0]2default:default2
arp_tx2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
{Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
zFinished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�
!Found another clock driver %s:%s
3964*oasys2=
)\top_rgmii_inst/rgmii_rx_inst/BUFIO_inst 2default:default2
O2default:default29
#H:/FPGA_basicproject/ARP/RGMII_rx.v2default:default2
252default:default8@Z8-5410h px� 
�
!Found another clock driver %s:%s
3964*oasys2<
(\top_rgmii_inst/rgmii_rx_inst/BUFG_inst 2default:default2
O2default:default29
#H:/FPGA_basicproject/ARP/RGMII_rx.v2default:default2
162default:default8@Z8-5410h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
tFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
C
%s*synth2+
|      |Cell  |Count |
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
C
%s*synth2+
|1     |BUFG  |     2|
2default:defaulth px� 
C
%s*synth2+
|2     |BUFIO |     1|
2default:defaulth px� 
C
%s*synth2+
|3     |IDDR  |     5|
2default:defaulth px� 
C
%s*synth2+
|4     |LUT1  |    37|
2default:defaulth px� 
C
%s*synth2+
|5     |LUT2  |    33|
2default:defaulth px� 
C
%s*synth2+
|6     |LUT3  |    28|
2default:defaulth px� 
C
%s*synth2+
|7     |LUT4  |    29|
2default:defaulth px� 
C
%s*synth2+
|8     |LUT5  |    48|
2default:defaulth px� 
C
%s*synth2+
|9     |LUT6  |   164|
2default:defaulth px� 
C
%s*synth2+
|10    |MUXF7 |     1|
2default:defaulth px� 
C
%s*synth2+
|11    |ODDR  |     5|
2default:defaulth px� 
C
%s*synth2+
|12    |FDPE  |    32|
2default:defaulth px� 
C
%s*synth2+
|13    |FDRE  |   166|
2default:defaulth px� 
C
%s*synth2+
|14    |FDSE  |     2|
2default:defaulth px� 
C
%s*synth2+
|15    |IBUF  |     8|
2default:defaulth px� 
C
%s*synth2+
|16    |OBUF  |     7|
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 35 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:20 . Memory (MB): peak = 1261.410 ; gain = 0.000
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1261.410 ; gain = 0.000
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
00:00:00.0062default:default2
1261.4102default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
112default:defaultZ29-17h px� 
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
00:00:00.0012default:default2
1261.4102default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
6cfea4bc2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522default:default2
692default:default2
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
00:00:232default:default2
00:00:252default:default2
1261.4102default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2e
QH:/FPGA_basicproject/ARP/project/project_arp/project_arp.runs/synth_1/top_arp.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file top_arp_utilization_synth.rpt -pb top_arp_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Dec 17 15:29:15 20242default:defaultZ17-206h px� 


End Record