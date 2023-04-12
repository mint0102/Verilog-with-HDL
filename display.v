module display( ill,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who, led,LED1,LED2,LED3,LED4,LED5,LED6 );
input ill;
input [1:0]pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, who;
output[17:0] led;
output[6:0] LED1,LED2,LED3,LED4,LED5,LED6;


Led1(pos,led[0],led[9]);
Led1(pos,led[1],led[10]);
Led1(pos,led[2],led[11]);
Led1(pos,led[3],led[12]);
Led1(pos,led[4],led[13]);
Led1(pos,led[5],led[14]);
Led1(pos,led[6],led[15]);
Led1(pos,led[7],led[16]);
Led1(pos,led[8],led[17]);

led_play(ill, who,LED1,LED2,LED3,LED4,LED5,LED6);
endmodule