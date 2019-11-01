`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:21:08 PM
// Design Name: 
// Module Name: PosEdgeDFF_Sim
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


module PosEdgeDFF_Sim();

    reg D, clk;
    wire Q;
    
    PosEdgeDFF uut (D, clk, Q);
    
    parameter PERIOD = 8'd50;
    
    always begin
        clk = 1'b0;
        #(PERIOD/2) clk = 1'b1;
        #(PERIOD/2);
    end
        
    initial begin
        #25     D = 1;
        #50     D = 0;
        #10     D = 1;
        #35     D = 0;
        #25     D = 1;
        #50     D = 0;
        #25     D = 1;
        #50     D = 0;
        #25     D = 1;
        #50     D = 0;
        #25     D = 1;
        #50     D = 0;
        #25     D = 1;
    end

endmodule
