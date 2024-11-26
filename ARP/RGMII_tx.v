//将RGMII接口的TX端口转换为GMII接口的TX端口
module rgmii_tx(
    input mac_txc,          //mac层提供的时钟
    input mac_txv,          //mac层提供的数据有效信号
    input [7:0] mac_txd,    //mac层提供的数据

    output rgmii_txc,       //rgmii层提供的时钟
    output rgmii_txv,       //rgmii层提供的数据有效信号
    output [3:0] rgmii_txd  //rgmii层提供的数据  
);

assign rgmii_txc = mac_txc;


//控制信号的生成
   ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_txv (
      .Q(rgmii_txv),   // 1-bit DDR output
      .C(mac_txc),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(mac_txv), // 1-bit data input (positive edge)
      .D2(mac_txv), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );


//数据的生成 
genvar i;
generate for(i = 0; i < 4; i = i + 1)begin
   ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_txd (
      .Q(rgmii_txd[i]),   // 1-bit DDR output
      .C(mac_txc),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(mac_txd[i]), // 1-bit data input (positive edge)
      .D2(mac_txd[i + 4]), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );
end
endgenerate
  

endmodule