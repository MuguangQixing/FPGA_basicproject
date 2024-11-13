set_property PACKAGE_PIN C22 [get_ports {hdmi_p[2]}]
set_property PACKAGE_PIN B21 [get_ports {hdmi_p[1]}]
set_property PACKAGE_PIN B15 [get_ports {hdmi_p[0]}]
set_property PACKAGE_PIN C18 [get_ports hdmi_clk_p]
set_property PACKAGE_PIN R14 [get_ports rst_n]
set_property PACKAGE_PIN V4 [get_ports sysclk]
set_property IOSTANDARD SSTL135 [get_ports sysclk]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

set_property IOSTANDARD TMDS_33 [get_ports {hdmi_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {hdmi_p[0]}]

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk_wiz_0_inst/inst/clk_in1_clk_wiz_0] 
