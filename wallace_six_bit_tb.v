`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:43 06/14/2019
// Design Name:   wallace_six_bit_multiplier
// Module Name:   F:/summer_internship_2019/dadda_multiplier/wallace_six_bit_tb.v
// Project Name:  dadda_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace_six_bit_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_six_bit_tb;

	// Inputs
	reg [5:0] in1;
	reg [5:0] in2;

	// Outputs
	wire [12:0] out;

	// Instantiate the Unit Under Test (UUT)
	wallace_six_bit_multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 6'b110011;
		in2 = 6'b111000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

