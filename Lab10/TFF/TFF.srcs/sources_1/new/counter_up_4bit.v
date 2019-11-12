`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 06:38:20 PM
// Design Name: 
// Module Name: counter_up_4bit
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


module counter_up_4bit(clk, Q);
    
    input       clk;
    output      [3:0] Q;
       
//  TFF     (T,   clk,    Q);  
    TFF u0  (1,   clk, Q[0]);
    TFF u1  (1, ~Q[0], Q[1]);
    TFF u2  (1, ~Q[1], Q[2]);
    TFF u3  (1, ~Q[2], Q[3]);
    
endmodule
