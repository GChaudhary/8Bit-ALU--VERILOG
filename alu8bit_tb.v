`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//## GroupID- 65(15114063_15114027) - Sandeep Pal & Gautam Choudhary	
//## Date: November 1, 2016
//## <alu8bit_tb>.v - Testcases are written in this 'TestBench' file.
//
// Create Date:   16:44:42 11/01/2016
// Design Name:   alu8bit
// Module Name:   alu8bit_tb.v
// Project Name:  ALU_8Bit_CP1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu8bit_tb_v;

	// Inputs
	reg [17:0] Instruction;

	// Outputs
	wire signed [7:0] X;
	wire signed [7:0] Y;
	wire Overflow;
	wire Carry;

	// Temporary Registers
	reg signed [7:0] A, B;
	reg [1:0] OpCode;
	
	// Instantiate the Unit Under Test (UUT)
	alu8bit uut (
		.Instruction(Instruction), 
		.X(X), 
		.Y(Y), 
		.Overflow(Overflow), 
		.Carry(Carry)
	);
	
	
	//Concatinating to form complete INSTRUCTION
	always @ ( * ) begin
		Instruction = {OpCode, A, B};
	end

	initial begin
		// Inputs
		OpCode = 00;A = 33;B = 7;//ADD
		#100 OpCode = 00;A = -41;B = 15;//ADD
		#100 OpCode = 00;A = 119;B = 57;//ADD	(WITH OVERFLOW)
		
		#100 OpCode = 01;A = 3;B = 29;//MULTIPLY
		#100 OpCode = 01;A = 17;B = -11;//MULTIPLY
		
		#100 OpCode = 10;A = 23;B = 15;//AND
		
		#100 OpCode = 11;A = 9;B = 47;	//XOR

		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

