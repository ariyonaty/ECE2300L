`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 07:37:09 PM
// Design Name: 
// Module Name: slow_counter_dff
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


module slow_counter_dff(clk, Q);
    
    input       clk;
    output      [3:0] Q;
    
    wire clkSlow;
    clock_gen gen0 (clk, clkSlow);
              
//  DFF     (    D,       clk,            Q);  
    DFF u0  (~Q[0],       ~clkSlow,     Q[0]);
    DFF u1  (~Q[1],          ~Q[0],     Q[1]);
    DFF u2  (~Q[2],          ~Q[1],     Q[2]);
    DFF u3  (~Q[3],          ~Q[2],     Q[3]);
    
endmodule
