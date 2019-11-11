`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         CPP Engineering
// Engineer:        Ari Yonaty & Sander Zuckerman
// 
// Create Date: 10/25/2019 03:21:25 PM
// Design Name:     3:8 Decoder
// Module Name: decoder
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


module decoder(
    input C, B, A,
    input G1, G2A, G2B,
    output reg [7:0] Y
    );
    
    
wire en = G1 & ~G2A & ~G2B;

always @ (*)
begin
    if (en) begin
        Y[0] = ~(~C & ~B & ~A);
        Y[1] = ~(~C & ~B & A);
        Y[2] = ~(~C & B & ~A);
        Y[3] = ~(~C & B & A);
        Y[4] = ~(C & ~B & ~A);
        Y[5] = ~(C & ~B & A);
        Y[6] = ~(C & B & ~A);
        Y[7] = ~(C & B & A);  
    end else begin 
        Y = 8'b1111_1111;
    end 
end
endmodule