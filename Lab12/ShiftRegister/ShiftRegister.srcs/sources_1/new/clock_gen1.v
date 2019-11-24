/*
    Input:  100 MHz clock
    Output: 1 Hz clock
*/

module clock_gen1(clk_in, clk_out);

    input       clk_in;
    output reg  clk_out;
    
    reg [26:0] counter;
    
    always @ (posedge clk_in) begin
        counter = counter + 1;
        if (counter == 50_000_00) begin
            clk_out = ~clk_out;
            counter = 0;
        end
    end

endmodule