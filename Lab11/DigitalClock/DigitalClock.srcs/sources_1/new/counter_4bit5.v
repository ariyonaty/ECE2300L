`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:53:40 PM
// Design Name: 
// Module Name: counter_4bit5
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


module counter_4bit5(clk, clk_en, Q);

    input       clk;
    input       clk_en;
    output reg  [3:0] Q;
    
    initial Q = 0;
    
    always @ (posedge clk) begin
        if  ((Q != 5) && (clk_en == 1)) begin
            Q = Q + 1;
        end else if (clk_en == 0) begin
            Q = Q;
        end else if (Q == 5) begin
            Q = 0;
        end
    end
    
endmodule