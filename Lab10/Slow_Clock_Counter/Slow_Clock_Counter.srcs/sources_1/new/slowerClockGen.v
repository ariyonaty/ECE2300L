`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 08:00:24 PM
// Design Name: 
// Module Name: slowerClockGen
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
    clock_gen(clk, clkSlow);
              
//  TFF     (T,   clk,    Q);  
    TFF u0  (1,clkSlow, Q[0]);
    TFF u1  (1,  ~Q[0], Q[1]);
    TFF u2  (1,  ~Q[1], Q[2]);
    TFF u3  (1,  ~Q[2], Q[3]);
    
endmodule



