module mig_ctrl_wr(
input			ui_clk,
input			rst_n,

input               wr_req,
input [27:0]        wr_req_addr,
input [15:0]        wr_length,
input [127:0]       wr_data,
output              wr_busy,
output              wr_data_valid, 
output              wr_done, 

//-------------mig-------------
    output [27:0]	app_wr_addr,
    output [2:0]	app_wr_cmd,
    output			app_wr_en,
    input			app_rdy,
    output [127:0]	app_wdf_data,
    output			app_wdf_end,
    output			app_wdf_wren,
    input			app_wdf_rdy
);


reg wr_en;
always @(posedge ui_clk) begin
    if(~rst_n) begin
        wr_en <= 1'b0;
    end 
    else if(wr_done)begin
        wr_en <= 1'b0;
    end
    else if(wr_req)begin
        wr_en <= 1'b1;
    end
    
end

reg [27:0] wr_addr;
always @(posedge ui_clk) begin
    if(~rst_n)
        wr_addr <= 0;
    else if(wr_done)
        wr_addr <= 0;
    else if(wr_req && ~wr_en)
        wr_addr <= wr_req_addr;
    else if(wr_valid)
        wr_addr <= wr_addr + 8;//时钟比例4:1，burst length = 8
end

wire wr_valid;//每次成功写入一个数据，wr_valid置1

/*5个信号线拉高的时候写入数据*/
assign app_wr_en     = (app_rdy && app_wdf_rdy && wr_en) ;
assign app_wdf_end   = (app_rdy && app_wdf_rdy && wr_en) ;
assign app_wdf_wren  = (app_rdy && app_wdf_rdy && wr_en) ;

assign wr_data_valid = (app_rdy && app_wdf_rdy && wr_en) ;
assign wr_valid      = (app_rdy && app_wdf_rdy && wr_en) ;


reg   [15:0] cnt_wr;
always @(posedge ui_clk) begin
    if(~rst_n)
        cnt_wr <= 0;
    else if(wr_done)
        cnt_wr <= 0;
    else if(wr_valid)begin
        if(cnt_wr == wr_length - 1)
            cnt_wr <= 0;
        else
            cnt_wr <= cnt_wr + 1;
    end
       
end

assign wr_busy = wr_en;

assign wr_done = ((cnt_wr == wr_length - 1) && wr_valid) ;


assign app_wr_cmd = 3'b000;

assign app_wdf_data = wr_data;
assign app_wr_addr = wr_addr;


endmodule