module mig_ctrl_rd(
input			    ui_clk,
input			    rst_n,

input               rd_req,
input [27:0]        rd_req_addr,
input [15:0]        rd_length,
input [127:0]       rd_data,
output              rd_busy,
output              rd_data_valid, 
output              rd_done, 

//-------------mig-------------
    output reg [27:0]	app_rd_addr,
    output [2:0]	app_rd_cmd,
    output			app_rd_en,
    input			app_rdy,
    input [127:0]	app_rd_data,
    input			app_rd_data_end,
    input           app_rd_data_valid
);


reg rd_en;
always @(posedge ui_clk) begin
    if(~rst_n) begin
        rd_en <= 1'b0;
    end 
    else if(rd_done)begin
        rd_en <= 1'b0;
    end
    else if(rd_req)begin
        rd_en <= 1'b1;
    end
    
end


always @(posedge ui_clk) begin
    if(~rst_n)
        app_rd_addr <= 0;
    else if(rd_done)
        app_rd_addr <= 0;
    else if(app_rd_en && app_rdy)
        app_rd_addr <= app_rd_addr + 8;
end

assign app_rd_en  = (app_rdy && rd_en &&(cnt_rd <= rd_length - 1)) ;
assign app_rd_cmd = 3'b001;


reg   [15:0] cnt_rd;
always @(posedge ui_clk) begin
    if(~rst_n)
        cnt_rd <= 0;
    else if(rd_done)
        cnt_rd <= 0;
    else if(app_rd_data_valid)begin
        if(cnt_rd == rd_length )
            cnt_rd <= 0;
        else
            cnt_rd <= cnt_rd + 1;
    end
end

reg   [15:0] cnt_cmd;
always @(posedge ui_clk) begin
    if(~rst_n)
        cnt_cmd <= 0;
    else if(rd_done)
        cnt_cmd <= 0;
    else if(app_rd_en)begin
        if(cnt_rd == rd_length )
            cnt_cmd <= cnt_cmd;//注意这里的cnt_cmd没有清零,读操作全部完成后才清零
        else
            cnt_cmd <= cnt_cmd + 1;
    end
end

assign rd_data = app_rd_data;
assign rd_data_valid = app_rd_data_valid;
assign rd_busy = rd_en;
assign rd_done = ((cnt_rd == rd_length - 1) && app_rd_data_valid) ;


endmodule