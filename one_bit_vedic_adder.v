`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:15 06/20/2019 
// Design Name: 
// Module Name:    one_bit_vedic_adder 
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
module one_bit_vedic_adder(in1, in2, sum, cout, cin);

input in1 ;
input in2 ;
input cin ;
output sum ;
output cout ;

assign sum = (in1 ^ in2 ^cin) ;
assign cout = ((in1 & in2) | (in2 & cin) | (in1 &cin)) ;





endmodule
