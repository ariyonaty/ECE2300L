`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:18:55 PM
// Design Name: 
// Module Name: PosEdgeDFF
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


module DFF(
    input       D,
    input       clk,
    output reg  Q
    );
    
    always @ (posedge clk) begin
        Q <= D;
    end
endmodule

module counter_4bit_up(
    input       clk,
    output      [3:0] Q
    );
  
              
//  DFF     (    D,       clk,            Q);  
    DFF u0  (~Q[0],           ~clk,     Q[0]);
    DFF u1  (~Q[1],          ~Q[0],     Q[1]);
    DFF u2  (~Q[2],          ~Q[1],     Q[2]);
    DFF u3  (~Q[3],          ~Q[2],     Q[3]);
    
endmodule

module slowerClockGen(
    input       clk,
    output reg  clkSlow
    );
    
    reg [26:0] counter;
    
    always @ (posedge clk) begin
        counter = counter + 1;
        if (counter == 50_000_000) begin
            clkSlow = ~ clkSlow;
            counter = 0;
        end
    end
endmodule

module seven_seg_display(
    input       [3:0] in,
    output reg  [6:0] seg
    );
        
    always @ (in) begin
        case (in)
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

module top(
    input   clk100,
    output  [6:0] seg,
    output  [7:0] AN
    );
    
    wire clkSlow;
    wire [3:0] cnt;
 
    assign AN[7:0] = 8'b1111_1110;
    
    slowerClockGen  u1  (clk100, clkSlow);
    counter_4bit_up u2 (clkSlow, cnt);
    seven_seg_display u3 (cnt, seg);
    

endmodule       