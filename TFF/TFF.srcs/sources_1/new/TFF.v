`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 10:56:26 PM
// Design Name: 
// Module Name: TFF
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


module TFF(
    input       T,
    input       clk,
    output reg  Q
    );
 
    initial Q = 1;
    
    always @ (posedge clk) begin
 
        if (T == 1) begin
            Q <= ~Q;
        end
    
    end
    
endmodule