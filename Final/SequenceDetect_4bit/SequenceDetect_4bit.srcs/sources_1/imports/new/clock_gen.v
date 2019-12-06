`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 09:36:09 PM
// Design Name: 
// Module Name: clock_gen
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


module clock_gen(clk_in, clk_out);

    input       clk_in;
    output reg  clk_out;
    
    reg [26:0] counter;
    
    always @ (posedge clk_in) begin
        counter = counter + 1;
        if (counter == 50_000_000) begin
            clk_out = ~ clk_out;
            counter = 0;
        end
    end
    
endmodule
