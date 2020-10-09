`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:45:58 06/13/2019
// Design Name:   wallace_three_bit_multiplier
// Module Name:   F:/summer_internship_2019/dadda_multiplier/wallace_three_bit_multiplier_tb.v
// Project Name:  dadda_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace_three_bit_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_three_bit_multiplier_tb;

	// Inputs
	reg [2:0] in1;
	reg [2:0] in2;

	// Outputs
	wire [5:0] out;

	// Instantiate the Unit Under Test (UUT)
	wallace_three_bit_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 3'b101;
		in2 = 3'b110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

