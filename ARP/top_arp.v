module top_arp(
    input rstn,
    input key,

    input ETH_RXC,
    input ETH_RXV,

    input [3:0] ETH_RXD,//芯片提供的

    output ETH_TXC,
    output ETH_TXV,

    output [3:0] ETH_TXD,

    output ETH_rst 
    
);
assign ETH_rst = rstn;

wire arp_tx_en;
wire arp_tx_op;
 wire arp_rx_op;
 wire arp_rx_done;

arp_ctrl arp_ctrl_inst(
    .clk(ETH_TXC),
    .rstn(rstn),
    
    .key(key),

    .arp_tx_en(arp_tx_en),
    .arp_tx_op(arp_tx_op),
    
    .arp_rx_op(arp_rx_op),
    .arp_rx_done(arp_rx_done) 
);

 wire [7:0] arp_tx_data;
 wire arp_tx_valid;
 wire [47:0] pc_mac;
 wire [31:0] pc_ip;

 arp arp_inst(
    .rstn(rstn),
    //arp_tx
    .arp_tx_clk(ETH_TXC),

    .arp_tx_en(arp_tx_en),
    .arp_tx_op(arp_tx_op),
    
    .arp_tx_data(arp_tx_data),
    .arp_tx_valid(arp_tx_valid),

    //arp_rx
    .arp_rx_clk(ETH_RXC),
    .arp_rx_valid(ETH_RXV),
    .arp_rx_data(ETH_RXD),

    .pc_mac(pc_mac),
    .pc_ip(pc_ip),

    .arp_rx_op(arp_rx_op),
    .arp_rx_done(arp_rx_done) 
);

//rgmii
wire MAC_TXC;
wire MAC_RXC;
wire MAC_RXV;
wire [7:0] MAC_RXD;

top_rgmii top_rgmii_inst(
    .ETH_RXC(ETH_RXC),
    .ETH_RXV(ETH_RXV),
    .ETH_RXD(ETH_RXD),


    . ETH_TXC(ETH_TXC),
    . ETH_TXV(ETH_TXV),
    . ETH_TXD(ETH_TXD),

    //
    . MAC_TXC(MAC_TXC),          //mac层提供的时钟
    .MAC_TXV(arp_tx_valid),           //mac层提供的数据有效信号
    .MAC_TXD (arp_tx_data),     //mac层提供的数据

    . MAC_RXC(MAC_RXC),          //mac层提供的时钟
    . MAC_RXV(MAC_RXV),           //mac层提供的数据有效信号
    . MAC_RXD(MAC_RXD)      //mac层提供的数据
);


endmodule