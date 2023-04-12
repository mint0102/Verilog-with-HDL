module detect_3(input [1:0] pos0,pos1,pos2, output wire winner, output wire [1:0]who);
wire [1:0] temp0,temp1,temp2;
wire temp3;
assign temp0[1] = !(pos0[1]^pos1[1]);

//kiểm tra bit đầu của pos có bằng nhau hay ko no.0 and no.1
assign temp0[0] = !(pos0[0]^pos1[0]);
//kiểm tra bit hai của pos có bằng nhau hay ko no.0 and no.1
assign temp1[1] = !(pos2[1]^pos1[1]);
//kiểm tra bit đầu của pos có bằng nhau hay ko no.1 and no.2
assign temp1[0] = !(pos2[0]^pos1[0]);
//kiểm tra bit đầu của pos có bằng nhau hay ko no.1 and no.2
assign temp2[1] = temp0[1] & temp1[1]; 
//kiểm tra no.0 and no.1
assign temp2[0] = temp0[0] & temp1[0];
//kiểm tra no.1 and no.2
assign temp3 = pos0[1] | pos0[0]; 
//kiểm tra pos có phải là 00 hay ko, nếu 00 thì tem = 0
assign winner = temp3 & temp2[1] & temp2[0];
// and của khác 00 và no.0 = no.1 và no.1 = no.2
assign who[1] = winner & pos0[1];
assign who[0] = winner & pos0[0];

endmodule