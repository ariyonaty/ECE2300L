`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2019 02:38:55 PM
// Design Name: 
// Module Name: divide4
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


module divide4(clk_in, clk_out);

    input       clk_in;
    output reg  clk_out;
    
    reg [1:0] count = 2'b00;
    
    initial clk_out = 0;
    
    always @ (posedge clk_in) begin
        count <= count + 2'b01; 
        if (count == 2) begin
            clk_out = ~clk_out;
            count = 0;
        end
    end
    
endmodule




