module processor( clock1, reset, button, Play1_en, Play2_en,
		pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who,illegal );
		
	input clock1;
	input reset;
	input button;
	input [8:0] Play1_en, Play2_en; 
	output wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	output wire[1:0]who;
	output wire illegal;  
	
 wire win; // win signal 
 wire player1_play;  
 wire player2_play;  
 wire no_space; // no space signal
 wire temp_win;
 //clock sang 10s
 clk(clock1, button, clock);
 // position registers    
  position(  Play1_en[8:0], Play2_en[8:0], pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
 // quá thời gian
 button(clock, Play1_en, Play2_en, temp_win);
 // winner detector 
 end_game(temp_win,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win,who);
 // illegal move detector
  illegal(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, Player1_en, Player2_en, illegal);
 // no space detector 
 no_space(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, no_space); 
 //// bộ xử lý cuối cùng, cái máy trạng thái là đây chứ đâu 
 fsm(clock,reset,play1, play2, illegal, no_space,win, Play1_en, play2_en );  
endmodule 