`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:17 06/13/2019 
// Design Name: 
// Module Name:    te 
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
module te(in1, in2, out);

input [3:0] in1;
input [3:0] in2 ;
output [7:0] out ;

reg [3:0] temp0;
reg [3:0] temp1;
reg [3:0] temp2;
reg [3:0] temp3;

integer i;

wire c11, s11,c12, s12,c13, s13,c14, s14,c15, s15,c21, s21, c22, s22,c23, s23,c24, s24,c25, s25,c31, s31,c32, s32,c33, s33,c34, s34,c35, s35 ;

always @(in1 or in2)
begin

	for(i=0; i<=3; i=i+1)
	begin
	
	temp0[i] <= in1[i] &in2[0] ;
	temp1[i] <= in1[i] &in2[1] ;
	temp2[i] <= in1[i] &in2[2] ;
	temp3[i] <= in1[i] &in2[3] ;
	
	
	end

end

////////////////////////////////////////////////////////////////////////////////

assign out[0] = temp0[0] ;


half_adder call11(

.in1({temp0[1] , temp1[0]}),
.sum(s11),
.cout(c11)

);

assign out[1] = s11 ;

full_adder call12(

.in1({temp0[2] , temp1[1], temp2[0]}),
.sum(s12) ,
.cout(c12)

);


full_adder call13(

.in1({temp0[3] , temp1[2], temp2[1]}) ,
.sum(s13) ,
.cout(c13)

);


full_adder call14(

.in1({temp1[3] , temp2[2], temp3[1]}),
.sum(s14) ,
.cout(c14)

);

half_adder call15(

.in1({temp2[3] , temp3[2]}),
.sum(s15) ,
.cout(c15)

);

///////////////////////////////////////////////////////////////////


half_adder call21(

.in1({s12, c11}),
.sum(s21) ,
.cout(c21)

);

assign out[2] = s21 ;

full_adder call22(

.in1({s13, c12, temp3[0]}),
.sum(s22) ,
.cout(c22)

);


full_adder call23(

.in1({s14, c13, c22}),
.sum(s23) ,
.cout(c23)

);


full_adder call24(

.in1({s15, c14, c23}),
.sum(s24) ,
.cout(c24)

);


full_adder call25(

.in1({c24, c15, temp3[3]}),
.sum(s25) ,
.cout(c25)

);

/////////////////////////////////////////////////////////////////////////////

half_adder call31(

.in1({s22, c21}),
.sum(out[3]) ,
.cout(c31)

);


half_adder call32(

.in1({s23, c31}),
.sum(out[4]),
.cout(c32)

);

half_adder call33(

.in1({s24, c32}) ,
.sum(out[5]) ,
.cout(c33) 

);

half_adder call34(

.in1({s25, c33}),
.sum(out[6]) ,
.cout(c34)

);

half_adder call35(

.in1({c34, c25}) ,
.sum(out[7]) ,
.cout(c35)

);


endmodule
