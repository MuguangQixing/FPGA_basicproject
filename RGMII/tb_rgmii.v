`timescale 1ns/1ps

module tb_rgmireg();
    reg ETH_RXC;
    reg ETH_RXV;
    reg [3:0] ETH_RXD;


    wire ETH_TXC;
    wire ETH_TXV;
    wire [3:0] ETH_TXD;

    //
    wire MAC_TXC;          //mac层提供的时钟
    reg MAC_TXV;           //mac层提供的数据有效信号
    reg [7:0] MAC_TXD ;     //mac层提供的数据

    wire MAC_RXC;          //mac层提供的时钟
    wire MAC_RXV;           //mac层提供的数据有效信号
    wire [7:0] MAC_RXD;     //mac层提供的数据

    always #4 ETH_RXC = ~ETH_RXC;

    initial begin
        ETH_RXC = 0;
        MAC_TXV = 0;
        MAC_TXD = 0;
        ETH_RXD = 0;
        ETH_RXV = 0;
        #100
        repeat(10) begin
            #8
            MAC_TXV = 1;
            ETH_RXV = 1;
        end
    end

    always @(posedge ETH_RXC) begin
        MAC_TXD <= MAC_TXD + 1;
    end

    always @(posedge ETH_RXC or negedge ETH_RXC) begin
        ETH_RXD <= ETH_RXD + 1;
    end

top_rgmii top_rgmii_inst(
    .ETH_RXC(ETH_RXC),
    .ETH_RXV(ETH_RXV),
    .ETH_RXD(ETH_RXD),


    .ETH_TXC(ETH_TXC),
    .ETH_TXV(ETH_TXV),
    .ETH_TXD(ETH_TXD),

    //
    . MAC_TXC(MAC_TXC),          //mac层提供的时钟
    .MAC_TXV(MAC_TXV),           //mac层提供的数据有效信号
    .MAC_TXD (MAC_TXD),     //mac层提供的数据

    . MAC_RXC(MAC_RXC),          //mac层提供的时钟
    . MAC_RXV(MAC_RXV),           //mac层提供的数据有效信号
    . MAC_RXD (MAC_RXD)     //mac层提供的数据
);




endmodule