`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:18:55 PM
// Design Name: 
// Module Name: PosEdgeDFF
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


module PosEdgeDFF(
    input       D,
    input       clk,
    output reg  Q
    );
    
    always @ (posedge clk) begin
        Q <= D;
    end
endmodule
