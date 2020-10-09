`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:31 06/21/2019 
// Design Name: 
// Module Name:    twenty_four_bit_vedic_adder 
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
module twenty_four_bit_vedic_adder(in1, in2, cin, out, cout );

input [23:0] in1 ;
input [23:0] in2 ;
input cin ;
output [23:0] out ;
output cout ;

wire c11, c12, c13 ;

eight_bit_vedic_adder call1(

.in1(in1[7:0]),
.in2(in2[7:0]) ,
.cin(1'b0) ,
.sum(out[7:0]),
.cout(c11)

);



eight_bit_vedic_adder call2(

.in1(in1[15:8]),
.in2(in2[15:8]) ,
.cin(c11) ,
.sum(out[15:8]),
.cout(c12)

);
 
eight_bit_vedic_adder call3(

.in1(in1[23:16]),
.in2(in2[23:16]) ,
.cin(c12) ,
.sum(out[23:16]),
.cout(c13)

);


endmodule
