`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 08:15:31 PM
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


module top(clk100, seg, AN);
    input   clk100;
    output  [6:0] seg;
    output  [7:0] AN;
   
    
    wire clkSlow;
    wire [3:0] cnt;
 
    assign AN[7:0] = 8'b1111_1110;
    
    //                          clk    , clkSlow)
    slowerClockGen      s1      (clk100, clkSlow);
    
    //                          (clk   , Q)
    counter             c1      (clkSlow, cnt);
    
    //                          (SW , seg)
    seven_seg_display   s2      (cnt, seg);
    

endmodule


