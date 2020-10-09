`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:08 06/20/2019 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(in1, sum, cout);

input [2:0] in1 ;
output sum ;
output cout ;

assign sum = (in1[0] ^in1[1] ^in1[2]) ;
assign cout = ((in1[0] &in1[1]) | (in1[1] &in1[2]) | (in1[2] & in1[0]) ) ;

endmodule
