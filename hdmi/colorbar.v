module colorbar(
    input sysclk,
    input rstn,

    output  [2:0] hdmi_p,
    output  [2:0] hdmi_n,

    output hdmi_clk_p,
    output hdmi_clk_n 
);





wire locked;
wire pclk, sclk;

  clk_wiz_0 clk_inst
   (
    // Clock out ports
    .clk_75M(pclk),     // output clk_75M
    .clk_375M(sclk),     // output clk_375M
    // Status and control signals
    .resetn(rstn), // input resetn
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(sysclk)
    );      // input clk_in1



wire hsync, vsync, de;

VTC vtc_inst(
    .clk(pclk),
    .rstn(locked),
    
    .hsync(hsync),//行同步信号
    .vsync(vsync),//场同步信号
    .de (de)  //数据有效信号
);

top_TMDS tmds_inst(
    .pclk(pclk),
    .sclk(sclk),
    .rstn(locked),
    
    .rgb(24'hff0000),
    .hsync(hsync),
    .vsync(vsync),
    .de(de),
    
    //输出差分对
    .hdmi_p(hdmi_p),
    .hdmi_n(hdmi_n),

    .hdmi_clk_p(hdmi_clk_p),
    .hdmi_clk_n(hdmi_clk_n) 
);

endmodule