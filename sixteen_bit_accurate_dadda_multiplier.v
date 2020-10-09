`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:48:44 06/29/2019 
// Design Name: 
// Module Name:    sixteen_bit_accurate_dadda_multiplier 
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
module sixteen_bit_accurate_dadda_multiplier(in1, in2, out);

input [15:0] in1;
input [15:0] in2 ;
output [31:0] out ;

wire [15:0] temp0, temp1 , temp2 , temp3 ;
wire [15:0] sum1 ;
wire [31:0] sum2 ;

eight_bit_accurate_dadda_multiplier call11(

.in1(in1[7:0]),
.in2(in2[7:0]),
.out(temp0)

);


eight_bit_accurate_dadda_multiplier call12(

.in1(in1[7:0]),
.in2(in2[15:8]),
.out(temp1)

);

eight_bit_accurate_dadda_multiplier call13(

.in1(in1[15:8]),
.in2(in2[7:0]),
.out(temp2)

);

eight_bit_accurate_dadda_multiplier call14(

.in1(in1[15:8]),
.in2(in2[15:8]),
.out(temp3)

);


assign out[7:0] = temp0[7:0]  ;

sixteen_bit_vedic_adder call21(

.in1({8'b00000000 , temp0[15:8]}),
.in2(temp1) ,
.out(sum1)

);

twenty_four_bit_vedic_adder call22(

.in1({8'b00000000, temp2}),
.in2({temp3, 8'b00000000}),
.out(sum2)

);

twenty_four_bit_vedic_adder call31(

.in1({8'b00000000 ,sum1}),
.in2(sum2),
.out(out[31:8])

);

endmodule
