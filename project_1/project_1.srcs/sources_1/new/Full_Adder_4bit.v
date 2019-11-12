`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2019 02:51:16 AM
// Design Name: 
// Module Name: Full_Adder_4bit
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


module Full_Adder_4bit(
    input [3:0] x,
    input [3:0] y,
    input Cin,
    output [3:0] s,
    output Cout
    );
    wire C1, C2, C3;
    
    Full_Adder_Bit FA1 (x[0], y[0], Cin, C1,   s[0]);
    Full_Adder_Bit FA2 (x[1], y[1], C1,  C2,   s[1]);
    Full_Adder_Bit FA3 (x[2], y[2], C2,  C3,   s[2]);
    Full_Adder_Bit FA4 (x[3], y[3], C3,  Cout, s[3]);
        
endmodule
