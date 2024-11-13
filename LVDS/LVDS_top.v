module LVDS_top (
    input               clk             ,       // sys_clk
    output              pwm_pannel      ,       // backlight
    output              o_tx_clk_p      ,
    output              o_tx_clk_n      ,
    output  [3:0]       lvds_data_p     ,
    output  [3:0]       lvds_data_n      
);
 
wire clk_65mhz       ;
wire clk_455mhz      ;
 
wire rst             ;
 
wire [7:0]  red_data ; 
wire [7:0]  gre_data ; 
wire [7:0]  blu_data ; 
wire        h_sync   ; 
wire        v_sync   ; 
wire        data_en  ; 
 
assign pwm_pannel = 1;
 
// MMCM
clk_wiz_0 u_clk_wiz_0(
    /* output */              .clk_out1         (clk_65mhz  ),
    /* output */              .clk_out2         (clk_455mhz ),
    /* output */              .locked           (rst        ),
    /* input  */              .clk_in1          (clk        )
);
 
 
data_generator u_data_generator(
    /* input         */       .i_clk_65mhz      (clk_65mhz  ),   //input 65MHz clk, period : 15.38ns
    /* input         */       .i_rst            (!rst       ),
    /* output  [7:0] */       .o_red_data       (red_data   ),
    /* output  [7:0] */       .o_gre_data       (gre_data   ),
    /* output  [7:0] */       .o_blu_data       (blu_data   ),
    /* output  reg   */       .o_h_sync         (h_sync     ),
    /* output  reg   */       .o_v_sync         (v_sync     ),
    /* output  reg   */       .o_data_en        (data_en    ) 
);
 
lvds_output_driver u_lvds_output_driver(
    /* input         */       .i_clk_455mhz     (clk_455mhz ),
    /* input         */       .i_clk_65mhz      (clk_65mhz  ),
    /* input         */       .i_rst            (!rst       ),
    /* input   [7:0] */       .i_red_data       (red_data   ),
    /* input   [7:0] */       .i_gre_data       (gre_data   ),
    /* input   [7:0] */       .i_blu_data       (blu_data   ),
    /* input         */       .i_v_sync         (v_sync     ),
    /* input         */       .i_h_sync         (h_sync     ),
    /* input         */       .i_data_en        (data_en    ),
    /* output        */       .tx_clk_p         (o_tx_clk_p ),
    /* output        */       .tx_clk_n         (o_tx_clk_n ),
    /* output  [3:0] */       .lvds_data_p      (lvds_data_p),
    /* output  [3:0] */       .lvds_data_n      (lvds_data_n) 
);
 
endmodule



`timescale 1ns/1ps

module tb_LVDS();

reg clk;

initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
end

wire pwm_pannel;
wire o_tx_clk_p;
wire o_tx_clk_n;
wire [3:0] lvds_data_p;
wire [3:0] lvds_data_n;

LVDS_top top_inst(
    .clk             (clk),       // sys_clk
    .pwm_pannel      (pwm_pannel),       // backlight
    .o_tx_clk_p      (o_tx_clk_p),
    .o_tx_clk_n      (o_tx_clk_n),
    .lvds_data_p     (lvds_data_p),
    .lvds_data_n     (lvds_data_n) 
);

endmodule
