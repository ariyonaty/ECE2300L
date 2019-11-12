`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:45:24 PM
// Design Name: 
// Module Name: NegEdgeDFF
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

module NegEdgeDFF(D, clk, Qm, Qs);
    input       D;
    input       clk;
    output reg  Qm;
    output reg  Qs;
    
    always @ (D or clk) begin
        if (clk)
            Qm = D;
    end
    
    always @ (negedge clk) begin
        Qs = Qm;
    end
    
endmodule
    