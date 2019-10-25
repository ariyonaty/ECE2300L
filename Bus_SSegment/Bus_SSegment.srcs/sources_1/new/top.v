`timescale 1ns / 1ps

module top(
    input [3:0] switch,
    output [7:0] sseg_cathode,
    output [3:0] sseg_anode
    );
    
    assign sseg_anode = switch;
    assign sseg_cathode = 0;
    
endmodule