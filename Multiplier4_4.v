`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:29 01/26/2020 
// Design Name: 
// Module Name:    Multiplier4_4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Multiplier4_4(X,Y,Z);
	input[3:0]X,Y;
	output [7:0]Z;
	wire [3:0]w1,w2,w4,w6;
	wire [4:0]w3,w5;
	assign w1[3]=1'b0;
	and a1(Z[0],X[0],Y[0]),
		 a2(w1[0],X[1],Y[0]),
		 a3(w1[1],X[2],Y[0]),
		 a4(w1[2],X[3],Y[0]);
	and a5(w2[0],X[0],Y[1]),
		 a6(w2[1],X[1],Y[1]),
		 a7(w2[2],X[2],Y[1]),
		 a8(w2[3],X[3],Y[1]);
	Adder_4bit Add1(w1,w2,w3[3:0],w3[4]);
	assign Z[1]=w3[0];
		and a9(w4[0],X[0],Y[2]),
			 a10(w4[1],X[1],Y[2]),
			 a11(w4[2],X[2],Y[2]),
			 a12(w4[3],X[3],Y[2]);
	Adder_4bit Add2(w4,w3[4:1],w5[3:0],w5[4]);
	assign Z[2]=w5[0];
		and a13(w6[0],X[0],Y[3]),
			 a14(w6[1],X[1],Y[3]),
			 a15(w6[2],X[2],Y[3]),
			 a16(w6[3],X[3],Y[3]);
	Adder_4bit Add3(w6,w5[4:1],Z[6:3],Z[7]);

endmodule
