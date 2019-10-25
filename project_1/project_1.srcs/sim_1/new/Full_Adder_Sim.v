`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2019 02:58:28 AM
// Design Name: 
// Module Name: Full_Adder_Sim
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


module Full_Adder_Sim();

reg [3:0] x, y;
reg Cin;
wire [3:0] s;
wire Cout;

Full_Adder_4bit uut (x, y, Cin, s, Cout);

initial
begin
    x=0; y=0; Cin=0;
#1  x=2; y=6; Cin=0;
#1  x=3; y=7; Cin=1;
#1  x=7; y=8; Cin=0;
#1  x=7; y=8; Cin=1;
end
endmodule
