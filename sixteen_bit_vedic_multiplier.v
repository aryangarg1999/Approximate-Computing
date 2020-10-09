`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:18 06/21/2019 
// Design Name: 
// Module Name:    sixteen_bit_vedic_multiplier 
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
module sixteen_bit_vedic_multiplier(in1, in2, out);

input [15:0] in1 ;
input [15:0] in2 ;
output [31:0] out ;

wire [15:0] temp0;
wire [15:0] temp1 ;
wire [15:0] temp2 ;
wire [15:0] temp3 ;


wire [15:0] sum1 ;
wire [23:0] sum2 ;

wire c11, c12, c13 ;

eight_bit_vedic_multiplier call1(

.in1(in1[7:0]),
.in2(in2[7:0]),
.out(temp0)

);

eight_bit_vedic_multiplier call2(

.in1(in1[15:8]),
.in2(in2[7:0]),
.out(temp1)

);

eight_bit_vedic_multiplier call3(

.in1(in1[7:0]),
.in2(in2[15:8]),
.out(temp2)

);

eight_bit_vedic_multiplier call4(

.in1(in1[15:8]),
.in2(in2[15:8]),
.out(temp3)

);





assign out[7:0] = temp0[7:0] ;


sixteen_bit_vedic_adder call11(

.in1({8'b00000000, temp0[15:8]}),
.in2(temp1),
.cin(1'b0),
.out(sum1),
.cout(c11)

);


twenty_four_bit_vedic_adder call222(

.in1({8'b00000000 , temp2[15:0]}),
.in2({temp3[15:0] , 8'b00000000}),
.cin(1'b0) ,
.out(sum2),
.cout(c12)

);



twenty_four_bit_vedic_adder call22(

.in1({8'b00000000,sum1}),
.in2(sum2),
.cin(1'b0),
.out(out[31:8]),
.cout(c13)

);




endmodule
