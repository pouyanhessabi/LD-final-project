`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:20 01/26/2020 
// Design Name: 
// Module Name:    Comparator3bit 
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
module Comparator3bit(A,B,G,E,L,L_T,G_T,E_Q);
input [2:0]A ; 
	input [2:0]B;
	input G , E , L;
	output L_T,G_T,E_Q;
	wire [2:0]gw;
	wire [2:0]ew;
	wire [2:0]aP;
	wire [3:0]w;
	wire [2:0]bP;
	wire lt,gt,eq,eqP;
	not
		n1(aP[0],A[0]),
		n2(aP[1],A[1]),
		n3(aP[2],A[2]),
		n4(bP[0],B[0]),
		n5(bP[1],B[1]),
		n6(bP[2],B[2]),
		n7(eqP,eq);
	xnor
		x1(ew[0],A[0],B[0]),
		x2(ew[1],A[1],B[1]),
		x3(ew[2],A[2],B[2]);
	and
		g1(eq,ew[0],ew[1],ew[2]),
		g2(gw[0],A[0],bP[0],ew[1],ew[2]),
		g3(gw[1],A[1],bP[1],ew[2]),
		g4(gw[2],A[2],bP[2]);
	or  g5(gt,gw[0],gw[1],gw[2]);
	nor g8(lt,gt,eq);
	and
		g6(w[0],eq,G),
		g7(w[1],eqP,gt),
		g9(E_Q,E,eq),
		g11(w[2],lt,eqP),
		g12(w[3],eq,L);
	or
		g10(G_T,w[0],w[1]),
		g13(L_T,w[2],w[3]);
		


endmodule
