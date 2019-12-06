`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 09:36:09 PM
// Design Name: 
// Module Name: seq_detect
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


module seq_detect(seq_in, clk, reset, state, out);

    input       seq_in;
    input       clk;
    input       reset;
    output      [3:0] state;
    output reg  out;
    
    reg [3:0] state, next_state;
    
    parameter   S0 = 4'b0000,
                S1 = 4'b0001,
                S2 = 4'b0010,
                S3 = 4'b0100,
                S4 = 4'b1000;
               
    
    always @ (posedge clk or posedge reset)
        if (reset) begin
            state <= S0;
        end else begin
            state <= next_state;
        end

    always @ (*)    
        case (state)
            S0: if (seq_in) next_state <= S1;  else next_state <= S0;
            S1: if (seq_in) next_state <= S1;  else next_state <= S2;
            S2: if (seq_in) next_state <= S1;  else next_state <= S3;
            S3: if (seq_in) next_state <= S4;  else next_state <= S0;
            S4: if (seq_in) next_state <= S1;  else next_state <= S2;
            default: next_state <= S0;
        endcase        
         
        
    always @  (*)
        case (state)
            S0, S1, S2, S3: out <= 1'b0;
                        S4: out <= 1'b1;
            default: out <= 1'b0;
        endcase
          
endmodule