`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 08:24:22 PM
// Design Name: 
// Module Name: divide_by_two
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


module divide_by_two(
    input clk,
    output reg Q
    );
    
    initial Q = 1;
    
    always @(posedge clk) begin
        Q = ~Q;
    end 
        
endmodule 
