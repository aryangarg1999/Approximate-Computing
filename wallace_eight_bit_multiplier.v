`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:37 06/13/2019 
// Design Name: 
// Module Name:    wallace_eight_bit_multiplier 
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
module wallace_eight_bit_multiplier(in1, in2, out);

input [7:0] in1;
input [7:0] in2 ;
output [16:0] out ;

reg [7:0] temp0;
reg [7:0] temp1;
reg [7:0] temp2;
reg [7:0] temp3;
reg [7:0] temp4;
reg [7:0] temp5;
reg [7:0] temp6;
reg [7:0] temp7;


integer i;

always @(in1 or in2)
begin

	for(i=0; i<=7; i=i+1)
	begin
		
		temp0[i] <= (in1[i] &in2[0]) ;
		temp1[i] <= (in1[i] &in2[1]) ;
		temp2[i] <= (in1[i] &in2[2]) ;
		temp3[i] <= (in1[i] &in2[3]) ;
		temp4[i] <= (in1[i] &in2[4]) ;
		temp5[i] <= (in1[i] &in2[5]) ;
		temp6[i] <= (in1[i] &in2[6]) ;
		temp7[i] <= (in1[i] &in2[7]) ;
	
	end


end


assign out[0] = temp0[0] ;


wire s11, c11, c12, s12, c13, s13, s14, c14, s15, c15, s16, c16, s17, c17,s18,c18,s19,c19, s21, c21, c22, s22, c23, s23, s24, c24, s25, c25, s26, c26, s27,s28,c28,s29,c29, s210,c210; 
wire s31, c31, c32, s32, c33, s33, s34, c34, s35, c35, s36, c36, s37,s38,c38,s39,c39, s310,c310 ;
wire s41, c41, c42, s42, c43, s43, s44, c44, s45, c45, s46, c46, s47,s48,c48,s49,c49, s410,c410 ;
wire s51, c51, c52, s52, c53, s53, s54, c54, s55, c55, s56, c56, s57,s58,c58,s59,c59, s510,c510 ;
wire s61, c61, c62, s62, c63, s63, s64, c64, s65, c65, s66, c66, s67,s68,c68,s69,c69, s610,c610,s611,c611,s612,c612 ;
wire s71, c71, c72, s72, c73, s73, s74, c74, s75, c75, s76, c76, s77,c77,s78,c78,s79,c79, s710,c710,s711,c711,c712,s712 ;





half_adder call11(

.in1({temp0[1], temp1[0]}),
.sum(s11) ,
.cout(c11)

);

assign out[1] = s11 ; 


full_adder call12(

.in1({temp0[2], temp1[1], temp2[0]}),
.sum(s12) ,
.cout(c12)

);

full_adder call13(

.in1({temp0[3], temp1[2], temp2[1]}),
.sum(s13) ,
.cout(c13)

);

full_adder call14(

.in1({temp0[4], temp1[3], temp2[2]}),
.sum(s14) ,
.cout(c14)

);

full_adder call15(

.in1({temp0[5], temp1[4], temp2[3]}),
.sum(s15) ,
.cout(c15)

);

full_adder call16(

.in1({temp0[6], temp1[5], temp2[4]}),
.sum(s16) ,
.cout(c16)

);

full_adder call17(

.in1({temp0[7], temp1[6], temp2[5]}),
.sum(s17) ,
.cout(c17)

);

half_adder call18(

.in1({temp1[7], temp2[6]}),
.sum(s18) ,
.cout(c18)

);

/////////////\


half_adder call111(

.in1({temp3[1] , temp4[0]}),
.sum(s21) ,
.cout(c21)

);

full_adder call112(

.in1({temp3[2] , temp4[1] ,temp5[0]}),
.sum(s22) ,
.cout(c22)

);

full_adder call113(

.in1({temp3[3] , temp4[2] ,temp5[1]}),
.sum(s23) ,
.cout(c23)

);


full_adder call114(

.in1({temp3[4] , temp4[3] ,temp5[2]}),
.sum(s24) ,
.cout(c24)

);

full_adder call115(

.in1({temp3[5] , temp4[4] ,temp5[3]}),
.sum(s25) ,
.cout(c25)

);


full_adder call116(

.in1({temp3[6] , temp4[5] ,temp5[4]}),
.sum(s26) ,
.cout(c26)

);

full_adder call117(

.in1({temp3[7] , temp4[6] ,temp5[5]}),
.sum(s27) ,
.cout(c27)

);

half_adder call118(

.in1({temp4[7] , temp5[6]}),
.sum(s28) ,
.cout(c28)

);



///////////////////////////////////////////////////////////////////



half_adder call21(

.in1({s12, c11}) ,
.sum(s31) ,
.cout(c31)

);

assign out[2] = s31 ;

full_adder call22(

.in1({s13, c12, temp3[0]}) ,
.sum(s32) ,
.cout(c32)

);

full_adder call23(

.in1({s14, c13, s21}) ,
.sum(s33) ,
.cout(c33)

);


full_adder call24(

.in1({s15, c14, s22}) ,
.sum(s34) ,
.cout(c34)

);


full_adder call25(

.in1({s16, c15, s23}) ,
.sum(s35) ,
.cout(c35)

);

full_adder call26(

.in1({s17, c16, s24}) ,
.sum(s36) ,
.cout(c36)

);

full_adder call27(

.in1({s18, c17, s25}) ,
.sum(s37) ,
.cout(c37)

);


full_adder call28(

.in1({temp2[7], c18, s26}) ,
.sum(s38) ,
.cout(c38)

);


///////////\


half_adder call221(

.in1({c22, temp6[0]}),
.sum(s41) ,
.cout(c41)

);


full_adder call222(

.in1({c23 , temp6[1], temp7[0]}),
.sum(s42) ,
.cout(c42)

);


full_adder call223(

.in1({c24 , temp6[2], temp7[1]}),
.sum(s43) ,
.cout(c43)

);


full_adder call224(

.in1({c25 , temp6[3], temp7[2]}),
.sum(s44) ,
.cout(c44)

);


full_adder call225(

.in1({c26 , temp6[4], temp7[3]}),
.sum(s45) ,
.cout(c45)

);


full_adder call226(

.in1({c27 , temp6[5], temp7[4]}),
.sum(s46) ,
.cout(c46)

);

full_adder call227(

.in1({c28 , temp6[6], temp7[5]}),
.sum(s47) ,
.cout(c47)

);

half_adder call228(

.in1({temp6[7], temp7[6]}),
.sum(s48) ,
.cout(c48)

);

//////////////////////////////////////////////////////////////////////


half_adder call31(

.in1({s32, c31}),
.sum(s51) ,
.cout(c51)

);

assign out[3] = s51 ;

half_adder call32(

.in1({s33, c32}),
.sum(s52) ,
.cout(c52)

);


full_adder call33(

.in1({s34, c33, c21}),
.sum(s53),
.cout(c53)

);

full_adder call34(

.in1({s35, c34, s41}),
.sum(s54),
.cout(c54)

);

full_adder call35(

.in1({s36, c35, s42}),
.sum(s55),
.cout(c55)

);


full_adder call36(

.in1({s37, c36, s43}),
.sum(s56),
.cout(c56)

);


full_adder call37(

.in1({s38, c37, s44}),
.sum(s57),
.cout(c57)

);


full_adder call38(

.in1({c38, s45, s27}),
.sum(s58),
.cout(c58)

);

half_adder call39(

.in1({s28, s46}),
.sum(s59),
.cout(c59)

);


half_adder call310(

.in1({temp5[7], s47}),
.sum(s510),
.cout(c510)

);



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


half_adder call41(

.in1({s52, c51}),
.sum(s61) ,
.cout(c61)

);


assign out[4] = s61 ;


half_adder call42(

.in1({s53, c52}),
.sum(s62) ,
.cout(c62)

);

half_adder call43(

.in1({s54, c53}),
.sum(s63) ,
.cout(c63)

);


full_adder call44(

.in1({s55, c54, c41}),
.sum(s64) ,
.cout(c64)

);


full_adder call45(

.in1({s56, c55, c42}),
.sum(s65) ,
.cout(c65)

);


full_adder call46(

.in1({s57, c56, c43}),
.sum(s66) ,
.cout(c66)

);


full_adder call47(

.in1({s58, c57, c44}),
.sum(s67) ,
.cout(c67)

);


full_adder call48(

.in1({s59, c58, c45}),
.sum(s68) ,
.cout(c68)

);


full_adder call49(

.in1({s510, c59, c46}),
.sum(s69) ,
.cout(c69)

);


full_adder call410(

.in1({s48, c510, c47}),
.sum(s610) ,
.cout(c610)

);


half_adder call411(

.in1({temp7[7], c48}),
.sum(s611) ,
.cout(c611)

);



///////////////////////////////////////////////////////////////////////////////////////////////////////////////

half_adder call51(

.in1({s62, c61}),
.sum(out[5]),
.cout(c71)

);


full_adder call52(

.in1({s63, c62, c71}),
.sum(out[6]) ,
.cout(c72)

);


full_adder call53(

.in1({s64, c63, c72}),
.sum(out[7]) ,
.cout(c73)

);


full_adder call54(

.in1({s65, c64, c73}),
.sum(out[8]) ,
.cout(c74)

);


full_adder call55(

.in1({s66, c65, c74}),
.sum(out[9]) ,
.cout(c75)

);


full_adder call56(

.in1({s67, c66, c75}),
.sum(out[10]) ,
.cout(c76)

);


full_adder call57(

.in1({s68, c67, c76}),
.sum(out[11]) ,
.cout(c77)

);


full_adder call58(

.in1({s69, c68, c77}),
.sum(out[12]) ,
.cout(c78)

);


full_adder call59(

.in1({s610, c69, c78}),
.sum(out[13]) ,
.cout(c79)

);


full_adder call510(

.in1({s611, c610, c79}),
.sum(out[14]) ,
.cout(c710)

);


half_adder call512(

.in1({c710, c611}),
.sum(out[15]) ,
.cout(out[16])


);


endmodule
