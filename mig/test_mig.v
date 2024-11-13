`timescale 1ns/1ps

module test_mig(
input ui_clk,
input ui_rstn,

output reg           wr_req,
output [27:0]        wr_req_addr,
output [15:0]        wr_length,
output reg [127:0]   wr_data,
input                wr_busy,
input                wr_data_valid, 
input                wr_done, 
//---------rd------------
output reg           rd_req,
output [27:0]        rd_req_addr,
output [15:0]        rd_length,
input  [127:0]       rd_data,
input                rd_busy,
input                rd_data_valid, 
input                rd_done
);  

//---------状态机----------
localparam [2:0] IDLE = 4'b0001, WR = 4'b0010, DELAY = 4'b0100, RD = 4'b1000;

reg [2:0] state, next_state;

always @(posedge ui_clk or negedge ui_rstn) begin
    if(~ui_rstn) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

reg [31:0] cnt_delay;
always @(posedge ui_clk) begin
    if(~ui_rstn)
        cnt_delay <= 0;
    else if(state == DELAY)begin
        if(cnt_delay == 100)
            cnt_delay <= 0;
        else
            cnt_delay <= cnt_delay + 1;
    end
    else
        cnt_delay <= 0;
end

always @(*) begin
    case(state)
        IDLE: begin
            next_state = WR;
        end
        WR: begin
            if(wr_done)
                next_state = DELAY;
            else
                next_state = WR;
        end
        DELAY: begin
            if(cnt_delay == 100)
                next_state = RD;
            else
                next_state = DELAY;
        end
        RD: begin
            if(rd_done)
                next_state = IDLE;
            else
                next_state = RD;
        end
        default: begin
            next_state = IDLE;
        end
    endcase
end


always @(posedge ui_clk) begin
    if(~ui_rstn)
        wr_req <= 0;
    else if(state == WR)begin
        if(wr_busy)
            wr_req <= 0;
        else
            wr_req <= 1;
    end
    else
        wr_req <= 0;
end

assign wr_req_addr = 28'd0;
assign rd_req_addr = 28'd0;
assign wr_length = 256;
assign rd_length = 256;

always @(posedge ui_clk) begin
    if(~ui_rstn)
        wr_data <= 128'd0;
    else if(state == WR)begin
        if(wr_data_valid)
            wr_data <= wr_data + 1;
    end
    else
        wr_data <= 128'd0;
end

always @(posedge ui_clk) begin
    if(~ui_rstn)
        rd_req <= 0;
    else if(state == RD)begin
        if(rd_busy)
            rd_req <= 0;
        else
            rd_req <= 1;
    end
    else
        rd_req <= 0;
end


endmodule