`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         CPP Engineering
// Engineer:        Ari Yonaty & Sander Zuckerman   
// 
// Create Date: 10/25/2019 03:42:00 PM
// Design Name:     3:8 Decoder
// Module Name: decoder_sim
// Project Name:    3:8 Decoder
// Target Devices:  Nexys A7 - 100T
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


module decoder_sim();

reg C, B, A;
reg G1, G2A, G2B;
wire [7:0] Y;

decoder uut (C, B, A, G1, G2A, G2B, Y);

initial begin
    C=0; B=0; A=0; G1=1; G2A=0; G2B=0;  // testing 0
#1  C=0; B=0; A=1; G1=1; G2A=0; G2B=0;  // testing 1   
#1  C=0; B=1; A=0; G1=1; G2A=0; G2B=0;  // testing 2
#1  C=0; B=1; A=1; G1=1; G2A=0; G2B=0;  // testing 3
#1  C=1; B=0; A=0; G1=1; G2A=0; G2B=0;  // testing 4
#1  C=1; B=0; A=1; G1=1; G2A=0; G2B=0;  // testing 5
#1  C=1; B=1; A=0; G1=1; G2A=0; G2B=0;  // testing 6
#1  C=1; B=1; A=1; G1=1; G2A=0; G2B=0;  // testing 7
#1  C=0; B=0; A=0; G1=0; G2A=0; G2B=0;  // testing enable OFF
end
endmodule
