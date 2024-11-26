module arp(
    input rstn,
    //arp_tx
    input arp_tx_clk,

    input arp_tx_en,
    input arp_tx_op,
    
    output [7:0] arp_tx_data,
    output arp_tx_valid,

    //arp_rx
    input arp_rx_clk,
    input arp_rx_valid,
    input [7:0] arp_rx_data,

    output [47:0] pc_mac,
    output [31:0] pc_ip,

    output arp_rx_op,
    output arp_rx_done 
);

//arp_tx
wire crc_en;
wire crc_init;
wire arp_tx_done;

arp_tx arp_tx_inst(
    .arp_tx_clk     (arp_tx_clk),
    .rstn           (rstn),
    
    .arp_tx_en      (arp_tx_en),
    .arp_tx_op      (arp_tx_op), // 数据包类型 0: 应答包, 1: 请求包
    .des_mac        (des_mac),//接收到请求包(源mac)，发送应答包(目标mac)
    .des_ip         (des_ip),//接收到请求包(源ip)，发送应答包(目标ip)

    .arp_tx_data    (arp_tx_data),//数据发送给RGMII接口
    .arp_tx_valid   (arp_tx_valid),    //数据有效信号
    .arp_tx_done    (arp_tx_done),


    .crc_data       (crc_data),
    .crc_en         (crc_en),
    .crc_init       (crc_init)
);


arp_rx arp_rx_inst(
    .arp_rx_clk     (arp_rx_clk),
    .rstn           (rstn),
    
    .arp_rx_valid   (arp_rx_valid),
    .arp_rx_data    (arp_rx_data),
    
    .pc_mac         (pc_mac),
    .pc_ip          (pc_ip),
    .arp_rx_op      (arp_rx_op),

    .arp_rx_done    (arp_rx_done) 
);

wire [31:0]  crc32;

crc crc_inst(
    .clk     (arp_tx_clk),  //时钟信号
    .rst_n   (rstn),  //复位信号，低电平有效
    .data    (arp_tx_data),  //输入待校验8位数据
    .crc_en  (crc_en),  //crc使能，开始校验标志
    .crc_clr (crc_init),  //crc数据复位信号            
    .crc32   (crc32)
);




endmodule