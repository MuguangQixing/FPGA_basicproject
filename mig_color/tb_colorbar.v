`timescale 1ns / 1ps
module tb();
	
	
reg		sysclk	;	
reg		rst_n	;	
wire	[13:0]		ddr3_addr   ;	
wire	[2:0]		ddr3_ba     ;
wire				ddr3_cas_n  ;
wire	[0:0]		ddr3_ck_n   ;
wire	[0:0]		ddr3_ck_p   ;
wire	[0:0]		ddr3_cke    ;
wire				ddr3_ras_n  ;
wire				ddr3_reset_n;
wire				ddr3_we_n   ;
wire	[15:0]		ddr3_dq     ;
wire	[1:0]		ddr3_dqs_n  ;
wire	[1:0]		ddr3_dqs_p  ;
wire	[0:0]		ddr3_cs_n   ;
wire	[1:0]		ddr3_dm     ;	
wire	[0:0]		ddr3_odt    ;		
always #10 sysclk = ~sysclk;
initial begin
	sysclk = 0;
	rst_n = 0;
	#100
	rst_n = 1;
end 

top_mig top_mig_u1(
 .sysclk	(sysclk	),
 .rst_n	(rst_n	),

 .	ddr3_addr		(ddr3_addr	),
 .	ddr3_ba			(ddr3_ba		),
 .	ddr3_cas_n		(ddr3_cas_n	),
 .	ddr3_ck_n		(ddr3_ck_n	),
 .	ddr3_ck_p		(ddr3_ck_p	),
 .	ddr3_cke		(ddr3_cke	),
 .	ddr3_ras_n		(ddr3_ras_n	),
 .	ddr3_reset_n	(ddr3_reset_n),
 .	ddr3_we_n		(ddr3_we_n	),
 .	ddr3_dq			(ddr3_dq		),
 .	ddr3_dqs_n		(ddr3_dqs_n	),
 .	ddr3_dqs_p		(ddr3_dqs_p	),
 .	ddr3_cs_n		(ddr3_cs_n	),
 .	ddr3_dm			(ddr3_dm		),
 .	ddr3_odt		(ddr3_odt	)
);

ddr3_model  ddr3_model_u1(

    .rst_n		(ddr3_reset_n),
    .ck			(ddr3_ck_p),
    .ck_n		(ddr3_ck_n),
    .cke		(ddr3_cke),
    .cs_n		(ddr3_cs_n),
    .ras_n		(ddr3_ras_n),
    .cas_n		(ddr3_cas_n),
    .we_n		(ddr3_we_n),
    .dm_tdqs	(ddr3_dm),
    .ba			(ddr3_ba),
    .addr		(ddr3_addr),
    .dq			(ddr3_dq),
    .dqs		(ddr3_dqs_p),
    .dqs_n		(ddr3_dqs_n),
    .tdqs_n		(),
    .odt        (ddr3_odt)
);

endmodule
