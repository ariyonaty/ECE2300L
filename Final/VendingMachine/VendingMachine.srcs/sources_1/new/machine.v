`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2019 03:43:12 PM
// Design Name: 
// Module Name: machine
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


module machine(clk, reset, money_in, in, out, dispense, state);

    input       clk;
    input       reset;
    input       money_in;
    input       [1:0] in;           // 00 = $0, 01 = $1, 10 = $2, 11 = $5
    output reg  [1:0] out;
    output reg  dispense;
    output      [2:0] state;
    
    
    reg [2:0] state, next_state;
    
    parameter   S0  = 3'b000,
                S1  = 3'b001,
                S3  = 3'b010,
                S5  = 3'b011,
                S5a = 3'b100,
                S6  = 3'b101,
                S6a = 3'b110,
                S6b = 3'b111;
    
    always @ (posedge clk or posedge reset) begin
        if (reset)          state <= S0;
        else                state <= next_state;
    end
    
    always @ (posedge clk) begin
        case (state)
            S0:     if          (in == 2'b00)   begin   next_state <= S0;   out = 2'b00;   dispense = 1'b0 ; end     
                    else if     (in == 2'b01)   begin   next_state <= S1;   out = 2'b00;   dispense = 1'b0 ; end 
                    else if     (in == 2'b10)   begin   next_state <= S0;   out = 2'b00;   dispense = 1'b1 ; end
                    else if     (in == 2'b11)   begin   next_state <= S5;   out = 2'b10;   dispense = 1'b0 ; end                   
            S1:     if          (in == 2'b00)   begin   next_state <= S1;   out = 2'b00;   dispense = 1'b0 ; end     
                    else if     (in == 2'b01)   begin   next_state <= S0;   out = 2'b00;   dispense = 1'b1 ; end 
                    else if     (in == 2'b10)   begin   next_state <= S3;   out = 2'b01;   dispense = 1'b0 ; end
                    else if     (in == 2'b11)   begin   next_state <= S6;   out = 2'b01;   dispense = 1'b0 ; end
            S3:                                 begin   next_state <= S0;   out = 2'b00;   dispense = 1'b1 ; end
            S5:                                 begin   next_state <= S5a;  out = 2'b01;   dispense = 1'b0 ; end
            S5a:                                begin   next_state <= S0;   out = 2'b00;   dispense = 1'b1 ; end
            S6:                                 begin   next_state <= S6a;  out = 2'b10;   dispense = 1'b0 ; end
            S6a:                                begin   next_state <= S6b;  out = 2'b01;   dispense = 1'b0 ; end
            S6b:                                begin   next_state <= S0;   out = 2'b00;   dispense = 1'b1 ; end
            default:                            begin   next_state <= S0;   out = 2'b00;   dispense = 1'b0 ; end                                
        endcase
    end
  
endmodule
