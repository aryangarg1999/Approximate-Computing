`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:05 06/28/2019 
// Design Name: 
// Module Name:    approximate_dadda_multiplier 
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
module approximate_dadda_multiplier(in1, in2 , out);


input [7:0] in1;
input [7:0] in2 ;
output [15:0] out ;

// here we will not take the temp2 and temp3 ... this is the approximation that we have taken .... but addition will ne done as per same rule ...

reg [7:0] temp0, temp1, temp2, temp3, temp4, temp5 ;

integer i ;

always@(in1 or in2)
begin

for(i=0 ;i<=7; i=i+1)
begin

temp0[i] <= (in1[i] &in2[0]);
temp1[i] <= (in1[i] &in2[1]);
temp2[i] <= (in1[i] &in2[4]);
temp3[i] <= (in1[i] &in2[5]);
temp4[i] <= (in1[i] &in2[6]);
temp5[i] <= (in1[i] &in2[7]);

end


end



wire s11, c11,s12, c12, s13, c13, s14, c14, s15, c15, s16, c16, s17, c17, s18, c18,s19, c19,s110, c110,s112, c112,s113, c113,s114, c114,s115, c115,s116, c116,s111, c111, s21, c21, s22, c22,s23, c23,s24, c24,s25, c25,s26, c26,s27, c27,s28, c28,s29, c29,s210, c210,s211, c211,s212, c212,s213, c213,s32, c32,s31, c31,s33, c33,s34, c34,s35, c35,s36, c36,s37, c37,s38, c38,s39, c39,s310, c310,s311, c311,s312, c312,s313, c313,s41, c41,s42, c42, c43,c45, c44,c46, c47,c48, c49, c410, c411, c412, c413;

half_adder call11(

.in1({temp0[6], temp1[5]}),
.sum(s11),
.cout(c11)

);

full_adder call12(

.in1({c11, temp0[7], temp1[6]}),
.sum(s12),
.cout(c12)

);

half_adder call13(

.in1({temp2[3], temp3[2]}),
.sum(s13),
.cout(c13)

);

full_adder call14(

.in1({c12, c13, temp1[7]}),
.sum(s14),
.cout(c14)

);

half_adder call15(

.in1({temp2[4], temp3[3]}),
.sum(s15),
.cout(c15)

);

full_adder call16(

.in1({c14, c15, temp2[5]}),
.sum(s16),
.cout(c16)

);

half_adder call17(

.in1({c16, temp2[6]}),
.sum(s17),
.cout(c17)

);

half_adder call18(

.in1({c17, temp2[7]}),
.sum(s18),
.cout(c18)

);

////////////////////////////////////////////////////////////////////////////////////////////////////////

half_adder call21(

.in1({temp0[5], temp1[4]}),
.sum(s21),
.cout(c21)

);

full_adder call22(

.in1({c21, s11, temp2[2]}),
.sum(s22),
.cout(c22)

);

full_adder call23(

.in1({c22, s12, s13}),
.sum(s23),
.cout(c23)

);

full_adder call24(

.in1({c23, s14, s15}),
.sum(s24),
.cout(c24)

);

full_adder call25(

.in1({c24, s16, temp3[4]}),
.sum(s25),
.cout(c25)

);

full_adder call26(

.in1({c25, s17, temp3[5]}),
.sum(s26),
.cout(c26)

);

full_adder call27(

.in1({c26, s18, temp3[6]}),
.sum(s27),
.cout(c27)

);

full_adder call28(

.in1({c27, c18, temp3[7]}),
.sum(s28),
.cout(c28)

);

///////////////////////////////////////////////////////////////////////////////////////////////


half_adder call31(

.in1({temp0[4], temp1[3]}),
.sum(s31),
.cout(c31)

);


full_adder call32(

.in1({c31, s21, temp2[1]}),
.sum(s32),
.cout(c32)

);

full_adder call33(

.in1({c32, s22, temp3[1]}),
.sum(s33),
.cout(c33)

);

full_adder call34(

.in1({c33, s23, temp4[1]}),
.sum(s34),
.cout(c34)

);

full_adder call35(

.in1({c34, s24, temp4[2]}),
.sum(s35),
.cout(c35)

);

full_adder call36(

.in1({c35, s25, temp4[3]}),
.sum(s36),
.cout(c36)

);

full_adder call37(

.in1({c36, s26, temp4[4]}),
.sum(s37),
.cout(c37)

);

full_adder call38(

.in1({c37, s27, temp4[5]}),
.sum(s38),
.cout(c38)

);

full_adder call39(

.in1({c38, s28, temp4[6]}),
.sum(s39),
.cout(c39)

);

full_adder call310(

.in1({c39, c28, temp4[7]}),
.sum(s310),
.cout(c310)

);

//////////////////////////////////////////////////////////////////////////

assign out[0] = temp0[0] ;

half_adder call41(

.in1({temp0[1], temp1[0]}),
.sum(out[1]) ,
.cout(c41)

);

full_adder call42(

.in1({c41, temp1[1], temp0[2]}),
.sum(out[2]),
.cout(c42)

);

full_adder call43(

.in1({c42, temp0[3], temp1[2]}),
.sum(out[3]),
.cout(c43)

);

full_adder call44(

.in1({c43, temp2[0], s31}),
.sum(out[4]),
.cout(c44)

);

full_adder call45(

.in1({c44, temp3[0], s32}),
.sum(out[5]),
.cout(c45)

);

full_adder call46(

.in1({c45, temp4[0], s33}),
.sum(out[6]),
.cout(c46)

);

full_adder call47(

.in1({c46, temp5[0], s34}),
.sum(out[7]),
.cout(c47)

);

full_adder call48(

.in1({c47, temp5[1], s35}),
.sum(out[8]),
.cout(c48)

);

full_adder call49(

.in1({c48, temp5[2], s36}),
.sum(out[9]),
.cout(c49)

);

full_adder call410(

.in1({c49, temp5[3], s37}),
.sum(out[10]),
.cout(c410)

);

full_adder call411(

.in1({c410, temp5[4], s38}),
.sum(out[11]),
.cout(c411)

);

full_adder call412(

.in1({c411, temp5[5], s39}),
.sum(out[12]),
.cout(c412)

);

full_adder call413(

.in1({c412, temp5[6], s310}),
.sum(out[13]),
.cout(c413)

);

full_adder call414(

.in1({c413, temp5[7], c310}),
.sum(out[14]),
.cout(out[15])

);

endmodule

