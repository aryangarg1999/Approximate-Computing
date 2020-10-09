`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:17:39 06/13/2019
// Design Name:   te
// Module Name:   F:/summer_internship_2019/dadda_multiplier/te_tb.v
// Project Name:  dadda_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: te
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module te_tb;

	// Inputs
	reg [3:0] in1;
	reg [3:0] in2;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	te uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 4'b1010;
		in2 = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

