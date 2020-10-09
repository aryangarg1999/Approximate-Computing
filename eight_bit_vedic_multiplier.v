`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:31 06/20/2019 
// Design Name: 
// Module Name:    eight_bit_vedic_multiplier 
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
module eight_bit_vedic_multiplier(in1, in2, out);

input [7:0] in1 ;
input [7:0] in2 ;
output [15:0] out ;


wire [7:0] temp0 ;
wire [7:0] temp1 ;
wire [7:0] temp2 ;
wire [7:0] temp3 ;

wire [7:0] sum1  ;
wire [11:0] sum2  ;
wire c11, c12 ;

four_bit_dadda_multiplier call1(

.in1(in1[3:0]),
.in2(in2[3:0]),
.out(temp0)

);


four_bit_dadda_multiplier call2(

.in1(in1[3:0]),
.in2(in2[7:4]),
.out(temp1)

);


four_bit_dadda_multiplier call3(

.in1(in1[7:4]),
.in2(in2[3:0]),
.out(temp2)

);


four_bit_dadda_multiplier call4(

.in1(in1[7:4]),
.in2(in2[7:4]),
.out(temp3)

);


assign out[3:0] = temp0[3:0] ;

eight_bit_vedic_adder call11(

.in1({4'b0000, temp0[7:4]}),
.in2(temp1) ,
.cin(1'b0), 
.sum(sum1) ,
.cout(c11)
);


twelve_bit_vedic_adder call12(

.in1({temp3, 4'b0000}),
.in2({4'b0000, temp2}),
.cin(1'b0),
.sum(sum2) ,
.cout(c12)

);


twelve_bit_vedic_adder call22(

.in1({4'b0000 ,sum1}),
.in2(sum2) ,
.cin(1'b0) ,
.sum(out[15:4]) ,
.cout(c13)
);



endmodule
