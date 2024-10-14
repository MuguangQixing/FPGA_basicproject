`timescale 1ns/1ps

module tb_iic();

reg sysclk;
reg rstn;

reg req;


wire busy;
wire done;


reg [7:0] wr_data;
wire wr_valid;

//wire [7:0] rd_data;
//wire rd_valid;


IIC_M #(
    .ADDR_DIVICE_WIDTH (8),
    .DATA_WIDTH (8),

    .SYSCLK_FREQ (50_000_000),
    .IIC_FREQ (400_000),
    .byte_number_reg(2) //单字节的情况

)
iic_inst(
    .sysclk(sysclk),
    .rstn(rstn),

    //---------user---------
    .iic_req(req),
    .iic_mode(1'b1),//模式：0写，1读

    .iic_addr_divice(7'b000_0011),//设备地址
    .iic_addr_reg(16'b0000_0000_0000_0001),//寄存器地址

    .iic_busy(busy),
    .iic_done(done),


    .iic_wr_data(wr_data),
    .iic_wr_valid(wr_valid),
    .iic_wr_length(5),//写数据长度

    .iic_rd_data(),
    .iic_rd_valid(),
    .iic_rd_length(1),//读数据长度

    //---------IIC----------
    .iic_scl(),
    .iic_sda()
);

initial begin
    sysclk = 0;
end

initial begin
    rstn = 0;
    #100
    rstn = 1;
end

always #10 sysclk = ~sysclk;

initial begin
    req = 0;
    #200
    req = 1;
    #20
    req = 0;
    // #200_000
    // req = 1;
    // #20
    // req = 0;
end

// always @(posedge sysclk) begin
//     if(~rstn)
//         wr_data <= 0;
//     else if(wr_valid)
//         wr_data <= wr_data + 1;
// end

endmodule
