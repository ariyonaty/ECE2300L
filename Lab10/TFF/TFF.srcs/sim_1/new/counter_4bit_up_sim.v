`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2019 11:33:15 PM
// Design Name: 
// Module Name: counter_4bit_up_sim
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


module counter_4bit_up_sim();

    reg clk;
    wire [3:0] Q;
    
    counter_4bit_up uut (clk, Q);
    
    initial begin
        clk = 0;
        forever #50 clk = ~clk;
    end
endmodule
