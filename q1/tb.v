`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2024 02:58:48 PM
// Design Name: 
// Module Name: tb
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


module tb();

    reg A1, A2, B1, B2;
    
    wire [6:0] seg;
    
    TopMod top(
    .A1(A1),
    .A2(A2),
    .B2(B2),
    .B1(B1),
    .seg(seg)
    );
    
    initial
    begin
    
    #5 A1 = 1'b0; A2 = 1'b0; B1 = 1'b0; B2 = 1'b0; 
    #5 A1 = 1'b1; A2 = 1'b0; B1 = 1'b1; B2 = 1'b0; 
    #5 A1 = 1'b0; A2 = 1'b1; B1 = 1'b0; B2 = 1'b1; 
    #5 A1 = 1'b0; A2 = 1'b0; B1 = 1'b0; B2 = 1'b0; 
    #5 A1 = 1'b1; A2 = 1'b1; B1 = 1'b1; B2 = 1'b1; 
    #5 A1 = 1'b1; A2 = 1'b0; B1 = 1'b0; B2 = 1'b0; 
    #5 A1 = 1'b0; A2 = 1'b0; B1 = 1'b0; B2 = 1'b1; 
    #5 A1 = 1'b1; A2 = 1'b0; B1 = 1'b1; B2 = 1'b0; 
    
    end

endmodule
