`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:54 06/21/2019 
// Design Name: 
// Module Name:    thirty_two_bit_vedic_multiplier 
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
module thirty_two_bit_vedic_multiplier(in1, in2, out);

input [31:0] in1 ;
input [31:0] in2 ;
output [63:0] out ;

wire [31:0] temp0;
wire [31:0] temp1;
wire [31:0] temp2;
wire [31:0] temp3;

wire [31:0] sum1 ;
wire [47:0] sum2 ;

wire c11, c12, c13, c14 ;


sixteen_bit_vedic_multiplier call1(

.in1(in1[15:0]),
.in2(in2[15:0]),
.out(temp0)

);

sixteen_bit_vedic_multiplier call2(

.in1(in1[31:16]),
.in2(in2[15:0]),
.out(temp1)

);


sixteen_bit_vedic_multiplier call3(

.in1(in1[15:0]),
.in2(in2[31:16]),
.out(temp2)

);


sixteen_bit_vedic_multiplier call4(

.in1(in1[31:16]),
.in2(in2[31:16]),
.out(temp3)

);



///////////////////////////////////////////////////////////


assign out[15:0] = temp0[15:0] ;


thirty_two_bit_vedic_adder call11(

.in1({16'b0000000000000000 , temp0[31:16]}),
.in2(temp1),
.cin(1'b0),
.sum(sum1),
.cout(c11)

);


fourty_eight_bit_vedic_adder call12(

.in1({16'b0000000000000000 , temp2}),
.in2({temp3, 16'b0000000000000000}),
.cin(1'b0),
.sum(sum2) ,
.cout(c12)

);


////////////////////////////////////////////////

fourty_eight_bit_vedic_adder call21(

.in1({16'b0000000000000000 , sum1}),
.in2(sum2),
.cin(1'b0),
.sum(out[63:16]),
.cout(c21)

);


endmodule
