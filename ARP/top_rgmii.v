module top_rgmii(
    input ETH_RXC,
    input ETH_RXV,
    input [3:0] ETH_RXD,


    output ETH_TXC,
    output ETH_TXV,
    output [3:0] ETH_TXD,

    //
    output MAC_TXC,          //mac层提供的时钟
    input MAC_TXV,           //mac层提供的数据有效信号
    input [7:0] MAC_TXD ,     //mac层提供的数据

    output MAC_RXC,          //mac层提供的时钟
    output MAC_RXV,           //mac层提供的数据有效信号
    output [7:0] MAC_RXD      //mac层提供的数据
);
// 芯片 -> ETH_RXC ->（ rgmii_rxc -> rgmii_rxc_bufg -> mac_rxc）-> MAC_RXC -> 协议代码
// MAC_RXC -> MAC_TXC ->（ mac_txc -> rgmii_txc ）->  ETH_TXC -> 芯片

// 芯片 -> ETH_RXD ->（ rgmii_rx[4] -> iddr -> mac_rxd[8] ）-> MAC_RXD -> 协议代码
// 协议代码 -> MAC_TXD ->（ mac_txd[8] -> oddr -> rgmii_txd[4] ）-> ETH_TXD -> 芯片

assign  MAC_TXC = MAC_RXC;

 rgmii_rx rgmii_rx_inst(
    .rgmii_rxc(ETH_RXC),
    .rgmii_rxv(ETH_RXV),
    .rgmii_rxd(ETH_RXD),
    
    .mac_rxc(MAC_RXC),
    .mac_rxv(MAC_RXV),
    .mac_rxd(MAC_RXD)
);

rgmii_tx rgmii_tx_inst(
    .mac_txc(MAC_TXC),          //mac层提供的时钟
    .mac_txv(MAC_TXV),          //mac层提供的数据有效信号
    .mac_txd(MAC_TXD),    //mac层提供的数据

    .rgmii_txc(ETH_TXC),       //rgmii层提供的时钟
    .rgmii_txv(ETH_TXV),       //rgmii层提供的数据有效信号
    .rgmii_txd(ETH_TXD)  //rgmii层提供的数据  
);


endmodule