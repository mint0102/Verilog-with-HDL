module position(ill,Play1_en, Play2_en, pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);

		input ill; // ô đó còn trống ko
      input [8:0] Play1_en; // Player 1 enable signals 
      input [8:0] Play2_en; // Player 2 enable signals 
      output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;// positions stored
		
		
 // Position 1
 always@(*)
	begin
		if(ill==1)
			 pos1 <= pos1;// keep previous position
		else if(Play1_en[0]==1'b1)
			 pos1 <= 2'b01; // play1 
		else if (Play2_en[0]==1'b1)
			 pos1 <= 2'b10;// play2 
		else 
		    pos1 <= pos1;// keep previous position
	end

 // Position 2 
   always@(*)
	begin
		if(ill==1)
			 pos2 <= pos2;// keep previous position
		else if(Play1_en[1]==1'b1)
			 pos2 <= 2'b01; // play1 
		else if (Play2_en[1]==1'b1)
			 pos2 <= 2'b10;// play2 
		else 
			 pos2 <= pos2;// keep previous position
	end 

// Position 3 
   always@(*)
		begin
		if(ill==1)
			 pos3 <= pos3;// keep previous position
		else if(Play1_en[2]==1'b1)
			 pos3 <= 2'b01; // play1 
		else if (Play2_en[2]==1'b1)
			 pos3 <= 2'b10;// play2 
		else 
		    pos3 <= pos1;// keep previous position
	end
 // Position 4 
    always@(*)
		begin
		if(ill==1)
			 pos4 <= pos4;// keep previous position
		else if(Play1_en[3]==1'b1)
			 pos4 <= 2'b01; // play1 
		else if (Play2_en[3]==1'b1)
			 pos4 <= 2'b10;// play2 
		else 
		    pos4 <= pos4;// keep previous position
	end
 // Position 5 
     always@(*)
		begin
		if(ill==1)
			 pos5 <= pos5;// keep previous position
		else if(Play1_en[4]==1'b1)
			 pos5 <= 2'b01; // play1 
		else if (Play2_en[4]==1'b1)
			 pos5 <= 2'b10;// play2 
		else 
		    pos5 <= pos5;// keep previous position
	end
 // Position 6 
    always@(*)
		begin
		if(ill==1)
			 pos6 <= pos6;// keep previous position
		else if(Play1_en[5]==1'b1)
			 pos6 <= 2'b01; // play1 
		else if (Play2_en[5]==1'b1)
			 pos6 <= 2'b10;// play2 
		else 
		    pos6 <= pos6;// keep previous position
	end
// Position 7 
    always@(*)
		begin
		if(ill==1)
			 pos7 <= pos7;// keep previous position
		else if(Play1_en[6]==1'b1)
			 pos7 <= 2'b01; // play1 
		else if (Play2_en[6]==1'b1)
			 pos7 <= 2'b10;// play2 
		else 
		    pos7 <= pos8;// keep previous position
	end
 // Position 8 
    always@(*)
		begin
		if(ill==1)
			 pos8 <= pos8;// keep previous position
		else if(Play1_en[7]==1'b1)
			 pos8 <= 2'b01; // play1 
		else if (Play2_en[7]==1'b1)
			 pos8 <= 2'b10;// play2 
		else 
		    pos8 <= pos8;// keep previous position
	end
// Position 9 
    always@(*)
		begin
		if(ill==1)
			 pos9 <= pos9;// keep previous position
		else if(Play1_en[8]==1'b1)
			 pos9 <= 2'b01; // play1 
		else if (Play2_en[8]==1'b1)
			 pos9 <= 2'b10;// play2 
		else 
		    pos9 <= pos9;// keep previous position
	end
endmodule 