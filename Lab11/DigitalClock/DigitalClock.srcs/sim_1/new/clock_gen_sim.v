`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:07:09 PM
// Design Name: 
// Module Name: clock_gen_sim
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


module clock_gen_sim();

    reg clk100;
    wire clk1;
//    wire clk4;
    
    clock_gen uut (clk100, clk1);//, clk4);
    
    always
        #5 clk100 = ~clk100;
        
    initial begin
        clk100 = 0;
//        clk4 = 0;
    end        
        
endmodule
