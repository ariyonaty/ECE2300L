`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 08:06:46 PM
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(clk, clk_en, carry_out, Q);

    input       clk;
    input       clk_en;
    output reg  carry_out;
    output reg  [3:0] Q;
    
    initial Q = 0;
    initial carry_out = 0;
    
    always @ (posedge clk) begin
        if  ((Q != 9) && (clk_en == 1)) begin
            Q = Q + 1;
        end else if (clk_en == 0) begin
            Q = Q;
            carry_out = carry_out;
        end else if (Q == 9) begin
            Q = 0;
            carry_out = 1;
        end
    end
    
endmodule








