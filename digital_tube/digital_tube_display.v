module u_74HC595#(
parameter delay = 10,   //分频延迟系数
parameter tx_size = 16  //数据位宽
)(
    //-------------用户端--------------//
    input sysclk,
    input rstn,


    input req_tx,
    input [tx_size-1:0] data_tx,

    output reg tx_done, //发送完成信号

    //-------------74HC595------------//
    output reg sck,     //串行时钟
    output latch,    //锁存时钟
    output data     //串行数据
);





/*-------------------------使能信号定义----------------------------*/
reg tx_en;
wire tx_end;

assign tx_end = (cnt_bit == tx_size - 1 && div_cnt == delay - 1);

always @(posedge sysclk) begin
    if(~rstn)
        tx_en <= 0;
    else if(req_tx)
        tx_en <= 1'b1;
    else if(tx_end)
         tx_en <= 0;

end



/*-----------------------------分频-----------------------------*/

/*由于系统市长是50MHz,但是74HC595芯片的sck要求不超过5MHz,因此进行分频处理：将sysclk分频为原来的十分之一*/

/*分频计数器*/
reg [15:0] div_cnt;
always@(posedge sysclk)begin
    if(~rstn)
        div_cnt <= 0;
    else if(tx_en)begin
        if(div_cnt == delay - 1)
            div_cnt <= 0;
        else
            div_cnt <= div_cnt + 1;
    end
    else
        div_cnt <= 0;
end



/*分频时钟*/
always@(posedge sysclk)begin
    if(~rstn)
        sck <= 0;
    else if(tx_en)begin
         if(div_cnt == delay / 2 - 1)//上升沿定义
            sck <= 1;
         else if(div_cnt == delay - 1)//下降沿定义
            sck <= 0;
         else
            sck <= sck;
    end
    else 
        sck <= 0;
end



/*-------------------------发送数据--------------------------------*/


/*数据寄存器*/
reg [tx_size - 1 : 0] data_tx_reg;

always @(posedge sysclk) begin
    if(~rstn)
        data_tx_reg <= 0;
    else if(req_tx)//请求信号拉高的时候存储到寄存器中

        data_tx_reg <= data_tx;

    else if(tx_en)begin//使能信号拉高的时候进行信号更新

        if(div_cnt == delay  - 1) //下降沿更新数据
            data_tx_reg <= {data_tx_reg[tx_size - 2:0] , data_tx_reg[tx_size - 1]}; 
    end
end




assign data = data_tx_reg[tx_size - 1] ;



/*----------------------发送完成信号-----------------------------*/

/*每个周期发送1bit数据，一共需要16个周期用来发送16bit数据*/
/*数据位计数器：用于保证所有数据位全部传输完*/

reg [15:0] cnt_bit;

always@(posedge sysclk)begin
    if(~rstn)
        cnt_bit <= 0;
    else if(div_cnt == delay  - 1)begin//当下降沿更新数据时
        if(cnt_bit == tx_size - 1)
            cnt_bit <= 0;
        else 
            cnt_bit <= cnt_bit + 1;
    end  
    else 
            cnt_bit <= cnt_bit;
end


/*发送完成信号*/
always@(posedge sysclk)begin
    if(~rstn)
        tx_done <= 0;
    else if(cnt_bit == tx_size - 1 && div_cnt == delay - 1)
        tx_done <= 1;
    else
        tx_done <= 0;
end



/*----------------------------锁存信号-----------------------------*/
assign latch = tx_done;


endmodule


`timescale 1ns / 1ps
module tb_74HC595();

reg sysclk;
reg rst_n;
reg req_tx; 
reg [15:0] tx_data=16'b0000_1111_0110_0101;//0f65   | 会变成：0001_1110_1100_1010   1eca   | 0011_1101_1001_0100  3d94 ... |1000_0111_1011_0010 87b2
wire tx_done;
wire sck;
wire latch;
wire data;

u_74HC595 u_74HC595_inst(

.sysclk (sysclk ),
.rstn (rst_n ),
.req_tx (req_tx ), 
.data_tx(tx_data), 
.tx_done(tx_done), 

.sck (sck ), 
.latch (latch ), 
.data (data ) 
);


initial begin
    sysclk = 0;
end


always #10 sysclk = ~ sysclk;

initial begin
    rst_n=1'b0;
    #100 
    rst_n=1'b1;
end

initial begin
    req_tx=1'b0;
    #300 
    req_tx=1'b1;
    #20 //拉高一个周期
    req_tx=1'b0;
end

endmodule