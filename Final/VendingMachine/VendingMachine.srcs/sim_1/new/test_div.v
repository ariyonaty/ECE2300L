`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2019 02:59:15 PM
// Design Name: 
// Module Name: test_div
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


module test_div();

    reg clk_in;
    wire clk_out;
    
    divide4     uut     (clk_in, clk_out);
    
    initial
        clk_in = 1'b0;
    
    always 
        #5  clk_in = ~clk_in;
    
    
endmodule
