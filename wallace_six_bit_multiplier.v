`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:45:19 06/14/2019 
// Design Name: 
// Module Name:    wallace_six_bit_multiplier 
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
module wallace_six_bit_multiplier(in1, in2, out);

input [5:0] in1 ;
input [5:0] in2 ;
output [12:0] out ;

reg [5:0] temp0 ; 
reg [5:0] temp1 ;
reg [5:0] temp2 ;
reg [5:0] temp3 ;
reg [5:0] temp4 ;
reg [5:0] temp5 ;

integer i ;

always @(in1 or in2)
begin

	for(i=0; i<=5; i=i+1)
	begin
	
		temp0[i] <= in1[i] &in2[0] ;
		temp1[i] <= in1[i] &in2[1] ;
		temp2[i] <= in1[i] &in2[2] ;
		temp3[i] <= in1[i] &in2[3] ;
		temp4[i] <= in1[i] &in2[4] ;
		temp5[i] <= in1[i] &in2[5] ;
	
	end

end



wire s11, c11, c12, s12, c13, s13, s14, c14, s15, c15, s16, c16, s17, c17,s18,c18,s19,c19, s21, c21, c22, s22, c23, s23, s24, c24, s25, c25, s26, c26, s27,s28,c28,s29,c29, s210,c210; 
wire s31, c31, c32, s32, c33, s33, s34, c34, s35, c35, s36, c36, s37,s38,c38,s39,c39, s310,c310 ;
wire s41, c41, c42, s42, c43, s43, s44, c44, s45, c45, s46, c46, s47,s48,c48,s49,c49, s410,c410 ;
wire s51, c51, c52, s52, c53, s53, s54, c54, s55, c55, s56, c56, s57,s58,c58,s59,c59, s510,c510 ;
wire s61, c61, c62, s62, c63, s63, s64, c64, s65, c65, s66, c66, s67,s68,c68,s69,c69, s610,c610,s611,c611 ;
wire s71, c71, c72, s72, c73, s73, s74, c74, s75, c75, s76, c76, s77,c77,s78,c78,s79,c79, s710,c710,s711,c711 ;


// This all are the partial products and by making of these we will find out the sum at each stage ...


assign out[0] = temp0[0] ;

half_adder call11(

.in1({temp0[1] , temp1[0]}),
.sum(s11) ,
.cout(c11)

);

full_adder call12(

.in1({temp0[2] , temp1[1], temp2[0]}),
.sum(s12) ,
.cout(c12)

);


full_adder call13(

.in1({temp0[3], temp1[2] , temp2[1]}) ,
.sum(s13) ,
.cout(c13)

);

full_adder call14(

.in1({temp0[4], temp1[3] , temp2[2]}) ,
.sum(s14) ,
.cout(c14)

);

full_adder call15(

.in1({temp0[5], temp1[4] , temp2[3]}) ,
.sum(s15) ,
.cout(c15)

);

half_adder call16(

.in1({temp1[5] , temp2[4]}),
.sum(s16) ,
.cout(c16)

);


///////////

half_adder call111(

.in1({temp3[1] , temp4[0]}) ,
.sum(s21) ,
.cout(c21)

);


full_adder call112(

.in1({temp3[2], temp4[1], temp5[0]}),
.sum(s22), 
.cout(c22)

);


full_adder call113(

.in1({temp3[3], temp4[2], temp5[1]}),
.sum(s23), 
.cout(c23)

);

full_adder call114(

.in1({temp3[4], temp4[3], temp5[2]}),
.sum(s24), 
.cout(c24)

);


full_adder call115(

.in1({temp3[5], temp4[4], temp5[3]}),
.sum(s25), 
.cout(c25)

);

half_adder call116(

.in1({temp4[5], temp5[4]}),
.sum(s26) ,
.cout(c26)

);



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


half_adder call21(

.in1({s12, c11}),
.sum(s31), 
.cout(c31)

);


full_adder call22(

.in1({s13, c12, temp3[0]}),
.sum(s32) ,
.cout(c32)

);

full_adder call23(

.in1({s14, c13, s21}),
.sum(s33) ,
.cout(c33)

);


full_adder call24(

.in1({s15, c14, s22}),
.sum(s34) ,
.cout(c34)

);


full_adder call25(

.in1({s16, c15, s23}),
.sum(s35) ,
.cout(c35)

);

full_adder call26(

.in1({temp2[5], c16, s24}),
.sum(s36) ,
.cout(c36)

);



///////////////////////////////////////////////////////////////



half_adder call31(

.in1({s32, c31}),
.sum(s41) ,
.cout(c41)

);

half_adder call32(

.in1({s33, c32}),
.sum(s42) ,
.cout(c42)

);


full_adder call33(

.in1({s34, c33, c21}) ,
.sum(s43) ,
.cout(c43)

);


full_adder call34(

.in1({s35, c34, c22}) ,
.sum(s44) ,
.cout(c44)

);


full_adder call35(

.in1({s36, c35, c23}) ,
.sum(s45) ,
.cout(c45)

);


full_adder call36(

.in1({s25, c36, c24}) ,
.sum(s46) ,
.cout(c46)

);


half_adder call37(

.in1({s26, c25}),
.sum(s47) ,
.cout(c47)

);


half_adder call38(

.in1({temp5[5], c26}),
.sum(s48) ,
.cout(c48)

);


//////////////////////////////////////////////////////////////////////////////////////////////////////


assign out[1] = s11 ;
assign out[2] = s31 ;
assign out[3] = s41 ;


half_adder call41(

.in1({s42, c41}),
.sum(out[4]) ,
.cout(c51)

);


full_adder call42(

.in1({s43, c42, c51}),
.sum(out[5]) ,
.cout(c52)

);

full_adder call43(

.in1({s44, c43, c52}),
.sum(out[6]) ,
.cout(c53)

);

full_adder call44(

.in1({s45, c44, c53}),
.sum(out[7]) ,
.cout(c54)

);

full_adder call45(

.in1({s46, c45, c54}),
.sum(out[8]) ,
.cout(c55)

);

full_adder call46(

.in1({s47, c46, c55}),
.sum(out[9]),
.cout(c56)

); 

full_adder call47(

.in1({s48, c47, c56}),
.sum(out[10]) ,
.cout(c57)

);



half_adder call48(

.in1({c48, c57}) ,
.sum(out[11]) ,
.cout(out[12])

);



endmodule
