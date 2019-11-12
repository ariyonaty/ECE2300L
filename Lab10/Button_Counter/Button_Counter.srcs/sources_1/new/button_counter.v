`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 04:18:11 PM
// Design Name: 
// Module Name: button_counter
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


module button_counter(btn, led);

    input       btn;
    output      [3:0] led;
       
//  TFF     (T,   clk,    Q);  
    TFF u0  (1,     btn, led[0]);
    TFF u1  (1, ~led[0], led[1]);
    TFF u2  (1, ~led[1], led[2]);
    TFF u3  (1, ~led[2], led[3]);
 
endmodule
