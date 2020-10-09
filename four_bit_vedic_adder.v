`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:41 06/20/2019 
// Design Name: 
// Module Name:    four_bit_vedic_adder 
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
module four_bit_vedic_adder(in1, in2, cin , sum, cout);

input [3:0] in1 ;
input [3:0] in2 ;
input cin ;
output [3:0] sum ;
output cout ;


wire c11, c12, c13, c14 ;




one_bit_vedic_adder call1(

.in1(in1[0]) ,
.in2(in2[0]) ,
.cin(cin) ,
.sum(sum[0]) ,
.cout(c11)


);


one_bit_vedic_adder call2(

.in1(in1[1]) ,
.in2(in2[1]) ,
.cin(c11) ,
.sum(sum[1]) ,
.cout(c12)


);

one_bit_vedic_adder call3(

.in1(in1[2]) ,
.in2(in2[2]) ,
.cin(c12) ,
.sum(sum[2]) ,
.cout(c13)


);



one_bit_vedic_adder call11(

.in1(in1[3]) ,
.in2(in2[3]) ,
.cin(c13) ,
.sum(sum[3]) ,
.cout(cout)

);


endmodule
