module caro ( clock, reset, button, Play1_en, Play2_en,
		led,LED1,LED2,LED3,LED4,LED5,LED6 );
		
	input clock;
	input reset, button;
	input [8:0] Play1_en, Play2_en;
	output [17:0] led;
	output[6:0] LED1,LED2,LED3,LED4,LED5,LED6;
	
	wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who ;
	wire ill;

	processor( clock, reset, button, Play1_en, Play2_en,
		pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who );	
	display( ill,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who, led,LED1,LED2,LED3,LED4,LED5,LED6 );

endmodule