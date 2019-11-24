/*
    Input:  300 Hz clock
    Output: 3-bit counter
*/

module counter_3bit(clk, out);

    input       clk;
    output reg  [2:0] out;
    
    always @ (posedge clk)
        out = out + 1;

endmodule