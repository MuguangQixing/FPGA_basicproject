module top(
    
    input rstn,

    input key1,
    input key2,

    input ETH_RXC,
    input ETH_RXV,
    input [3:0] ETH_RXD,


    output ETH_TXC,
    output ETH_TXV,
    output [3:0] ETH_TXD


);


top_rgmii top_rgmii_inst(
    .ETH_RXC(ETH_RXC),
    .ETH_RXV(ETH_RXV),
    .ETH_RXD(ETH_RXD),


    .ETH_TXC(ETH_TXC),
    .ETH_TXV(ETH_TXV),
    .ETH_TXD(ETH_TXD),

    //
    .MAC_TXC(MAC_TXC),          //mac层提供的时钟
    .MAC_TXV(MAC_TXV),           //mac层提供的数据有效信号
    .MAC_TXD(MAC_TXD) ,     //mac层提供的数据

    .MAC_RXC(MAC_RXC),          //mac层提供的时钟
    .MAC_RXV(MAC_RXV),           //mac层提供的数据有效信号
    .MAC_RXD (MAC_RXD)     //mac层提供的数据
);


    wire  MAC_TXC;          //mac层提供的时钟
    wire MAC_TXV;           //mac层提供的数据有效信号
    wire [7:0] MAC_TXD ;     //mac层提供的数据

    wire  MAC_RXC;          //mac层提供的时钟
    wire  MAC_RXV;           //mac层提供的数据有效信号
    wire  [7:0] MAC_RXD;      //mac层提供的数据



    
    wire [15:0] udp_tx_data;             


    wire [7:0] mac_txd;
    wire mac_txv;

    wire [7:0] udp_mac_txd ;
    wire udp_mac_txv ;


ctrl ctrl_inst(
    .mac_txc        (MAC_TXC),
    .rstn           (rstn),

    .arp_rx_op      (arp_rx_op),
    .arp_rx_done    (arp_rx_done),

    .arp_tx_en      (arp_tx_en),
    .arp_mac_txd    (arp_mac_txd),
    .arp_mac_txv    (arp_mac_txv),

    .udp_mac_txd    (udp_mac_txd),
    .udp_mac_txv    (udp_mac_txv),

    .udp_data_en    (udp_data_en),
    .udp_tx_data    (udp_tx_data),


    .mac_txd        (MAC_TXD),
    .mac_txv        (MAC_TXV)
);

    wire arp_tx_en;
    wire arp_tx_op;


arp_ctrl arp_ctrl_inst(
    .clk(MAC_TXC),
    .rstn(rstn),
    
    .key(key1),//按键按下发送协议

    .arp_tx_en(arp_tx_en),
    .arp_tx_op(arp_tx_op),
    
    .arp_rx_op(arp_rx_op),
    .arp_rx_done(arp_rx_done) 
);

wire arp_mac_txv;
wire [7:0] arp_mac_txd;

wire [47:0] pc_mac;
wire [31:0] pc_ip;

wire arp_rx_op;
wire arp_rx_done;

arp arp_inst(
    .rstn(rstn),
    //arp_tx
    .arp_tx_clk(MAC_TXC),

    .arp_tx_en(arp_tx_en),
    .arp_tx_op(arp_tx_op),
    
    .arp_tx_data(arp_mac_txd),
    .arp_tx_valid(arp_mac_txv),

    //arp_rx
    .arp_rx_clk(MAC_RXC),
    .arp_rx_valid(MAC_RXV),
    .arp_rx_data(MAC_RXD),

    .pc_mac(pc_mac),
    .pc_ip(pc_ip),

    .arp_rx_op(arp_rx_op),
    .arp_rx_done(arp_rx_done) 
);

wire udp_data_en;

udp_top udp_top_inst(
    .rstn(rstn),

    
    .udp_tx_en(key2),
    .udp_tx_data(udp_tx_data),

    .des_mac(pc_mac),
    .des_ip(pc_ip),

    .udp_data_en(udp_data_en), //数据有效信号



//--------------------RGMII-----------------------
    .udp_gmii_txd(udp_gmii_rxd),//UDP的所有数据：包括UDP帧头和数据
    .udp_gmii_txv(udp_gmii_rxv),//帧头+数据的有效信号
    .udp_gmii_txc(MAC_TXC),

    .udp_gmii_rxc(MAC_RXC),
    .udp_gmii_rxd(MAC_RXD),//UDP的所有数据：包括UDP帧头和数据
    .udp_gmii_rxv(MAC_RXV)//帧头+数据的有效信号

);

endmodule