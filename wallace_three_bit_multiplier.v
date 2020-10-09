`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:45 06/13/2019 
// Design Name: 
// Module Name:    wallace_three_bit_multiplier 
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
module wallace_three_bit_multiplier(in1, in2, out );

input [2:0] in1;
input [2:0] in2 ;

reg [3:0] temp0, temp1, temp2 ;


output [5:0] out ;

integer i ;



always @(in1 or in2)
begin

	for(i=0; i<=2; i=i+1)
	begin
	
		temp0[i] <= (in1[i] &in2[0]) ;
		temp1[i] <= (in1[i] &in2[1]) ;
		temp2[i] <= (in1[i] &in2[2]) ;
	
	
	end


end


wire s11, c11, s12, c12, s13, c13, s21, c21, s22, c22, s23, c23, s31, c31, s32, c32 ;

 assign out[0] = temp0[0] ;
 
 half_adder call1(
 
 .in1({temp0[1] , temp1[0]}),
 .sum(s11) ,
 .cout(c11)
 
 );

assign out[1] = s11 ;

full_adder call2(

.in1({temp0[2] , temp1[1] , temp2[0]}),
.sum(s12) ,
.cout(c12)

);


half_adder call3(

.in1({temp1[2], temp2[1]}),
.sum(s13),
.cout(c13)

);



//////////////////////////////////////// stage 2


half_adder call21(

.in1({s12 , c11}),
.sum(s21) ,
.cout(c21)

);


assign out[2] = s21 ;

half_adder call22(

.in1({s13, c12}) ,
.sum(s22) ,
.cout(c22)

);

assign out[3] = s22 ;

half_adder call23(

.in1({temp2[2] , c13}) ,
.sum(s23) ,
.cout(c23)

);

assign out[4] = s23 ;

assign out[5] = c23;





endmodule
