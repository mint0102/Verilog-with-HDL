module button (clock,play1,play2,win);
  input clock;
  input play1, play2;
  output reg[1:0] win ;
  always@(posedge clock)
	 begin
			  if(play1)
					win <= 2'b01;
			  else if(play2)
					win <= 2'b10;
	 end
endmodule