`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2024 03:24:23 PM
// Design Name: 
// Module Name: TopMod
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TopMod( A1, A2, B1, B2, seg);

input A1, A2, B1, B2;
output [6:0] seg;


wire [1:0] out;
wire c1, c2;
wire [3:0] bcd;

assign bcd = {1'b0, c2, out};





FA add1(
.A(A1),
.B(B1),
.CI(1'b0),
.SUM(out[0]),
.CO(c1)
);


FA add2(
.A(A2),
.B(B2),
.CI(c1),
.SUM(out[1]),
.CO(c2)
);

sumToBCD conv(
.in(bcd),
.out(seg)
);


endmodule

module sumToBCD(in, out );

input [3:0] in;

output reg [6:0] out;

always @(in)
begin

    case(in)
        4'b0000 :  out = 7'b1000000;
        4'b0001 :  out = 7'b1111001;
        4'b0010 :  out = 7'b0100100;
        4'b0011 :  out = 7'b0110000;
        4'b0100 :  out = 7'b0011001;
        4'b0101 :  out = 7'b0010010;
        4'b0110 :  out = 7'b0000010;
        4'b0111 :  out = 7'b1111000;
        default : out = 7'b0000000;

        endcase
        end 
endmodule

module FA( A,B,CI, SUM, CO);

input A, B, CI;

output SUM, CO;

wire sum0, out1, out2;


xor(sum0, A, B);

xor(SUM, CI, sum0);

and(out1, A, B);

and(out2, sum0, CI);

or(CO, out2, out1);


endmodule