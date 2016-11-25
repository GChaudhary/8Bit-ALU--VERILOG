`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//## GroupID- 65(15114063_15114027) - Sandeep Pal & Gautam Choudhary	
//## Date: November 1, 2016
//## <multiplication_module_8bit>.v - BOOTH's ALGORITHM is implemented in this file.
// 
// Create Date:    23:55:06 10/28/2016 
// Design Name: 
// Module Name:    multiplication_module_8bit 
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
module multiplication_module_8bit(mc, mp, Y);
	// Defining the inputs/outputs
    input signed [07:0] mc;
    input signed [07:0] mp;
    output signed [015:0] Y;
	 
	// Variables
	 integer count;
	 reg [7:0] A, Q, M, Sum, Difference;
	 reg Q_1;
	 reg signed [015:0] Y; 
	
	always @ ( * ) begin
		//Register the inputs 
		A = 8'b0;
		M = mc;
		Q = mp;
		Q_1 = 1'b0;

		// Booth's Algorithm
		//***********************************************************************
		for(count=0; count<8; count=count+1) 
		begin
			 Sum = A + M ;
			 Difference = A + ~M + 1 ;
			 case ({Q[0], Q_1})
					2'b00 : {A, Q, Q_1} = {A[7], A, Q};							// Case #1
					2'b01 : {A, Q, Q_1} = {Sum[7], Sum, Q};					// Case #2				
					2'b10 : {A, Q, Q_1} = {Difference[7], Difference, Q};	// Case #3
					2'b11 : {A, Q, Q_1} = {A[7], A, Q};							// Case #4
					default: {A, Q, Q_1} = 17'bx;
			 endcase
		end
		//***********************************************************************
		
		
		// Assiging the result to final Register
		Y = {A, Q};
	end

endmodule
