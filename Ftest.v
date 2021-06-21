`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:51:09 01/26/2020
// Design Name:   LogicHealthcareSystem
// Module Name:   D:/project/verilog/FinalProject/Ftest.v
// Project Name:  logicdesignproject-healthcaresystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LogicHealthcareSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ftest;

	// Inputs
	reg clock;
	reg request;
	reg confirm;
	reg inputdata;
	reg [5:0] pressureData;
	reg [3:0] bloodPH;
	reg [2:0] bloodType;
	reg [7:0] fdSensorValue;
	reg [7:0] fdFactoryValue;
	reg [7:0] factoryBaseTemp;
	reg [3:0] factoryTempCoef;
	reg [3:0] tempSensorValue;
	reg [7:0] key;
	reg [7:0] data;

	// Outputs
	wire [2:0] abnormaliryWarning;
	wire [5:0] abnormaliryVector;
	wire [6:0] dataP;
	wire [6:0] dataQ;
	wire presureAbnormality;
	wire bloodAbnormality;
	wire fallDetected;
	wire temperatureAbnormality;
	wire [1:0] nervousAbnormality;

	// Instantiate the Unit Under Test (UUT)
	LogicHealthcareSystem uut (
		.clock(clock), 
		.request(request), 
		.confirm(confirm), 
		.inputdata(inputdata), 
		.pressureData(pressureData), 
		.bloodPH(bloodPH), 
		.bloodType(bloodType), 
		.fdSensorValue(fdSensorValue), 
		.fdFactoryValue(fdFactoryValue), 
		.factoryBaseTemp(factoryBaseTemp), 
		.factoryTempCoef(factoryTempCoef), 
		.tempSensorValue(tempSensorValue), 
		.key(key), 
		.data(data), 
		.abnormaliryWarning(abnormaliryWarning), 
		.abnormaliryVector(abnormaliryVector), 
		.dataP(dataP), 
		.dataQ(dataQ), 
		.presureAbnormality(presureAbnormality), 
		.bloodAbnormality(bloodAbnormality), 
		.fallDetected(fallDetected), 
		.temperatureAbnormality(temperatureAbnormality), 
		.nervousAbnormality(nervousAbnormality)
	);

initial begin
		// Initialize Inputs
		clock = 0;
		request = 0;
		confirm = 0;
		inputdata = 0;
		pressureData = 6'b000001; // presureAbnormality = 0
		bloodPH = 4'b0000; 	bloodType = 3'b000; // bloodAbnormality = 1
		fdSensorValue = 10; fdFactoryValue = 10; // fallDetected = 1 
		factoryBaseTemp = 30; factoryTempCoef = 4; tempSensorValue = 2; // temperatureAbnormality = 1
		key = 8'b11100000;
		data  =8'b00001111;
		#20;
		inputdata = 1;
      confirm = 0;
		request= 1;
		clock = 1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		confirm = 1;
		request= 1;
		clock = 1;
		#20;
		clock=0;
		#20;
		inputdata = 1;
		confirm = 1;
		request= 1;
		clock = 1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 1;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 1;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 1;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 1;
		clock=1;
		#20;
		clock=0;
		#20;
		inputdata = 0;
		clock=1;
		#20;
		clock=0;
		#20;
	end      
      
endmodule

