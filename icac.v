`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:24 06/27/2019 
// Design Name: 
// Module Name:    icac 
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
module icac(in1, mask, sum, cout);

input [1:0] in1;
input mask ;
output reg sum ;
output reg cout ;

always @(in1 or mask)
begin

case(mask)
1'b1:begin

sum = (in1[0] ^in1[1]) ;
cout = (in1[0] &in1[1]) ;
		
		end

1'b0:begin
	
sum = (in1[0] |in1[1]) ;
cout = 0 ;
	
	end

endcase
end
endmodule
