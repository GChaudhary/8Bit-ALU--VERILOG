`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//## GroupID- 65(15114063_15114027) - Sandeep Pal & Gautam Choudhary	
//## Date: November 1, 2016
//## <ripple_carry_adder>.v - 1bit RIPPLE CARRY ADDER module is implemented in this file.
// 
// Create Date:    23:20:11 10/27/2016 
// Design Name: 
// Module Name:    ripple_carry_adder 
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
module ripple_carry_adder(A, B, Cin, Y, Carry);
	// Defining the inputs/outputs
    input A;
    input B;
    input Cin;
    output Y;
    output Carry;
	 
	 assign Y = A^B^Cin; 						//SUM Operation
	 assign Carry = (A&B)|(B&Cin)|(Cin&A); //CARRY Operation

endmodule
