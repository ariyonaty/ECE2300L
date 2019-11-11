`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 12:39:47 AM
// Design Name: 
// Module Name: seven_seg_display
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


module seven_seg_display(
    input       [3:0] SW,
    output reg  [6:0] seg
    );
        
    always @ (SW) begin
        case (SW)
            4'b0000 :   seg = ~(7'h3f);     // 0
            4'b0001 :   seg = ~(7'h06);     // 1 
            4'b0010 :   seg = ~(7'h5b);     // 2 
            4'b0011 :   seg = ~(7'h4f);     // 3 
            4'b0100 :   seg = ~(7'h66);     // 4 
            4'b0101 :   seg = ~(7'h6d);     // 5 
            4'b0110 :   seg = ~(7'h7d);     // 6 
            4'b0111 :   seg = ~(7'h07);     // 7 
            4'b1000 :   seg = ~(7'h7f);     // 8 
            4'b1001 :   seg = ~(7'h6f);     // 9 
            4'b1010 :   seg = ~(7'h77);     // 10
            4'b1011 :   seg = ~(7'h7c);     // 11
            4'b1100 :   seg = ~(7'h39);     // 12
            4'b1101 :   seg = ~(7'h5e);     // 13
            4'b1110 :   seg = ~(7'h79);     // 14
            4'b1111 :   seg = ~(7'h71);     // 15 
        endcase
    end
endmodule       
     