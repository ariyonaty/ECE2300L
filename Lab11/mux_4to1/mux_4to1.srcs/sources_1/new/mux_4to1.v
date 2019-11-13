`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 02:33:23 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(sel, in0, in1, in2, in3, out);

    input       [1:0] sel;
    input       [3:0] in0;
    input       [3:0] in1;
    input       [3:0] in2;
    input       [3:0] in3;
    output reg  [3:0] out;
    
    always @ (*) begin
        case (sel)
            2'b00 : out = in0;
            2'b01 : out = in1;
            2'b10 : out = in2;
            2'b11 : out = in3;
        endcase
    end
    
endmodule



