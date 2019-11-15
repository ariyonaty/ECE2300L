`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:45:47 PM
// Design Name: 
// Module Name: counter_0to5
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


module counter_0to5(clk, en, Q);

    input       clk;
    input       en;
    output reg  [3:0] Q;
       
    
    always @ (posedge clk) begin
        if (en == 1) begin
            if (Q == 5) Q = 0;
            else Q = Q + 1;
        end
    end
    
endmodule
