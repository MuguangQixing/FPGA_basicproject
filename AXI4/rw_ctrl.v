module rw_ctrl#( 
    parameter integer M_AXI_ADDR_WIDTH = 32 ,
    parameter integer M_AXI_DATA_WIDTH = 128 
)(
    input wire M_AXI_ACLK ,
    input wire M_AXI_ARESETN ,

    output [M_AXI_ADDR_WIDTH-1 : 0] fdma_waddr ,
    output reg fdma_wareq ,
    output [15 : 0] fdma_wsize ,
    input fdma_wbusy ,
    output reg [M_AXI_DATA_WIDTH-1 :0] fdma_wdata ,
    input wire fdma_wvalid ,
    output wire fdma_wready ,
    input wire fdma_wend,
    input wire fdma_rend,
    output [M_AXI_ADDR_WIDTH-1 : 0] fdma_raddr ,
    output reg fdma_rareq ,
    output wire [15 : 0] fdma_rsize ,
    input fdma_rbusy ,
    input wire [M_AXI_DATA_WIDTH-1 :0] fdma_rdata ,
    input wire fdma_rvalid ,
    output wire fdma_rready 
);
assign fdma_wready = 1'b1;
assign fdma_rready = 1'b1;


localparam IDLE  = 4'b0001,
           WRITE = 4'b0010,
           WAIT  = 4'b0100,
           READ  = 4'b1000;

reg [3:0] state, next_state;


always @(posedge M_AXI_ACLK) begin
    if(~M_AXI_ARESETN) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

reg [31:0] cnt_delay;
always @(posedge M_AXI_ACLK) begin
    if(~M_AXI_ARESETN)
        cnt_delay <= 32'd0;
    else if(state == WAIT)
        cnt_delay <= cnt_delay + 1;
    else
        cnt_delay <= 32'd0;
end

always @(*) begin
    case(state)
        IDLE:
            next_state = WRITE;
        WRITE:begin
            if(fdma_wend)
                next_state = WAIT;
            else
                next_state = WRITE;
        end
        WAIT:begin
            if(cnt_delay == 1000)
                next_state = READ;
            else
                next_state = WAIT;
        end
        READ:begin
            if(fdma_rend)
                next_state = IDLE;
            else
                next_state = READ;
        end
        default : next_state = IDLE;
    endcase
end


//定义请求信号
always @(posedge M_AXI_ACLK) begin
    if(~M_AXI_ARESETN)
        fdma_wareq <= 0;
    else if(state == WRITE && ~fdma_wbusy)
            fdma_wareq <= 1;
    else
        fdma_wareq <= 0;
end

assign fdma_waddr = 32'h8000_0000;
assign fdma_raddr = 32'h8000_0000;

assign fdma_wsize = 500;
assign fdma_rsize = 500;


//定义读写数据
always @(posedge M_AXI_ACLK) begin
    if(~M_AXI_ARESETN)
        fdma_wdata <= 0;
    else if(fdma_wvalid)begin
        if(fdma_wdata == 500 - 1)
            fdma_wdata <= 0;
        else
            fdma_wdata <= fdma_wdata + 1;
    end
end


//定义请求信号
always @(posedge M_AXI_ACLK) begin
    if(~M_AXI_ARESETN)
        fdma_rareq <= 0;
    else if(state == READ && ~fdma_rbusy)
            fdma_rareq <= 1;
    else
        fdma_rareq <= 0;
end

endmodule