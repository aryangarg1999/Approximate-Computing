`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:40 06/21/2019 
// Design Name: 
// Module Name:    fourty_eight_bit_vedic_adder 
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
module fourty_eight_bit_vedic_adder(in1, in2, cin, sum , cout);

input [47:0] in1 ;
input [47:0] in2 ;
input cin ;
output [47:0] sum ;
output cout ;

wire c11 ;


twenty_four_bit_vedic_adder call1(

.in1(in1[23:0]),
.in2(in2[23:0]),
.cin(1'b0),
.out(sum[23:0]),
.cout(c11)

);

twenty_four_bit_vedic_adder call2(

.in1(in1[47:24]),
.in2(in2[47:24]),
.cin(c11),
.out(sum[47:24]),
.cout(cout)

);




















endmodule
