module led_play(ill, who,LED1,LED2,LED3,LED4,LED5,LED6);

input ill;
input[1:0] who;
output reg [6:0]  LED1=0, LED2=0, LED3=0, LED4=0 ,LED5=0 ,LED6 = 0;

always @(ill or who)
begin
	if (who == 2'b00)
	begin
			 LED1 = 7'b0011000; // "P"     
			 LED2 = 7'b1110001; // "L" 
			 LED3 = 7'b0001000; // "A" 
			 LED4 = 7'b1000100; // "Y"
			 LED5 = 7'b0000001; // "0"
			 if (ill == 1'b0) LED6 = 7'b1001111; // "1" 
			  else LED6 = 7'b0010010; // "2" 
	end
	else 
	begin
			 LED1 = 7'b1100001; // "1/2 W"     
			 LED2 = 7'b1000011; // "1/2 W" 
			 LED3 = 7'b1001111; // "I" 
			 LED4 = 7'b0001001; // "N"
			 LED5 = 7'b0000001; // "0"
			 if (who == 2'b01) LED6 = 7'b1001111; // "1" 
			  else LED6 = 7'b0010010; // "2" 		  
	end
end	
endmodule