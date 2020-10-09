`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:22:39 06/20/2019
// Design Name:   four_bit_dadda_multiplier
// Module Name:   F:/summer_internship_2019/eight_bit_multiplication_using_four_ones/four_bit_dadda_multiplier.v
// Project Name:  eight_bit_multiplication_using_four_ones
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_dadda_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_dadda_multiplier_tb;

	// Inputs
	reg [3:0] in1;
	reg [3:0] in2;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	four_bit_dadda_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 4'd15;
		in2 = 4'd15;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

