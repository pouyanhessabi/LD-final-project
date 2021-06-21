`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:34:42 01/26/2020
// Design Name:   NervousShockDetector
// Module Name:   D:/project/verilog/FinalProject/ttest.v
// Project Name:  logicdesignproject-healthcaresystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NervousShockDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module ttest;

	// Inputs
	reg clock;
	reg inputdata;

	// Outputs
	wire [1:0] nervousAbnormality;

	// Instantiate the Unit Under Test (UUT)
	NervousShockDetector uut (
		.clock(clock), 
		.inputdata(inputdata), 
		.nervousAbnormality(nervousAbnormality)
	);
initial begin
		// Initialize Inputs
		clock = 0;
		inputdata = 0;

		// Wait 100 ns for global reset to finish
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;		
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 1;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;
		#20;
      clock = 1;
		inputdata= 0;			
		#20;
      clock = 0;
	end
endmodule
