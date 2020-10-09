`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:40 06/27/2019
// Design Name:   low_power_high_speed_accuracy_controlllable_multiplier
// Module Name:   F:/summer_internship_2019/eight_bit_multiplication_using_four_ones/lowpower_multiplier_tb.v
// Project Name:  eight_bit_multiplication_using_four_ones
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: low_power_high_speed_accuracy_controlllable_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lowpower_multiplier_tb;

	// Inputs
	reg [7:0] in1;
	reg [7:0] in2;
	reg mask;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	low_power_high_speed_accuracy_controlllable_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.mask(mask), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 8'd45;
		in2 = 8'd44;
		mask = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

