`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2019 04:19:08 PM
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


module top(clk, reset, money_in, sw_in, out, dispense, state, clk_beat);

    input       clk;
    input       reset;
    input       money_in;
    input       [1:0] sw_in;
    output      [1:0] out;
    output      dispense;
    output      [2:0] state;
    output      clk_beat;
    
    
    wire clk_1hz;
    wire clk_out;
    
	//              (clk_in,    clk_out)
    clock_gen   g1  (clk,       clk_1hz);     
    
	//              (clk_in,    clk_out)
    divide4     d1  (clk_1hz,   clk_out);
    
	//              (clk,       reset,  money_in,   in,     out, dispense,  state);
    machine     m1  (clk_out,   reset,  money_in,   sw_in,  out, dispense,  state);

    assign  clk_beat = clk_out;

endmodule
