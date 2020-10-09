`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:07 06/20/2019 
// Design Name: 
// Module Name:    eight_bit_vedic_adder 
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
module eight_bit_vedic_adder(in1, in2, sum, cout, cin);

input [7:0] in1;
input [7:0] in2 ;
input cin ;
output [7:0] sum ;
output cout ;

wire c11 ;


four_bit_vedic_adder call1(

.in1(in1[3:0]),
.in2(in2[3:0]),
.cin(cin) ,
.sum(sum[3:0]) ,
.cout(c11)

);


four_bit_vedic_adder call2(

.in1(in1[7:4]),
.in2(in2[7:4]),
.cin(c11) ,
.sum(sum[7:4]) ,
.cout(cout)

);






endmodule
