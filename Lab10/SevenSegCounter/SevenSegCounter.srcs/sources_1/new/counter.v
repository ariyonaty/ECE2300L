`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 08:06:41 PM
// Design Name: 
// Module Name: counter
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



module counter(clk, Q);
    input       clk;
    output      [3:0] Q;
  
  
              
//  DFF     (    D,            clk,     Q);  
    DFF u0  (~Q[0],           ~clk,     Q[0]);
    DFF u1  (~Q[1],          ~Q[0],     Q[1]);
    DFF u2  (~Q[2],          ~Q[1],     Q[2]);
    DFF u3  (~Q[3],          ~Q[2],     Q[3]);
    
endmodule

