//对ARP和UDP进行选择
//根据ARP是否工作进行选择；自定义UDP发送的数据
module ctrl(
    input mac_txc,
    input rstn,

    input arp_rx_op,
    input arp_rx_done,

    input arp_tx_en,
    input [7:0] arp_mac_txd,
    input arp_mac_txv,

    input [7:0] udp_mac_txd,
    input udp_mac_txv,

    input udp_data_en,
    output reg [15:0] udp_tx_data,


    output [7:0] mac_txd,
    output mac_txv
);

reg flag;//0:ARP,1:UDP

assign mac_txd = (flag) ? udp_mac_txd : arp_mac_txd;
assign mac_txv = (flag) ? udp_mac_txv : arp_mac_txv;


always@(posedge mac_txc)begin
    if(~rstn)
        flag <= 0;
    else if(arp_rx_op == 0 && arp_rx_done)//接收到应答包，ARP工作完成
        flag <= 1;
    else if(arp_tx_en)//ARP正在工作
        flag <= 0;
    else
        flag <= flag;
end


//我人为产生的数据
always@(posedge mac_txc)begin
    if(~rstn)
        udp_tx_data <= 16'h5566;
    else if(udp_data_en)//UDP正在工作
        udp_tx_data <= udp_tx_data + 1;
    else
        udp_tx_data <= udp_tx_data;
end


endmodule