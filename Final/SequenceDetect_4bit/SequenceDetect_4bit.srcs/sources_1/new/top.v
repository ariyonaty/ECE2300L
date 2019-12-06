`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 09:36:09 PM
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


module top(clk, pb_sw, sw, led, out, clk_out);

    input       clk;
    input       pb_sw;
    input       sw;
    output      [3:0] led;
    output      out;
    output      clk_out;

    wire clk_1hz;

    assign clk_out = clk_1hz;

    clock_gen   g1  (clk,   clk_1hz);

//                  (seq_in,    clk,    reset,  state,  out)
    seq_detect  d1  (sw,    clk_1hz,    pb_sw,  led,    out); 

endmodule