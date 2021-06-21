`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:16 01/26/2020 
// Design Name: 
// Module Name:    MUX_4_1 
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
module MUX_4_1(I,A,B,OUT);
	input [3:0]I;
	input A,B;
	output OUT;
	wire [3:0]w;
	wire [1:0]n;
	not n1(n[0],A),
		 n2(n[1],B);
	and a1(w[0],n[0],n[1],I[0]),
		 a2(w[1],n[0],B,I[1]),
		 a3(w[2],A,n[1],I[2]),
		 a4(w[3],A,B,I[3]);
	or (OUT,w[0],w[1],w[2],w[3]);


endmodule
