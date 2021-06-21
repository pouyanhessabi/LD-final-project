`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:26 01/26/2020 
// Design Name: 
// Module Name:    Adder_4bit 
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
module Adder_4bit(A,B,Sum,Co);
	input [3:0]A,B;
	output [3:0]Sum;
	output Co;
	wire [2:0]Cout;
	Full_Adder F0(A[0],B[0],Sum[0],1'b0,Cout[0]);
	Full_Adder F1(A[1],B[1],Sum[1],Cout[0],Cout[1]);
	Full_Adder F2(A[2],B[2],Sum[2],Cout[1],Cout[2]);
	Full_Adder F3(A[3],B[3],Sum[3],Cout[2],Co);
endmodule
