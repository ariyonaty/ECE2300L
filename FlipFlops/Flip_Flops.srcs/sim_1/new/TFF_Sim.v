`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 07:41:43 PM
// Design Name: 
// Module Name: PosEdge_DFF_Sim
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


module TFF_Sim();

    reg T, clk;
    wire Q;
    
    T_FF uut (T, clk, Q);
    
    parameter PERIOD = 8'd50;

    always begin
        clk = 1'b0;
        #(PERIOD/2) clk = 1'b1;
        #(PERIOD/2);
    end
		
    initial begin
        
    #25 T = 1;
    #50 T = 0;
    #50 T = 1;
    #50 T = 0;
    #35 T = 1;
    #10 T = 0;
    #25 T = 1;
    end
    
endmodule
