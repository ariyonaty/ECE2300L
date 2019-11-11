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
    input       btn, 
    output   [3:0] led
    );
       
//  TFF     (T,   clk,    Q);  
    TFF u0  (1,     btn, led[0]);
    TFF u1  (1, ~led[0], led[1]);
    TFF u2  (1, ~led[1], led[2]);
    TFF u3  (1, ~led[2], led[3]);
    
endmodule
