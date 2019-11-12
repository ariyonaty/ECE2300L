`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 10:56:26 PM
// Design Name: 
// Module Name: TFF
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


module TFF(
    input       T,
    input       clk,
    output reg  Q
    );
 
    initial Q = 0;
    
    always @ (posedge clk) begin
 
        if (T) begin
            Q <= ~Q;
        end
    
    end
    
endmodule

module counter_4bit_up(
    input       clk, 
    output   [3:0] Q
    );
       
//  TFF     (T,   clk,    Q);  
    TFF u0  (1,   clk, Q[0]);
    TFF u1  (1, ~Q[0], Q[1]);
    TFF u2  (1, ~Q[1], Q[2]);
    TFF u3  (1, ~Q[2], Q[3]);
    
endmodule
