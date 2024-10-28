module top_TMDS(
    input pclk,
    input sclk,
    input rstn,
    
    input [23:0] rgb,
    input hsync,
    input vsync,
    input de,
    
    //输出差分对
    output  [2:0] hdmi_p,
    output  [2:0] hdmi_n,

    output hdmi_clk_p,
    output hdmi_clk_n 
);
wire [9:0] encode_r, encode_g, encode_b;


Encoder encode_inst0(
     .clkin(pclk), // pixel clock input
     .rstin(~rstn), // async. reset input (active high)
     .din(rgb[23:16]), // data inputs: expect registered
     .c0(1'b0), // c0 input
     .c1(1'b0), // c1 input
     .de(de), // de input
     .dout(encode_r) // data outputs
);

Encoder encode_inst1(
     .clkin(pclk), // pixel clock input
     .rstin(~rstn), // async. reset input (active high)
     .din(rgb[15:8]), // data inputs: expect registered
     .c0(1'b0), // c0 input
     .c1(1'b0), // c1 input
     .de(de), // de input
     .dout(encode_g) // data outputs
);

Encoder encode_inst2(
     .clkin(pclk), // pixel clock input
     .rstin(~rstn), // async. reset input (active high)
     .din(rgb[7:0]), // data inputs: expect registered
     .c0(hsync), // c0 input
     .c1(vsync), // c1 input
     .de(de), // de input
     .dout(encode_b) // data outputs
);


wire piso_r,piso_g,piso_b;

PISO piso_inst0(
.pclk(pclk),
.sclk(sclk),
.rst_n(rstn),
.data_i(encode_r),
.data_o(piso_r)
);

PISO piso_inst1(
.pclk(pclk),
.sclk(sclk),
.rst_n(rstn),
.data_i(encode_g),
.data_o(piso_g)
);

PISO piso_inst2(
.pclk(pclk),
.sclk(sclk),
.rst_n(rstn),
.data_i(encode_b),
.data_o(piso_b)
);

wire piso_clk;

PISO piso_instclk(
.pclk(pclk),
.sclk(sclk),
.rst_n(rstn),
.data_i(10'b11111_00000),
.data_o(piso_clk)
);

   OBUFDS #(
      .IOSTANDARD("TMDS_33"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst0 (
      .O(hdmi_p[2]),     // Diff_p output (connect directly to top-level port)
      .OB(hdmi_n[2]),   // Diff_n output (connect directly to top-level port)
      .I(piso_r)      // Buffer input
   );

   OBUFDS #(
      .IOSTANDARD("TMDS_33"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst1 (
      .O(hdmi_p[1]),     // Diff_p output (connect directly to top-level port)
      .OB(hdmi_n[1]),   // Diff_n output (connect directly to top-level port)
      .I(piso_g)      // Buffer input
   );

   OBUFDS #(
      .IOSTANDARD("TMDS_33"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst2 (
      .O(hdmi_p[0]),     // Diff_p output (connect directly to top-level port)
      .OB(hdmi_n[0]),   // Diff_n output (connect directly to top-level port)
      .I(piso_b)      // Buffer input
   );



   OBUFDS #(
      .IOSTANDARD("TMDS_33"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_instclk (
      .O(hdmi_clk_p),     // Diff_p output (connect directly to top-level port)
      .OB(hdmi_clk_n),   // Diff_n output (connect directly to top-level port)
      .I(piso_clk)      // Buffer input
   );


endmodule