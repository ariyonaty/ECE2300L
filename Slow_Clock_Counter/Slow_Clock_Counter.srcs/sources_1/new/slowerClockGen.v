`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 08:00:24 PM
// Design Name: 
// Module Name: slowerClockGen
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


module TFF(
    input       T,
    input       clk,
    output reg  Q
    );
 
    initial Q = 0;
    
    always @ (posedge clk) begin
 
        if (T) begin
            Q <= ~Q;
        end
    
    end
    
endmodule




module slowerClockGen(
    input       clk,
    output reg  clkSlow,
    output      [3:0] Q
    );
    
    reg [26:0] counter;
    
    always @ (posedge clk) begin
        counter = counter + 1;
        if (counter == 50_000_000) begin
            clkSlow = ~ clkSlow;
            counter = 0;
        end
    end
    
    TFF u0  (1,clkSlow, Q[0]);
    TFF u1  (1,  ~Q[0], Q[1]);
    TFF u2  (1,  ~Q[1], Q[2]);
    TFF u3  (1,  ~Q[2], Q[3]);
    
endmodule

//module counter_4bit_up(
//    input       clk,
//    output   [3:0] Q
//    );
              
////  TFF     (T,   clk,    Q);  
//    TFF u0  (1,    clk, Q[0]);
//    TFF u1  (1,  ~Q[0], Q[1]);
//    TFF u2  (1,  ~Q[1], Q[2]);
//    TFF u3  (1,  ~Q[2], Q[3]);
    
//endmodule

//module main(
//    input       clk,
//    output      clkSlow,
//    output      [3:0] LED
//    );
    
//    slowerClockGen  u1  (clk, clkSlow);
//    counter_4bit_up u2  (clkSlow, LED); 
    
//endmodule