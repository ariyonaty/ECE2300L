`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 11:15:11 PM
// Design Name: 
// Module Name: Divide_by_Two
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


module Divide_by_Two(
    input       clk,
    output reg  Q
    );
    
    initial Q = 1;
    
    always @ (posedge clk) begin
        Q = ~Q;
    end
    
endmodule