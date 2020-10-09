`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:27 06/21/2019 
// Design Name: 
// Module Name:    thirty_two_bit_vedic_adder 
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
module thirty_two_bit_vedic_adder(in1, in2, cin, sum, cout );

input [31:0] in1 ;
input [31:0] in2 ;
input cin ;
output [31:0] sum ;
output cout ;

wire c11 ;

sixteen_bit_vedic_adder call1(

.in1(in1[15:0]),
.in2(in2[15:0]),
.cin(1'b0),
.out(sum[15:0]),
.cout(c11)

);


sixteen_bit_vedic_adder call2(

.in1(in1[31:16]),
.in2(in2[31:16]),
.cin(c11),
.out(sum[31:16]),
.cout(cout)

);

















endmodule
