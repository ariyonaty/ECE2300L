`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:45:47 PM
// Design Name: 
// Module Name: counter_0to9
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


module counter_0to9(clk, en, cout, cnt);

    input       clk;
    input       en;
    output      cout;
    output      [3:0] cnt;
       
    //                          (clk,   clk_en, carry_out,  Q)
    counter_4bit9       c1      (clk,  en,     cout,        cnt);
    

endmodule
