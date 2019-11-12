`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:18:55 PM
// Design Name: 
// Module Name: PosEdgeDFF
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




module counter_4bit_up(
    input       clk,
    output      [3:0] Q
    );
    
    wire clkSlow;
    slowerClockGen gen0 (clk, clkSlow);
              
//  DFF     (    D,       clk,            Q);  
    DFF u0  (~Q[0],       ~clkSlow,     Q[0]);
    DFF u1  (~Q[1],          ~Q[0],     Q[1]);
    DFF u2  (~Q[2],          ~Q[1],     Q[2]);
    DFF u3  (~Q[3],          ~Q[2],     Q[3]);
    
endmodule
