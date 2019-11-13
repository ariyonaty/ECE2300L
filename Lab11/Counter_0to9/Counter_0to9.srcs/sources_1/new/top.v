`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 08:22:11 PM
// Design Name: 
// Module Name: top
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


module top(sw, clk100, led, seg, AN);

    input       sw;
    input       clk100;
    output      led;
    output      [6:0] seg;
    output      [7:0] AN;
    
    wire clk1;
    wire [3:0] cnt;
    
    assign AN = 8'b1111_1110;
    
    //                          (clk   , clkSlow)
    clock_gen           g1      (clk100,    clk1);
    
    //                          (clk,   clk_en, carry_out,  Q)
    counter_4bit        c1      (clk1,  sw,     led,        cnt);
    
    //                          (SW , seg)
    seven_seg_decoder   s2      (cnt, seg);

endmodule
