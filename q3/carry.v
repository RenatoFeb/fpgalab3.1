`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 01:09:00 PM
// Design Name: 
// Module Name: carry
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


module carry(a, b, s, cOut);

input [1:0] a, b;

output [1:0] s;

output cOut;

wire [2:0] wc;

wire [1:0] wa, wp, ws;

assign wa[0] = a[0] & b[0];
assign wa[1] = a[1] & b[1];

assign wp[0] = a[0] ^ b[0];
assign wp[1] = a[1] ^ b[1];

assign wc[0] =1'b0;
assign wc[1] = wa[0]|(wp[0] & wc[0]);
assign wc[2] = wa[1]|(wp[1] & wc[1]);

FA uut1(a[0], b[0], wc[0], s[0]);

FA uut2(a[1], b[1], wc[1], s[1]);

assign cOut = wc[2];

endmodule
