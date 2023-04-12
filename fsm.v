module fsm(clock, reset, play1, play2, illegal,  no_space, win, button, player1_play, player2_play);

	  input clock;
     input reset, play1, play2, illegal, no_space, win, button;
     output reg player1_play, player2_play;
	  
parameter IDLE=2'b00;
parameter PLAYER1=2'b01;
parameter PLAYER2=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
always @(posedge clock || reset || button ) 
begin 
	 if(reset)
	  current_state <= IDLE;
	 else 
	  current_state <= next_state;
end 
always @(*)
	begin
	 case(current_state)
	 
		 IDLE:
		 begin 
			if(reset==1'b0 && play1 == 1'b1)
				next_state <= PLAYER1;
			else 
			next_state <= IDLE;
			player1_play <= 1'b0;
			player2_play <= 1'b0;
		 end 
		 
		 PLAYER1:
		 begin 
			player1_play <= 1'b1;
			player2_play <= 1'b0;
			if(illegal==1'b0)
				next_state <= PLAYER2;
			else 
				next_state <= IDLE;
		 end
		 
		 PLAYER2:
		 begin 
			player1_play <= 1'b0;
			if(play2==1'b0) 
			begin 
				next_state <= PLAYER2;
				player2_play <= 1'b0;
			end
			else if(win==1'b0 && no_space == 1'b0)
			begin 
				next_state <= IDLE;
				player2_play <= 1'b1;
			end 
			else if(no_space == 1 || win ==1'b1)
			begin 
				next_state <= GAME_DONE;
				player2_play <= 1'b1; 
			end  
		 end
		 
		 GAME_DONE:
		 begin 
			player1_play <=1'b0;
			player2_play <= 1'b0; 
			if(reset==1'b1) 
				next_state <= IDLE;
			else 
				next_state <= GAME_DONE;  
			end 
		 default: next_state <= IDLE; 
	 endcase
	end
endmodule