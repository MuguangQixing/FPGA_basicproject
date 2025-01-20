
module rgmii_rx(
    input         rgmii_rxc,
    input         rgmii_rxv,
    input [3:0]   rgmii_rxd,
    
    output        mac_rxc,
    output        mac_rxv,
    output [7:0]  mac_rxd
);
//因为时钟是由PHY提供的，所以我们需要对时钟进行缓存，以适应FPGA的时钟网络

//对全局时钟缓存

wire rgmii_rxc_bufg;
   BUFG BUFG_inst (
      .O(rgmii_rxc_bufg), // 1-bit output: Clock output
      .I(rgmii_rxc)  // 1-bit input: Clock input
   );


//对接口时钟缓存

wire rgmii_rxc_bufio;
   BUFIO BUFIO_inst (
      .O(rgmii_rxc_bufio), // 1-bit output: Clock output (connect to I/O clock loads).
      .I(rgmii_rxc)  // 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );

assign mac_rxc = rgmii_rxc_bufg;

wire [1:0] rgmii_rxv_reg;


   IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_rgmii_rxv (
      .Q1(rgmii_rxv_reg[0]), // 1-bit output for positive edge of clock
      .Q2(rgmii_rxv_reg[1]), // 1-bit output for negative edge of clock
      .C(rgmii_rxc_bufio),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(rgmii_rxv),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );


assign mac_rxv = rgmii_rxv_reg[1] & rgmii_rxv_reg[0];


genvar i;
generate for(i = 0; i < 4; i = i + 1)begin
     IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
     ) IDDR_rgmii_rxd (
      .Q1(mac_rxd[i]), // 1-bit output for positive edge of clock
      .Q2(mac_rxd[i + 4]), // 1-bit output for negative edge of clock
      .C(rgmii_rxc_bufio),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(rgmii_rxd[i]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );
end
endgenerate

endmodule