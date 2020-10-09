`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:42 06/27/2019 
// Design Name: 
// Module Name:    low_power_high_speed_accuracy_controlllable_multiplier 
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
module low_power_high_speed_accuracy_controlllable_multiplier(in1, in2, mask, out);

input [7:0] in1;
input [7:0] in2 ;
input mask ;
output [15:0] out ;

wire [14:0] p ;
wire [12:0] v1 ;
wire [10:0] v2 ;
wire [6:0] q ;
reg [7:0] temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7 ;

integer i ;

always@(in1 or in2)
begin

for(i=0 ;i<=7; i=i+1)
begin

temp0[i] <= (in1[i] &in2[0]);
temp1[i] <= (in1[i] &in2[1]);
temp2[i] <= (in1[i] &in2[2]);
temp3[i] <= (in1[i] &in2[3]);
temp4[i] <= (in1[i] &in2[4]);
temp5[i] <= (in1[i] &in2[5]);
temp6[i] <= (in1[i] &in2[6]);
temp7[i] <= (in1[i] &in2[7]) ;

end


end



wire s11, c11,s12, c12, s13, c13, s14, c14, s15, c15, s16, c16, s17, c17, s18, c18,s19, c19,s110, c110,s112, c112,s113, c113,s114, c114,s115, c115,s116, c116,s111, c111, s21, c21, s22, c22,s23, c23,s24, c24,s25, c25,s26, c26,s27, c27,s28, c28,s29, c29,s210, c210,s211, c211,s212, c212,s213,c214,s214, c213,s32, c32,s31, c31,s33, c33,s34, c34,s35, c35,s36, c36,s37, c37,s38, c38,s39, c39,s310, c310,s311, c311,s312, c312,s313, c313,s41, c41,s42, c42,s41, c43,c45, c44,c46, c47,c48, c49;
wire s51, c51,s52, c52, s53, c53, s54, c54, s55, c55, s56, c56, s57, c57, s58, c58,s59, c59,s510, c510,s511, c511,s512, c512,s513, c513,s514, c514,s515, c515,s516, c516, s61, c61, s62, c62,s63, c63,s64, c64,s65, c65,s66, c66,s67, c67,s68, c68,s69, c69,s610, c610,s611, c611,s612, c612,s613, c613,s72, c72,s71, c71,s73, c73,s74, c74,s75, c75,s76, c76,s77, c77,s78, c78,s79, c79,s710, c710,s711, c711,s712, c712,s713, c713,s714, c714,c81,s82, c82,s81, c83,c85, c84,c86, c87,c88, c89,s83,s85, s84,s86, s87,s88, s89;
wire s91, c91,s92, c92, s93, c93, s94, c94, s95, c95, s96, c96, s97, c97, s98, c98,s99, c99,s910, c910,s912, c912,s913,c9113,s911,c9111;
wire c101, c102,c103,c104,c105,c106,c107,c108,c109,c1010,c1011,c1012,c1013 ;


icac call11(

.in1({temp0[1], temp1[0]}),
.mask(1'b1),
.sum(s11),
.cout(c11)

);


icac call12(

.in1({temp0[2], temp1[1]}),
.mask(1'b1),
.sum(s12),
.cout(c12)

);

icac call13(

.in1({temp0[3], temp1[2]}),
.mask(1'b1),
.sum(s13),
.cout(c13)

);

icac call14(

.in1({temp0[4], temp1[3]}),
.mask(1'b1),
.sum(s14),
.cout(c14)

);

icac call15(

.in1({temp0[5], temp1[4]}),
.mask(1'b1),
.sum(s15),
.cout(c15)

);

icac call16(

.in1({temp0[6], temp1[5]}),
.mask(1'b1),
.sum(s16),
.cout(c16)

);

icac call17(

.in1({temp0[7], temp1[6]}),
.mask(1'b1),
.sum(s17),
.cout(c17)

);

/////////////////


icac call21(

.in1({temp2[1], temp3[0]}),
.mask(1'b1),
.sum(s21),
.cout(c21)

);


icac call22(

.in1({temp2[2], temp3[1]}),
.mask(1'b1),
.sum(s22),
.cout(c22)

);

icac call23(

.in1({temp2[3], temp3[2]}),
.mask(1'b1),
.sum(s23),
.cout(c23)

);

icac call24(

.in1({temp2[4], temp3[3]}),
.mask(1'b1),
.sum(s24),
.cout(c24)

);

icac call25(

.in1({temp2[5], temp3[4]}),
.mask(1'b1),
.sum(s25),
.cout(c25)

);

icac call26(

.in1({temp2[6], temp3[5]}),
.mask(1'b1),
.sum(s26),
.cout(c26)

);

icac call27(

.in1({temp2[7], temp3[6]}),
.mask(1'b1),
.sum(s27),
.cout(c27)

);

/////////////////


icac call31(

.in1({temp4[1], temp5[0]}),
.mask(1'b1),
.sum(s31),
.cout(c31)

);


icac call32(

.in1({temp4[2], temp5[1]}),
.mask(1'b1),
.sum(s32),
.cout(c32)

);

icac call33(

.in1({temp4[3], temp5[2]}),
.mask(1'b1),
.sum(s33),
.cout(c33)

);

icac call34(

.in1({temp4[4], temp5[3]}),
.mask(1'b1),
.sum(s34),
.cout(c34)

);

icac call35(

.in1({temp4[5], temp5[4]}),
.mask(1'b1),
.sum(s35),
.cout(c35)

);

icac call36(

.in1({temp4[6], temp5[5]}),
.mask(1'b1),
.sum(s36),
.cout(c36)

);

icac call37(

.in1({temp4[7], temp5[6]}),
.mask(1'b1),
.sum(s37),
.cout(c37)

);

//////////


icac call41(

.in1({temp6[1], temp7[0]}),
.mask(1'b1),
.sum(s41),
.cout(c41)

);


icac call42(

.in1({temp6[2], temp7[1]}),
.mask(1'b1),
.sum(s42),
.cout(c42)

);

icac call43(

.in1({temp6[3], temp7[2]}),
.mask(1'b1),
.sum(s43),
.cout(c43)

);

icac call44(

.in1({temp6[4], temp7[3]}),
.mask(1'b1),
.sum(s44),
.cout(c44)

);

icac call45(

.in1({temp6[5], temp7[4]}),
.mask(1'b1),
.sum(s45),
.cout(c45)

);

icac call46(

.in1({temp6[6], temp7[5]}),
.mask(1'b1),
.sum(s46),
.cout(c46)

);

icac call47(

.in1({temp6[7], temp7[6]}),
.mask(1'b1),
.sum(s47),
.cout(c47)

);



/////////////////////////////////////////////////////////////////////////////////////////////////// all the icac of the first will now proceed ...



icac call51(

.in1({s12, temp2[0]}),
.mask(1'b1),
.sum(s51),
.cout(c51)

);

icac call52(

.in1({s13, s21}),
.mask(1'b1),
.sum(s52),
.cout(c52)

);

icac call53(

.in1({s14, s22}),
.mask(1'b1),
.sum(s53),
.cout(c53)

);

icac call54(

.in1({s15, s23}),
.mask(1'b1),
.sum(s54),
.cout(c54)

);


icac call55(

.in1({s16, s24}),
.mask(1'b1),
.sum(s55),
.cout(c55)

);

icac call56(

.in1({s17, s25}),
.mask(1'b1),
.sum(s56),
.cout(c56)

);

icac call57(

.in1({temp1[7], s26}),
.mask(1'b1),
.sum(s57),
.cout(c57)

);

////////////////

icac call61(

.in1({s32, temp6[0]}),
.mask(1'b1),
.sum(s61),
.cout(c61)

);


icac call62(

.in1({s33, s41}),
.mask(1'b1),
.sum(s62),
.cout(c62)

);

icac call63(

.in1({s34, s42}),
.mask(1'b1),
.sum(s63),
.cout(c63)

);

icac call64(

.in1({s35, s43}),
.mask(1'b1),
.sum(s64),
.cout(c64)

);

icac call65(

.in1({s36, s44}),
.mask(1'b1),
.sum(s65),
.cout(c65)

);

icac call66(

.in1({s37, s45}),
.mask(1'b1),
.sum(s66),
.cout(c66)

);

icac call67(

.in1({temp5[7], s46}),
.mask(1'b1),
.sum(s67),
.cout(c67)

);

////////////////////////////////////////////////////////////////////////////////// this was stage two where we have used 2 icac ............


icac call71(

.in1({s53, temp4[0]}),
.mask(1'b1),
.sum(s71),
.cout(c71)

);

icac call72(

.in1({s54, s31}),
.mask(1'b1),
.sum(s72),
.cout(c72)

);

icac call73(

.in1({s55, s61}),
.mask(1'b1),
.sum(s73),
.cout(c73)

);

icac call74(

.in1({s56, s62}),
.mask(1'b1),
.sum(s74),
.cout(c74)

);

icac call75(

.in1({s57, s63}),
.mask(1'b1),
.sum(s75),
.cout(c75)

);

icac call76(

.in1({s27, s64}),
.mask(1'b1),
.sum(s76),
.cout(c76)

);

icac call77(

.in1({temp3[7], s65}),
.mask(1'b1),
.sum(s77),
.cout(c77)

);

/////////////////////////////////////////////////////////////


assign p = {temp7[7], s47, s67, s66, s77, s76, s75, s74, s73, s72, s71 ,s52, s51, s11,temp0[0]} ;


assign v1[0] = c11 ;
assign v1[1] = c12 ;
assign v1[2] = (c13 | c21) ;
assign v1[3] = (c14 | c22) ;
assign v1[4] = (c15 | c23 | c31) ;
assign v1[5] = (c16 | c24 | c32) ;
assign v1[6] = (c17 | c25 | c33 | c41) ;
assign v1[7] = (c26 | c34 | c42) ;
assign v1[8] = (c27 | c35 | c43) ;
assign v1[9] = (c36 | c44) ;
assign v1[10] = (c37 | c45) ;
assign v1[11] = (c46) ;
assign v1[12] = (c47) ;



assign v2[0] = (c51) ;
assign v2[1] = (c52) ;
assign v2[2] = (c53) ;
assign v2[3] = (c54) ;
assign v2[4] = (c55 | c61) ;
assign v2[5] = (c56 | c62) ;
assign v2[6] = (c57 | c63) ;
assign v2[7] = (c64) ;
assign v2[8] = (c65) ;
assign v2[9] = (c66) ;
assign v2[10] = (c67) ;


assign q = {c77, c76, c75, c74, c73, c72, c71} ;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

or(s81, v2[2], v1[3]) ;
or(s82, v2[3], v1[4]) ;
or(s83, v2[4], v1[5]) ;
or(s84, v2[5], v1[6]) ;
or(s85, v2[6], v1[7]) ;
or(s86, v2[7], v1[8]) ;
or(s87, v2[8], v1[9]) ;



half_adder call81(

.in1({p[1], v1[0]}),
.sum(s91),
.cout(c91)

);

full_adder call82(

.in1({p[2], v1[1], v2[0]}),
.sum(s92),
.cout(c92)

);

full_adder call83(

.in1({p[3], v1[2], v2[1]}),
.sum(s93),
.cout(c93)

);

full_adder call84(

.in1({p[4], q[0], s81}),
.sum(s94),
.cout(c94)

);

full_adder call85(

.in1({p[5], q[1], s82}),
.sum(s95),
.cout(c95)

);

full_adder call86(

.in1({p[6], q[2], s83}),
.sum(s96),
.cout(c96)

);

full_adder call87(

.in1({p[7], q[3], s84}),
.sum(s97),
.cout(c97)

);

full_adder call88(

.in1({p[8], q[4], s85}),
.sum(s98),
.cout(c98)

);

full_adder call89(

.in1({p[9], q[5], s86}),
.sum(s99),
.cout(c99)

);

full_adder call810(

.in1({p[10], q[6], s87}),
.sum(s910),
.cout(c910)

);

full_adder call811(

.in1({p[11], v2[9], v1[10]}),
.sum(s911),
.cout(c911)

);

full_adder call812(

.in1({p[12], v2[10], v1[11]}),
.sum(s912),
.cout(c912)

);

half_adder call813(

.in1({p[13], v1[12]}),
.sum(s913),
.cout(c913)

);

//////////////////////////////////////////////////////////////////////////

assign out[0] = p[0] ;
assign out[1] = s91 ;

half_adder call91(

.in1({s92 , c91}),
.sum(out[2]) ,
.cout(c101)

);

full_adder call92(

.in1({s93 , c101, c92}),
.sum(out[3]) ,
.cout(c102)

);

full_adder call93(

.in1({s94 , c102, c93}),
.sum(out[4]) ,
.cout(c103)

);

full_adder call94(

.in1({s95 , c103, c94}),
.sum(out[5]) ,
.cout(c104)

);

full_adder call95(

.in1({s96 , c104, c95}),
.sum(out[6]) ,
.cout(c105)

);

full_adder call96(

.in1({s97 , c105, c96}),
.sum(out[7]) ,
.cout(c106)

);

full_adder call97(

.in1({s98 , c106, c97}),
.sum(out[8]) ,
.cout(c107)

);

full_adder call98(

.in1({s99 , c107, c98}),
.sum(out[9]) ,
.cout(c108)

);

full_adder call99(

.in1({s910 , c108, c99}),
.sum(out[10]) ,
.cout(c109)

);

full_adder call910(

.in1({s911 , c109, c910}),
.sum(out[11]) ,
.cout(c1010)

);

full_adder call911(

.in1({s912 , c1010, c911}),
.sum(out[12]) ,
.cout(c1011)

);

full_adder call912(

.in1({s913 , c1011, c912}),
.sum(out[13]) ,
.cout(c1012)

);

full_adder call913(

.in1({p[14] , c1012, c913}),
.sum(out[14]) ,
.cout(out[15])

);

endmodule



