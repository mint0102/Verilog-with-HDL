module clk (CLK, button, clock);

input  CLK;
input  button;
output reg clock = 1'b0;
integer i = 0;

always @(posedge CLK)
begin
	if( button == ~button )
	begin
		i = 0;
	end	
	i = i+1;
	if( i == 250000000)
	begin
		i = 0;
		clock = ~clock;
	end
end

endmodule
    
