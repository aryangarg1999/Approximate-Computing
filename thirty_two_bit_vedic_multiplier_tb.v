`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:42:42 06/21/2019
// Design Name:   thirty_two_bit_vedic_multiplier
// Module Name:   F:/summer_internship_2019/eight_bit_multiplication_using_four_ones/thirty_two_bit_vedic_multiplier_tb.v
// Project Name:  eight_bit_multiplication_using_four_ones
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: thirty_two_bit_vedic_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module thirty_two_bit_vedic_multiplier_tb;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;

	// Outputs
	wire [63:0] out;

	// Instantiate the Unit Under Test (UUT)
	thirty_two_bit_vedic_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 32'd556679;
		in2 = 32'd889999;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

