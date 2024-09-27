`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 01:08:28 PM
// Design Name: 
// Module Name: Top
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


module Top(a, b, out);

input [1:0] a,b;

output [6:0] out;

wire [3:0] bcd;

wire [1:0] s;

wire cOut;


carry lookAhead(
.a(a),
.b(b),
.s(s),
.cOut(cOut)
);

assign bcd = {1'b0, cOut, s};

bcdConv seg(
.in(bcd),
.out(out)
);


endmodule
