    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:44 06/15/2019 
// Design Name: 
// Module Name:    eight_bit_dadda_multiplier 
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
module eight_bit_accurate_dadda_multiplier(in1, in2, out );

input [7:0] in1; 
input [7:0] in2;
output [15:0] out ;

reg [7:0] temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7 ;

integer i;

always @(in1 or in2)
begin

	for(i=0; i<=7; i=i+1)
	begin
	
	temp0[i] <= (in1[i] &in2[0]) ;
	temp1[i] <= (in1[i] &in2[1]) ;
	temp2[i] <= (in1[i] &in2[2]) ;
	temp3[i] <= (in1[i] &in2[3] );
 	temp4[i] <= (in1[i] &in2[4]);
	temp5[i] <= (in1[i] &in2[5]);
	temp6[i] <= (in1[i] &in2[6]);
	temp7[i] <= (in1[i] &in2[7]);
	
	end

end



wire s11, c11, c12, s12, c13, s13, s14, c14, s15, c15, s16, c16, s17, c17,s18,c18,s19,c19, s21, c21, c22, s22, c23, s23, s24, c24, s25, c25, s26, c26, s27,s28,c28,s29,c29, s210,c210; 
wire s31, c31, c32, s32, c33, s33, s34, c34, s35, c35, s36, c36, s37,s38,c38,s39,c39, s310,c310,s211,c211,s212,c212,s213,c213,s214,c214 ;
wire s41, c41, c42, s42, c43, s43, s44, c44, s45, c45, s46, c46, s47,s48,c48,s49,c49, s410,c410,s411,c411,s412,c412 ;
wire s51, c51, c52, s52, c53, s53, s54, c54, s55, c55, s56, c56, s57,s58,c58,s59,c59, s510,c510,s511,c511,s512,c512 ;
wire s61, c61, c62, s62, c63, s63, s64, c64, s65, c65, s66, c66, s67,s68,c68,s69,c69, s610,c610,s611,c611,s612,c612 ;
wire s71, c71, c72, s72, c73, s73, s74, c74, s75, c75, s76, c76, s77,c77,s78,c78,s79,c79, s710,c710,s711,c711,c712,s712 ;




////////////////////////////////////////////////////////////////////////

half_adder call11(

.in1({temp0[6], temp1[5]}),
.sum(s11) ,
.cout(c11)

);

full_adder call12(

.in1({temp0[7] , temp1[6], c11}),
.sum(s12) ,
.cout(c12)

);

half_adder call13(

.in1({temp2[5], temp3[4]}),
.sum(s13),
.cout(c13)

);


full_adder call14(

.in1({c12, c13, temp1[7]}),
.sum(s14),
.cout(c14)

);

half_adder call15(

.in1({temp2[6], temp3[5]}),
.sum(s15),
.cout(c15)

);

full_adder call16(

.in1({c14, c15, temp2[7]}),
.sum(s16) ,
.cout(c16)

);


//////////////////////////////////////////////////////////////////////////////////////



half_adder call21(

.in1({temp0[4], temp1[3]}),
.sum(s21) ,
.cout(c21)

);

full_adder call22(

.in1({c21, temp0[5], temp1[4]}),
.sum(s22),
.cout(c22)

);

half_adder call23(

.in1({temp2[3], temp3[2]}),
.sum(s23) ,
.cout(c23)

);

full_adder call24(

.in1({s11, c22, c23}),
.sum(s24) ,
.cout(c24)

);

full_adder call25(

.in1({temp2[4], temp3[3], temp4[2]}),
.sum(s25) ,
.cout(c25)

);


full_adder call26(

.in1({c24, c25, s12}),
.sum(s26) ,
.cout(c26)

);


full_adder call27(

.in1({s13, temp4[3], temp5[2]}),
.sum(s27),
.cout(c27)

);

full_adder call28(

.in1({c26, c27, s14}),
.sum(s28) ,
.cout(c28)

);


full_adder call29(

.in1({s15, temp4[4], temp5[3]}),
.sum(s29),
.cout(c29)

);


full_adder call210(

.in1({c28, c29, s16}),
.sum(s210),
.cout(c210)

);

full_adder call211(

.in1({temp3[6], temp4[5], temp5[4]}),
.sum(s211), 
.cout(c211)

);

full_adder call212(

.in1({c211, c210, c16}),
.sum(s212) ,
.cout(c212)

);

full_adder call213(

.in1({temp3[7], temp4[6], temp5[5]}),
.sum(s213),
.cout(c213)

);


full_adder call214(

.in1({temp4[7], c212, c213}),
.sum(s214),
.cout(c214)

);


////////////////////////////////////////////////////////////////////////////////////////


half_adder call31(

.in1({temp0[3], temp1[2]}),
.sum(s31),
.cout(c31)

);


full_adder call32(

.in1({s21, temp2[2], c31}),
.sum(s32),
.cout(c32)

);

full_adder call33(

.in1({c32, s22, s23}),
.sum(s33),
.cout(c33)

);


full_adder call34(

.in1({s24, s25, c33}),
.sum(s34),
.cout(c34)

);


full_adder call35(

.in1({s26, s27, c34}),
.sum(s35),
.cout(c35)

);


full_adder call36(

.in1({s28, s29, c35}),
.sum(s36),
.cout(c36)

);


full_adder call37(

.in1({c36, s210, s211}),
.sum(s37),
.cout(c37)

);


full_adder call38(

.in1({c37, s212, s213}),
.sum(s38),
.cout(c38)

);

full_adder call39(

.in1({temp5[6], s214, c38}),
.sum(s39) ,
.cout(c39)

);

full_adder call310(

.in1({c214, c39, temp5[7]}),
.sum(s310) ,
.cout(c310)

);


//////////////////////////////////////////////////////////////////////////////////////////


half_adder call41(

.in1({temp0[2], temp1[1]}),
.sum(s41) ,
.cout(c41)

);


full_adder call42(

.in1({c41, temp2[1], s31}),
.sum(s42),
.cout(c42)

);

full_adder call43(

.in1({c42, temp3[2], s32}),
.sum(s43),
.cout(c43)

);


full_adder call44(

.in1({c43, temp4[1], s33}),
.sum(s44),
.cout(c44)

);

full_adder call45(

.in1({c44, temp5[1], s34}),
.sum(s45),
.cout(c45)

);

full_adder call46(

.in1({c45, temp6[1], s35}),
.sum(s46),
.cout(c46)

);


full_adder call47(

.in1({c46, temp6[2], s36}),
.sum(s47),
.cout(c47)

);

full_adder call48(

.in1({c47, temp6[3], s37}),
.sum(s48),
.cout(c48)

);


full_adder call49(

.in1({c48, temp6[4], s38}),
.sum(s49),
.cout(c49)

);

full_adder call410(

.in1({c49, temp6[5], s39}),
.sum(s410),
.cout(c410)

);


full_adder call411(

.in1({c410, temp6[6], s310}),
.sum(s411),
.cout(c411)

);

full_adder call412(

.in1({c411, temp6[7], c310}),
.sum(s412) ,
.cout(c412)

);

/////////////////////////////////////////////////////////

assign out[0] = temp0[0] ;

half_adder call51(

.in1({temp0[1], temp1[0]}),
.sum(out[1]),
.cout(c51)

); 


full_adder call52(

.in1({temp2[0], c51, s41}),
.sum(out[2]),
.cout(c52)

);

full_adder call53(

.in1({temp3[0], c52, s42}),
.sum(out[3]),
.cout(c53)

);

full_adder call54(

.in1({temp4[0], c53, s43}),
.sum(out[4]),
.cout(c54)

);


full_adder call55(

.in1({temp5[0], c54, s44}),
.sum(out[5]),
.cout(c55)

);

full_adder call56(

.in1({temp6[0], c55, s45}),
.sum(out[6]),
.cout(c56)

);


full_adder call57(

.in1({temp7[0], c56, s46}),
.sum(out[7]),
.cout(c57)

);


full_adder call58(

.in1({temp7[1], c57, s47}),
.sum(out[8]),
.cout(c58)

);

full_adder call59(

.in1({temp7[2], c58, s48}),
.sum(out[9]),
.cout(c59)

);

full_adder call510(

.in1({temp7[3], c59, s49}),
.sum(out[10]),
.cout(c510)

);



full_adder call511(

.in1({temp7[4], c510, s410}),
.sum(out[11]),
.cout(c511)

);

full_adder call512(

.in1({temp7[5], c511, s411}),
.sum(out[12]),
.cout(c512)

);

full_adder call513(

.in1({temp7[6], c512, s412}),
.sum(out[13]),
.cout(c513)

);


full_adder call514(

.in1({temp7[7], c513, c412}),
.sum(out[14]),
.cout(out[15])

);

endmodule

    
