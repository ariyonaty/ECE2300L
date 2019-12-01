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
    output      [7:0] state;
    output reg  out;
    
    reg [7:0] state, next_state;
    
    parameter   S0 = 8'b00000000,
                S1 = 8'b00000001,
                S2 = 8'b00000010,
                S3 = 8'b00000100,
                S4 = 8'b00001000,
                S5 = 8'b00010000,
                S6 = 8'b00100000,
                S7 = 8'b01000000,
                S8 = 8'b10000000;
    
    always @ (posedge clk or posedge reset)
        if (reset) begin
            state <= S0;
        end else begin
            state <= next_state;
        end

    always @ (*)    
        case (state)
            S0: if (seq_in) next_state <= S1;  else next_state <= S0;
            S1: if (seq_in) next_state <= S0;  else next_state <= S2;
            S2: if (seq_in) next_state <= S0;  else next_state <= S3;
            S3: if (seq_in) next_state <= S4;  else next_state <= S0;
            S4: if (seq_in) next_state <= S1;  else next_state <= S5;
            S5: if (seq_in) next_state <= S6;  else next_state <= S3;
            S6: if (seq_in) next_state <= S7;  else next_state <= S2;
            S7: if (seq_in) next_state <= S0;  else next_state <= S8;
            S8: if (seq_in) next_state <= S0;  else next_state <= S3; 
            default: next_state <= S0;
        endcase        
         
        
    always @  (*)
        case (state)
            S0, S1, S2, S3, S4, S5, S6, S7: out <= 1'b0;
                                        S8: out <= 1'b1;
            default: out <= 1'b0;
        endcase
          
endmodule
