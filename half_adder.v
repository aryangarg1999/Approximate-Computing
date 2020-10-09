`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:44 06/20/2019 
// Design Name: 
// Module Name:    half_adder 
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
module half_adder(in1, sum, cout);

input [1:0] in1 ;
output sum ;
output cout ;


assign sum = (in1[0] ^in1[1]);
assign cout = (in1[0] &in1[1]) ;

endmodule
