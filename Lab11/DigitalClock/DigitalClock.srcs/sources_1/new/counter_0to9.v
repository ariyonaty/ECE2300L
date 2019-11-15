`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:45:47 PM
// Design Name: 
// Module Name: counter_0to9
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


module counter_0to9(clk, en, cout, Q);

    input       clk;
    input       en;
    output      cout;
    output reg  [3:0] Q;
       
    initial  Q = 0;
    
    assign cout = (Q == 9);
    
    always @ (posedge clk) begin
        if (en == 1) begin
            if (Q == 9) Q = 0;
            else Q = Q + 1;
        end
    end

endmodule
