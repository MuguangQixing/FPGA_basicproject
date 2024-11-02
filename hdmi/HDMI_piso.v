`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/24 14:42:08
// Design Name: 
// Module Name: PISO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PISO(
input pclk,
input sclk,
input rst_n,
input [9:0] data_i,
output data_o
    );
    
    wire SHIFTOUT1,SHIFTOUT2;
    
       OSERDESE2 #(
      .DATA_RATE_OQ("DDR"),   // DDR, SDR:这里写成DDR代表双边沿发�?
      .DATA_RATE_TQ("SDR"),   // DDR, BUF, SDR
      .DATA_WIDTH(10),         // Parallel data width (2-8,10,14)
      .INIT_OQ(1'b0),         // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ(1'b0),         // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE("MASTER"), // MASTER, SLAVE
      .SRVAL_OQ(1'b0),        // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ(1'b0),        // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL("FALSE"),    // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC("FALSE"),    // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH(1)      // 3-state converter width (1,4)
   )
   OSERDESE2_inst0 (
      .OFB(),             // 1-bit output: Feedback path for data
      .OQ(data_o),               // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1(),
      .SHIFTOUT2(),
      .TBYTEOUT(),   // 1-bit output: Byte group tristate
      .TFB(),             // 1-bit output: 3-state control
      .TQ(),               // 1-bit output: 3-state control
      .CLK(sclk),             // 1-bit input: High speed clock
      .CLKDIV(pclk),       // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1(data_i[0]),
      .D2(data_i[1]),
      .D3(data_i[2]),
      .D4(data_i[3]),
      .D5(data_i[4]),
      .D6(data_i[5]),
      .D7(data_i[6]),
      .D8(data_i[7]),
      .OCE(1'b1),             // 1-bit input: Output data clock enable
      .RST(~rst_n),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1(SHIFTOUT1),
      .SHIFTIN2(SHIFTOUT2),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1(),
      .T2(),
      .T3(),
      .T4(),
      .TBYTEIN(),     // 1-bit input: Byte group tristate
      .TCE()              // 1-bit input: 3-state clock enable
   );
   
   
          OSERDESE2 #(
      .DATA_RATE_OQ("DDR"),   // DDR, SDR:这里写成DDR代表双边沿发�?
      .DATA_RATE_TQ("DDR"),   // DDR, BUF, SDR
      .DATA_WIDTH(10),         // Parallel data width (2-8,10,14)
      .INIT_OQ(1'b0),         // Initial value of OQ output (1'b0,1'b1)
      .INIT_TQ(1'b0),         // Initial value of TQ output (1'b0,1'b1)
      .SERDES_MODE("SLAVE"), // 级联，上面作为主机下面作为从�?
      .SRVAL_OQ(1'b0),        // OQ output value when SR is used (1'b0,1'b1)
      .SRVAL_TQ(1'b0),        // TQ output value when SR is used (1'b0,1'b1)
      .TBYTE_CTL("FALSE"),    // Enable tristate byte operation (FALSE, TRUE)
      .TBYTE_SRC("FALSE"),    // Tristate byte source (FALSE, TRUE)
      .TRISTATE_WIDTH(1)      // 3-state converter width (1,4)
   )
   OSERDESE2_inst1 (
      .OFB(),             // 1-bit output: Feedback path for data
      .OQ(),               // 1-bit output: Data path output
      // SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      .SHIFTOUT1(SHIFTOUT1),
      .SHIFTOUT2(SHIFTOUT2),
      .TBYTEOUT(),   // 1-bit output: Byte group tristate
      .TFB(),             // 1-bit output: 3-state control
      .TQ(),               // 1-bit output: 3-state control
      .CLK(sclk),             // 1-bit input: High speed clock
      .CLKDIV(pclk),       // 1-bit input: Divided clock
      // D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      .D1(),
      .D2(),
      .D3(data_i[8]),
      .D4(data_i[9]),
      .D5(),
      .D6(),
      .D7(),
      .D8(),
      .OCE(1'b1),             // 1-bit input: Output data clock enable
      .RST(~rst_n),             // 1-bit input: Reset
      // SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      .SHIFTIN1(),
      .SHIFTIN2(),
      // T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      .T1(),
      .T2(),
      .T3(),
      .T4(),
      .TBYTEIN(),     // 1-bit input: Byte group tristate
      .TCE()              // 1-bit input: 3-state clock enable
   );
    
endmodule




//module tb_piso();

//reg pclk;
//reg sclk;
//reg rstn;
//reg [9:0] datain;
//wire dataout;

//initial begin
//pclk = 0;
//sclk = 0;
//rstn = 0;
//#100
//rstn = 1;
//end
//always #20 pclk = ~pclk;
//always #4 sclk = ~sclk;

//always @(posedge pclk) begin
//    if(~rstn)
//        datain <= 10'b0;
//    else
//        datain <= datain + 1;
//end

//PISO piso_inst(
//.pclk(pclk),
//.sclk(sclk),
//.rst_n(rstn),
//.data_i(datain),
//.data_o(dataout)
//);
//endmodule
