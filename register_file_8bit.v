`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//## GroupID- 65(15114063_15114027) - Sandeep Pal & Gautam Choudhary
//## Date: November 1, 2016
//## <register_file_8bit>.v - Register File is implemented in this file.
//
// Create Date:    01:42:26 10/31/2016
// Design Name:
// Module Name:    register_file_8bit
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
module register_file_8bit(Data, Write_Enable, Address);
    inout [07:0] Data;
    input Write_Enable;
    input [01:0] Address;

	// RegisterFile storage
	reg [07:0] registers [01:0];
	reg [07:0] out_value;

	// Read from/Write to RegisterFile
	always @ ( * ) begin
		if ( Write_Enable )
			registers[Address] <= Data;
		else
			out_value <= registers[Address];
	end

	assign data = Write_Enable ? 8'bz : out_value;

endmodule
