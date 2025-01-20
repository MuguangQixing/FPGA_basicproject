module arp_ctrl(
    input clk,
    input rstn,
    
    input key,//按键按下发送协议

    (* MARK_DEBUG="true" *) output reg arp_tx_en,
    (* MARK_DEBUG="true" *) output reg arp_tx_op,
    
    input arp_rx_op,
    input arp_rx_done 
);

always @(posedge clk) begin
    if(~rstn)begin
        arp_tx_en <= 0;
        arp_tx_op <= 0;
    end
    else if(key)begin//发送请求包
            arp_tx_en <= 1;
            arp_tx_op <= 1;
    end
    else if(arp_rx_done && arp_rx_op == 1)begin//接收到请求包，发送应答包
            arp_tx_en <= 1;
            arp_tx_op <= 0;
    end
    else if(arp_rx_done && arp_rx_op == 0)begin//不需要发送包
            arp_tx_en <= 0;
            arp_tx_op <= 0;
    end
    else begin
        arp_tx_en <= 0;
        arp_tx_op <= arp_tx_op;
    end
end

endmodule