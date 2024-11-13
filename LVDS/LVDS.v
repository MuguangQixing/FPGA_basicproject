module lvds_output_driver(
     input           i_clk_455mhz  ,
     input           i_clk_65mhz   ,
     input           i_rst         ,
     input   [7:0]   i_red_data    ,
     input   [7:0]   i_gre_data    ,
     input   [7:0]   i_blu_data    ,
     input           i_v_sync      ,
     input           i_h_sync      ,
     input           i_data_en     ,
     output          tx_clk_p      ,
     output          tx_clk_n      ,
     output  [3:0]   lvds_data_p   ,
     output  [3:0]   lvds_data_n    
);

// CLK

parameter   CLK_PATTERN = 7'b11_000_11;


OSERDESE2 #(
      .DATA_RATE_OQ     ("SDR"      ),          // DDR, SDR
      .DATA_RATE_TQ     ("SDR"      ),          // DDR, BUF, SDR
      .DATA_WIDTH       (7          ),          // Parallel data width (2-8,10,14)
      .INIT_OQ          (1'b0       ),          // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ          (1'b0       ),          // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE      ("MASTER"   ),          // MASTER, SLAVE
      .SRVAL_OQ         (1'b0       ),          // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ         (1'b0       ),          // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL        ("FALSE"    ),          // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC        ("FALSE"    ),          // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH   (1          )           // 3-state converter width (1,4)
   )
   OSERDES_clk_inst (
      .OFB          (               ),          // 1-bit output: Feedback path for data
      .OQ           (oserdes_clk    ),          // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1    (               ),
      .SHIFTOUT2    (               ),
      .TBYTEOUT     (               ),          // 1-bit output: Byte group tristate
      .TFB          (               ),          // 1-bit output: 3-state control
      .TQ           (               ),          // 1-bit output: 3-state control
      .CLK          (i_clk_455mhz   ),          // 1-bit input: High speed clock
      .CLKDIV       (i_clk_65mhz    ),          // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1           (CLK_PATTERN[0] ),
      .D2           (CLK_PATTERN[1] ),
      .D3           (CLK_PATTERN[2] ),
      .D4           (CLK_PATTERN[3] ),
      .D5           (CLK_PATTERN[4] ),
      .D6           (CLK_PATTERN[5] ),
      .D7           (CLK_PATTERN[6] ),
      .D8           (               ),
      .OCE          (1'b1           ),             // 1-bit input: Output data clock enable
      .RST          (i_rst          ),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1     (1'b0           ),
      .SHIFTIN2     (1'b0           ),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1           (1'b0           ),
      .T2           (1'b0           ),
      .T3           (1'b0           ),
      .T4           (1'b0           ),
      .TBYTEIN      (1'b0           ),     // 1-bit input: Byte group tristate
      .TCE          (1'b0           )              // 1-bit input: 3-state clock enable
   );
 
OBUFDS #(
      .IOSTANDARD   ("DEFAULT"      ), // Specify the output I/O standard
      .SLEW         ("SLOW"         )           // Specify the output slew rate
   ) OBUFDS_CLK_inst (
      .O            (tx_clk_p       ),     // Diff_p output (connect directly to top-level port)
      .OB           (tx_clk_n       ),   // Diff_n output (connect directly to top-level port)
      .I            (oserdes_clk    )      // Buffer input 
   );
 


wire [3:0]  oserdes_data;   // oserdes output data

// 1 PAIR
OSERDESE2 #(
      .DATA_RATE_OQ     ("SDR"      ),          // DDR, SDR
      .DATA_RATE_TQ     ("SDR"      ),          // DDR, BUF, SDR
      .DATA_WIDTH       (7          ),          // Parallel data width (2-8,10,14)
      .INIT_OQ          (1'b0       ),          // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ          (1'b0       ),          // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE      ("MASTER"   ),          // MASTER, SLAVE
      .SRVAL_OQ         (1'b0       ),          // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ         (1'b0       ),          // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL        ("FALSE"    ),          // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC        ("FALSE"    ),          // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH   (1          )           // 3-state converter width (1,4)
   )
   OSERDES_data_inst0 (
      .OFB          (               ),          // 1-bit output: Feedback path for data
      .OQ           (oserdes_data[0]),          // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1    (               ),
      .SHIFTOUT2    (               ),
      .TBYTEOUT     (               ),          // 1-bit output: Byte group tristate
      .TFB          (               ),          // 1-bit output: 3-state control
      .TQ           (               ),          // 1-bit output: 3-state control
      .CLK          (i_clk_455mhz   ),          // 1-bit input: High speed clock
      .CLKDIV       (i_clk_65mhz    ),          // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1           (i_gre_data[0]  ),
      .D2           (i_red_data[5]  ),
      .D3           (i_red_data[4]  ),
      .D4           (i_red_data[3]  ),
      .D5           (i_red_data[2]  ),
      .D6           (i_red_data[1]  ),
      .D7           (i_red_data[0]  ),
      .D8           (               ),
      .OCE          (1'b1           ),             // 1-bit input: Output data clock enable
      .RST          (i_rst          ),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1     (1'b0           ),
      .SHIFTIN2     (1'b0           ),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1           (1'b0           ),
      .T2           (1'b0           ),
      .T3           (1'b0           ),
      .T4           (1'b0           ),
      .TBYTEIN      (1'b0           ),     // 1-bit input: Byte group tristate
      .TCE          (1'b0           )              // 1-bit input: 3-state clock enable
   );
 
OBUFDS #(
      .IOSTANDARD   ("DEFAULT"      ), // Specify the output I/O standard
      .SLEW         ("SLOW"         )           // Specify the output slew rate
   ) OBUFDS_DATA_inst0 (
      .O            (lvds_data_p[0] ),     // Diff_p output (connect directly to top-level port)
      .OB           (lvds_data_n[0] ),   // Diff_n output (connect directly to top-level port)
      .I            (oserdes_data[0])      // Buffer input 
   );
 
// 2 PAIR
OSERDESE2 #(
      .DATA_RATE_OQ     ("SDR"      ),          // DDR, SDR
      .DATA_RATE_TQ     ("SDR"      ),          // DDR, BUF, SDR
      .DATA_WIDTH       (7          ),          // Parallel data width (2-8,10,14)
      .INIT_OQ          (1'b0       ),          // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ          (1'b0       ),          // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE      ("MASTER"   ),          // MASTER, SLAVE
      .SRVAL_OQ         (1'b0       ),          // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ         (1'b0       ),          // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL        ("FALSE"    ),          // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC        ("FALSE"    ),          // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH   (1          )           // 3-state converter width (1,4)
   )
   OSERDES_data_inst1 (
      .OFB          (               ),          // 1-bit output: Feedback path for data
      .OQ           (oserdes_data[1]),          // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1    (               ),
      .SHIFTOUT2    (               ),
      .TBYTEOUT     (               ),          // 1-bit output: Byte group tristate
      .TFB          (               ),          // 1-bit output: 3-state control
      .TQ           (               ),          // 1-bit output: 3-state control
      .CLK          (i_clk_455mhz   ),          // 1-bit input: High speed clock
      .CLKDIV       (i_clk_65mhz    ),          // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1           (i_blu_data[1]  ),
      .D2           (i_blu_data[0]  ),
      .D3           (i_gre_data[5]  ),
      .D4           (i_gre_data[4]  ),
      .D5           (i_gre_data[3]  ),
      .D6           (i_gre_data[2]  ),
      .D7           (i_gre_data[1]  ),
      .D8           (               ),
      .OCE          (1'b1           ),             // 1-bit input: Output data clock enable
      .RST          (i_rst          ),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1     (1'b0           ),
      .SHIFTIN2     (1'b0           ),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1           (1'b0           ),
      .T2           (1'b0           ),
      .T3           (1'b0           ),
      .T4           (1'b0           ),
      .TBYTEIN      (1'b0           ),     // 1-bit input: Byte group tristate
      .TCE          (1'b0           )              // 1-bit input: 3-state clock enable
   );
 
OBUFDS #(
      .IOSTANDARD   ("DEFAULT"      ), // Specify the output I/O standard
      .SLEW         ("SLOW"         )           // Specify the output slew rate
   ) OBUFDS_DATA_inst1 (
      .O            (lvds_data_p[1] ),     // Diff_p output (connect directly to top-level port)
      .OB           (lvds_data_n[1] ),   // Diff_n output (connect directly to top-level port)
      .I            (oserdes_data[1])      // Buffer input 
   );
 
// 3 PAIR
OSERDESE2 #(
      .DATA_RATE_OQ     ("SDR"      ),          // DDR, SDR
      .DATA_RATE_TQ     ("SDR"      ),          // DDR, BUF, SDR
      .DATA_WIDTH       (7          ),          // Parallel data width (2-8,10,14)
      .INIT_OQ          (1'b0       ),          // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ          (1'b0       ),          // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE      ("MASTER"   ),          // MASTER, SLAVE
      .SRVAL_OQ         (1'b0       ),          // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ         (1'b0       ),          // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL        ("FALSE"    ),          // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC        ("FALSE"    ),          // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH   (1          )           // 3-state converter width (1,4)
   )
   OSERDES_data_inst2 (
      .OFB          (               ),          // 1-bit output: Feedback path for data
      .OQ           (oserdes_data[2]),          // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1    (               ),
      .SHIFTOUT2    (               ),
      .TBYTEOUT     (               ),          // 1-bit output: Byte group tristate
      .TFB          (               ),          // 1-bit output: 3-state control
      .TQ           (               ),          // 1-bit output: 3-state control
      .CLK          (i_clk_455mhz   ),          // 1-bit input: High speed clock
      .CLKDIV       (i_clk_65mhz    ),          // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1           (i_data_en      ),
      .D2           (i_v_sync       ),
      .D3           (i_h_sync       ),
      .D4           (i_blu_data[5]  ),
      .D5           (i_blu_data[4]  ),
      .D6           (i_blu_data[3]  ),
      .D7           (i_blu_data[2]  ),
      .D8           (               ),
      .OCE          (1'b1           ),             // 1-bit input: Output data clock enable
      .RST          (i_rst          ),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1     (1'b0           ),
      .SHIFTIN2     (1'b0           ),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1           (1'b0           ),
      .T2           (1'b0           ),
      .T3           (1'b0           ),
      .T4           (1'b0           ),
      .TBYTEIN      (1'b0           ),     // 1-bit input: Byte group tristate
      .TCE          (1'b0           )              // 1-bit input: 3-state clock enable
   );
 
OBUFDS #(
      .IOSTANDARD   ("DEFAULT"      ), // Specify the output I/O standard
      .SLEW         ("SLOW"         )           // Specify the output slew rate
   ) OBUFDS_DATA_inst2 (
      .O            (lvds_data_p[2] ),     // Diff_p output (connect directly to top-level port)
      .OB           (lvds_data_n[2] ),   // Diff_n output (connect directly to top-level port)
      .I            (oserdes_data[2])      // Buffer input 
   );
 
// 4 PAIR

parameter   DON_CR  = 0;

OSERDESE2 #(
      .DATA_RATE_OQ     ("SDR"      ),          // DDR, SDR
      .DATA_RATE_TQ     ("SDR"      ),          // DDR, BUF, SDR
      .DATA_WIDTH       (7          ),          // Parallel data width (2-8,10,14)
      .INIT_OQ          (1'b0       ),          // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ          (1'b0       ),          // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE      ("MASTER"   ),          // MASTER, SLAVE
      .SRVAL_OQ         (1'b0       ),          // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ         (1'b0       ),          // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL        ("FALSE"    ),          // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC        ("FALSE"    ),          // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH   (1          )           // 3-state converter width (1,4)
   )
   OSERDES_data_inst3 (
      .OFB          (               ),          // 1-bit output: Feedback path for data
      .OQ           (oserdes_data[3]),          // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1    (               ),
      .SHIFTOUT2    (               ),
      .TBYTEOUT     (               ),          // 1-bit output: Byte group tristate
      .TFB          (               ),          // 1-bit output: 3-state control
      .TQ           (               ),          // 1-bit output: 3-state control
      .CLK          (i_clk_455mhz   ),          // 1-bit input: High speed clock
      .CLKDIV       (i_clk_65mhz    ),          // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1           (DON_CR         ),
      .D2           (i_blu_data[7]  ),
      .D3           (i_blu_data[6]  ),
      .D4           (i_gre_data[7]  ),
      .D5           (i_gre_data[6]  ),
      .D6           (i_red_data[7]  ),
      .D7           (i_red_data[6]  ),
      .D8           (               ),
      .OCE          (1'b1           ),             // 1-bit input: Output data clock enable
      .RST          (i_rst          ),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1     (1'b0           ),
      .SHIFTIN2     (1'b0           ),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1           (1'b0           ),
      .T2           (1'b0           ),
      .T3           (1'b0           ),
      .T4           (1'b0           ),
      .TBYTEIN      (1'b0           ),     // 1-bit input: Byte group tristate
      .TCE          (1'b0           )              // 1-bit input: 3-state clock enable
   );
 
OBUFDS #(
      .IOSTANDARD   ("DEFAULT"      ), // Specify the output I/O standard
      .SLEW         ("SLOW"         )           // Specify the output slew rate
   ) OBUFDS_DATA_inst3 (
      .O            (lvds_data_p[3] ),     // Diff_p output (connect directly to top-level port)
      .OB           (lvds_data_n[3] ),   // Diff_n output (connect directly to top-level port)
      .I            (oserdes_data[3])      // Buffer input 
   );


   endmodule