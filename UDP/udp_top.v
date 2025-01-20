module udp_top(
    input rstn,

    
    input udp_tx_en,
    input [15:0] udp_tx_data,

    input [47:0] des_mac,
    input [31:0] des_ip,

    output   udp_data_en, //数据有效信号



//--------------------RGMII-----------------------
    output [7:0] udp_gmii_txd,//UDP的所有数据：包括UDP帧头和数据
    output       udp_gmii_txv,//帧头+数据的有效信号
    input        udp_gmii_txc,

    input        udp_gmii_rxc,
    input  [7:0] udp_gmii_rxd,//UDP的所有数据：包括UDP帧头和数据
    input        udp_gmii_rxv//帧头+数据的有效信号

);

    wire [31:0] crc_data;
    wire  crc_en;
    wire  crc_init;

    wire  udp_tx_done;

    wire [7:0] udp_rx_data;
    wire       udp_rx_done;
    wire       udp_rx_en  ;



udp_tx udp_tx_inst(
    .gmii_txc       (udp_gmii_txc),
    .rstn           (rstn),
    
    .udp_tx_en      (udp_tx_en),
    .udp_tx_data    (udp_tx_data),

    .des_mac        (des_mac),
    .des_ip         (des_ip),

    .udp_gmii_txd   (udp_gmii_txd),//UDP的所有数据：包括UDP帧头和数据
    .udp_gmii_txv   (udp_gmii_txv),//帧头+数据的有效信号
    .udp_tx_done    (udp_tx_done),
    .udp_data_en    (udp_data_en), //数据有效信号

    .crc_data       (crc_data),
    .crc_en         (crc_en),
    .crc_init       (crc_init)
);



udp_rx udp_rx_inst(
    .gmii_rxc       (udp_gmii_rxc),
    .rstn           (rstn),
    
    .udp_gmii_rxd   (udp_gmii_rxd),//UDP的所有数据：包括UDP帧头和数据
    .udp_gmii_rxv   (udp_gmii_rxv),//帧头+数据的有效信号
    
    .udp_rx_data    (udp_rx_data),
    .udp_rx_done    (udp_rx_done),
    .udp_rx_en      (udp_rx_en)
);


crc crc_inst(
    .clk     (udp_gmii_txc),  //时钟信号
    .rst_n   (rstn),  //复位信号，低电平有效
    .data    (udp_gmii_txd),  //输入待校验8位数据
    .crc_en  (crc_en),  //crc使能，开始校验标志
    .crc_clr (crc_init),  //crc数据复位信号            
    .crc32   (crc_data)
); 

endmodule