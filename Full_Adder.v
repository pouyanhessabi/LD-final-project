`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:04:58 01/26/2020 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(A,B,Sum,Cin,Cout);
	input Cin,A,B;
	output Sum,Cout;
	wire w1,w2,w3,w4;
	xnor x1(w1,A,B),
		  x2(Sum,w1,Cin);
	or o1(w2,A,B),
		o2(Cout,w3,w4);
	and a1(w3,w2,Cin),
		 a2(w4,A,B);

endmodule
