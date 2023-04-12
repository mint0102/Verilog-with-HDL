module Led1 (pos, led1, led2);
input [1:0] pos;
output reg led1 =1'b1, led2=1'b1;

always@(*)
	begin
		case (pos)
		 2'b01: led1 <= 1'b0;
		 2'b10: led2 <= 1'b0;
		default begin
		led1 <= 1'b1; 
		led2 <= 1'b1;
		end
		endcase
	end

endmodule