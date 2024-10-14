module top(
    input sysclk,
    input rstn,

    output scl,
    inout sda ,

    input [1:0] key
);

wire done;
wire [7:0] rd_data;
wire rd_valid;


wire req;
assign req = key[0] | key[1];


reg mode;
always@(posedge sysclk)begin
    if(!rstn)
        mode <= 1'b0;
    else if(key[0])
        mode <= 1'b0;
    else if(key[1])
        mode<=1'b1;
end

IIC_M#(
    .ADDR_DIVICE_WIDTH (8),
    .DATA_WIDTH (8),

    .SYSCLK_FREQ (50_000_000),
    .IIC_FREQ (400_000),
    .byte_number_reg (1)
)
iic_inst (
    .sysclk(sysclk),
    .rstn(rstn),

    //---------user---------
    .iic_req        (req),
    .iic_mode       (mode),//模式：0写，1读

    .iic_addr_divice(7'b110_1000),//设备地址
    .iic_addr_reg   (8'h03),//寄存器地址

    .iic_busy       (),
    .iic_done       (done),


    .iic_wr_data    (8'b0000_0001),
    .iic_wr_valid   (),
    .iic_wr_length  (1'b1),//写数据长度

    .iic_rd_data    (rd_data),
    .iic_rd_valid   (rd_valid),
    .iic_rd_length  (1'b1),//读数据长度

    //---------IIC----------
    .iic_scl        (scl),
    .iic_sda        (sda)
);

endmodule




`timescale 1ns/1ns

module tb_top();
reg clk;
reg rstn;
reg [1:0] key;

initial begin
    clk = 1'b0;
    rstn = 1'b0;
    #200
    rstn = 1'b1;
end

always #10 clk = ~clk;

initial begin
    #300
    key[0] = 0;
    key[1] = 0;
    #500_000 //写模式
    key[0] = 1;
    #500_000
    key[1] = 0;
    key[0] = 0;
    #500_000
    key[1] = 1;//读模式
end

wire sda;
wire scl;

top top_inst(
    .sysclk(clk),
    .rstn(rstn),

    .scl(scl),
    .sda(sda) ,

    .key(key)
);


endmodule