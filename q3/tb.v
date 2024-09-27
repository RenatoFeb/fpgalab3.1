`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 01:40:59 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
module tb();

    reg [1:0] a, b;
    
    wire [6:0] out;
    
    Top top(
    .a(a),
    .b(b),
    .out(out)
    );
    
    initial
    begin
    
    #5 a[0] = 1'b0; a[1] = 1'b0; b[0] = 1'b0; b[1] = 1'b0; 
    #5 a[0] = 1'b1; a[1] = 1'b0; b[0] = 1'b1; b[1] = 1'b0; 
    #5 a[0] = 1'b0; a[1] = 1'b1; b[0] = 1'b0; b[1] = 1'b1; 
    #5 a[0] = 1'b0; a[1] = 1'b0; b[0] = 1'b0; b[1] = 1'b0; 
    #5 a[0] = 1'b1; a[1] = 1'b1; b[0] = 1'b1; b[1] = 1'b1; 
    #5 a[0] = 1'b1; a[1] = 1'b0; b[0] = 1'b0; b[1] = 1'b0; 
    #5 a[0] = 1'b0; a[1] = 1'b0; b[0] = 1'b0; b[1] = 1'b1; 
    #5 a[0] = 1'b1; a[1] = 1'b0; b[0] = 1'b1; b[1] = 1'b0; 
    
    end

endmodule