/*
    Input:  8x 7 bit inputs, mux select
    Output: 7 bit output
*/

module mux_8to1(sel, in0, in1, in2, in3, in4, in5, in6, in7, out);

    input       [2:0] sel;
    input       [6:0] in0;
    input       [6:0] in1;
    input       [6:0] in2;
    input       [6:0] in3;
    input       [6:0] in4;
    input       [6:0] in5;
    input       [6:0] in6;
    input       [6:0] in7;
    output reg  [6:0] out;
    
    always @ (*) begin
        case (sel)
            3'b000 : out = in0;
            3'b001 : out = in1;
            3'b010 : out = in2;
            3'b011 : out = in3;
            3'b100 : out = in4;
            3'b101 : out = in5;
            3'b110 : out = in6;
            3'b111 : out = in7;
        endcase
    end

endmodule