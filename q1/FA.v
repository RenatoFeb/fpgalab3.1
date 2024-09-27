`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2024 02:52:25 PM
// Design Name: 
// Module Name: FA
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


module FA( A,B,CI, SUM, CO);

input A, B, CI;

output SUM, CO;

wire sum0, out1, out2;


or(sum0, A, B);

or(SUM, CIm, sum0);

and(out1, A, B);

and(out2, sum0, CI);

or(CO, out2, out1);


endmodule
