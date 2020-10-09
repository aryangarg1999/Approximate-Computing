`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:57:30 06/28/2019
// Design Name:   approximate_dadda_multiplier
// Module Name:   F:/summer_internship_2019/eight_bit_multiplication_using_four_ones/approximate_dadda_multiplier_tb.v
// Project Name:  eight_bit_multiplication_using_four_ones
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: approximate_dadda_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module approximate_dadda_multiplier_tb;

	// Inputs
	reg [7:0] in1;
	reg [7:0] in2;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	approximate_dadda_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 8'd33;
		in2 = 8'd43;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

