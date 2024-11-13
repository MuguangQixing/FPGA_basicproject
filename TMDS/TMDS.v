module TMDS(
    input   clk   ,             
	input   rstn  ,            
	input   [7:0]  i_data   ,             
	input   de     ,             //像素数据有效信号
	input   ctrl_1 ,             //控制信号1
    input   ctrl_2 ,             //控制信号2
    output  reg  [9:0] o_data                      
    );
 	
    reg   [2:0]  num_1_data;            
    always@(posedge clk)begin
        num_1_data <= i_data[7] + i_data[6] + i_data[5] + i_data[4] + i_data[3] + i_data[2] +  i_data[1] + i_data[0];
	end

	reg   [7:0]  data_temp1; 	     
    always@(posedge clk)begin
	    data_temp1 <= i_data;
	end




	wire    decision1;  
    wire    [8:0]        q_m;	
	assign  decision1 = (num_1_data > 3'd4) | ((num_1_data == 3'd4) & (data_temp1[0] == 0));    

	assign  q_m[0] = data_temp1 [0];	
	assign  q_m[1] = decision1 ? (q_m[0] ^ (~ data_temp1 [1])) : (q_m[0] ^ data_temp1[1]);
	assign  q_m[2] = decision1 ? (q_m[1] ^ (~ data_temp1 [2])) : (q_m[1] ^ data_temp1[2]);
	assign  q_m[3] = decision1 ? (q_m[2] ^ (~ data_temp1 [3])) : (q_m[2] ^ data_temp1[3]);
	assign  q_m[4] = decision1 ? (q_m[3] ^ (~ data_temp1 [4])) : (q_m[3] ^ data_temp1[4]);
	assign  q_m[5] = decision1 ? (q_m[4] ^ (~ data_temp1 [5])) : (q_m[4] ^ data_temp1[5]);
	assign  q_m[6] = decision1 ? (q_m[5] ^ (~ data_temp1 [6])) : (q_m[5] ^ data_temp1[6]);
	assign  q_m[7] = decision1 ? (q_m[6] ^ (~ data_temp1 [7])) : (q_m[6] ^ data_temp1[7]);
	assign  q_m[8] = decision1 ? 1'b0 : 1'b1;	



    reg  [3:0] num_1_q_m;
    reg  [3:0] num_0_q_m;    
	always@(posedge clk)begin
       num_1_q_m <= q_m[7] + q_m[6] + q_m[5] + q_m[4] + q_m[3] + q_m[2] + q_m[1] + q_m[0];
       num_0_q_m <= 4'd8 - (q_m[7] + q_m[6] + q_m[5] + q_m[4] + q_m[3] + q_m[2] + q_m[1] + q_m[0]);
	end



/*注意时序*/
    reg  de_temp1;
	reg  de_temp2;
	reg  ctrl_1_temp1;
	reg  ctrl_1_temp2;   	
	reg  ctrl_2_temp1;
	reg  ctrl_2_temp2;
    reg  [8:0] q_m_temp;	

    always@(posedge clk)begin
	   de_temp1 <= de;
	   de_temp2 <= de_temp1;
	   
	   ctrl_1_temp1 <= ctrl_1;
	   ctrl_1_temp2 <= ctrl_1_temp1;
	   
	   ctrl_2_temp1 <= ctrl_2;
	   ctrl_2_temp2 <= ctrl_2_temp1;
	   
	   q_m_temp <= q_m;
	end




//    1、cnt=0时表示上次传输无数据流极性差异
//    2、cnt>0,即cnt[4]=0表示上次数据流中传输了更多的1
//    3、cnt<0,即cnt[4]=1表示上次数据流中传输了更多的0	
    wire     decision2;
    wire     decision3;
    reg [4:0] cnt;
// cnt=0时表示上次传输无数据流极性差异
	assign    decision2  = (cnt == 5'd0) | (num_1_q_m == num_0_q_m);
    assign    decision3  = ((~cnt[4]) & (num_1_q_m > num_0_q_m)) | (cnt[4] & (num_1_q_m < num_0_q_m));



	always @(posedge clk) begin
		if(~rstn)
		    cnt <= 0;
	   else begin
	        if(de_temp2)begin//DE == HIGH
				if(decision2)begin
				  	if(q_m_temp[8])
						cnt <= cnt + num_1_q_m - num_0_q_m;
					else
						cnt <= cnt + num_0_q_m - num_1_q_m;
				end    
				else begin 
			        if(decision3)
			            cnt <= cnt + 2*q_m_temp[8] + num_0_q_m - num_1_q_m;
					else
						cnt <= cnt - 2*(~q_m_temp[8]) + num_1_q_m - num_0_q_m;
			   end
			end
	    	else
	    		cnt <= 0;		   
		end
	end


	localparam      CTRLTOKEN0      =   10'b11_0101_0100;
    localparam      CTRLTOKEN1      =   10'b00_1010_1011;
    localparam      CTRLTOKEN2      =   10'b01_0101_0100;
    localparam      CTRLTOKEN3      =   10'b10_1010_1011;	


	always@(posedge clk)begin
       if(~rstn)
		    o_data <= 10'd0;
	   else begin
	        if(de_temp2)begin//DE == HIGH
			   if(decision2)begin
				  		o_data[9] <= ~q_m_temp[8];
				  		o_data[8] <= q_m_temp[8];
				  		o_data[7:0] <= q_m_temp[8] ? q_m_temp[7:0] : (~q_m_temp[7:0]);
				  	end
			   else begin 
			        if(decision3)begin
				        o_data[9] <= 1'b1;
			            o_data[8] <= q_m_temp[8];
						o_data[7:0] <= ~q_m_temp[7:0];
			        end
					else begin
					       o_data[9] <= 1'b0;
						   o_data[8] <= q_m_temp[8];
					       o_data[7:0] <= q_m_temp[7:0];
					end
			   end
			end
	    	else begin
			    case({ctrl_2_temp2,ctrl_1_temp2})
			            2'b00 : o_data <= CTRLTOKEN0;
			            2'b01 : o_data <= CTRLTOKEN1;
			            2'b10 : o_data <= CTRLTOKEN2;	 		   
			            2'b11 : o_data <= CTRLTOKEN3;			   
			    endcase
			end				   
		end
	end	

endmodule








































`timescale 1 ns/1 ns
module test();
    parameter	CYCLE	    =   10  ;//系统时钟周期，单位ns，默认20ns；
    parameter	RST_TIME    =   10  ;//系统复位持续时间，默认10个系统时钟周期；

    reg			                clk ;//系统时钟，默认50MHz；
    reg			                rstn ;//系统复位，默认高电平有效；
    reg     [7 : 0]             din ;
    reg                         c0  ;
    reg                         c1  ;
    reg                         de  ;

    wire    [9 : 0]             q_out;

 TMDS  u_dvi_tmds (
		.clk   (clk) ,             //像素时钟
		.rstn         (rstn),             //复位信号，高有效
		.i_data       (din) ,             //输入8位数据
		.de          (de),             //像素数据有效信号
		.ctrl_1      (c0)  ,             //控制信号1
    	.ctrl_2      (c1)  ,             //控制信号2
    	.o_data       (q_out)               //输出10位数	
    );

    //生成周期为CYCLE数值的系统时钟;
    initial begin
        clk = 0;
        forever #(CYCLE/2) clk = ~clk;
    end

    //生成复位信号；
    initial begin
        rstn = 0;din = 0;
        c0 = 0; c1 = 0;de = 0;
        #2;
        rstn = 0;//开始时复位10个时钟；
        #(RST_TIME*CYCLE);
        rstn = 1;
        repeat(10) @(posedge clk);//延迟10个时钟；
        repeat(15)begin//发送数据之前，生产15个随机的控制信号，看是否正确。
            {c1,c0} <= {$random} % 4;
            @(posedge clk);
        end
        de = 1'b1;//de信号拉高；
        repeat(256)begin//发送256个随机8位数据进行编码，模拟一行像素数据；
            din = {$random} % 256;
            @(posedge clk);
        end
        de = 1'b0;
        repeat(20)begin//数据发送完成之后，生产20个随机的控制信号，看是否正确。
            {c1,c0} <= {$random} % 4;
            @(posedge clk);
        end
        repeat(4) @(posedge clk);
        $stop;//停止仿真；
    end

endmodule