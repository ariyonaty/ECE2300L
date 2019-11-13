`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 04:15:58 PM
// Design Name: 
// Module Name: clken_gen
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


module clken_gen(en, en2, ld, clk_en);

    input       en, en2;
    input       ld;
    output      clk_en;
    
    assign clk_en = (en && en2) || (ld);

endmodule
