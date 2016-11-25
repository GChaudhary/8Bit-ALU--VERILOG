`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//## GroupID- 65(15114063_15114027) - Sandeep Pal & Gautam Choudhary	
//## Date: November 1, 2016
//## <xor_module_8bit>.v - XOR gate is implemented in this file. 
// 
// Create Date:    23:35:21 10/27/2016 
// Design Name: 
// Module Name:    xor_module_8bit 
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
module xor_module_8bit(A, B, Y);
	// Defining the inputs/outputs
    input signed [07:0] A;
    input signed [07:0] B;
    output signed [07:0] Y;
		 
	 assign Y = A^B; //XOR Operation


endmodule
