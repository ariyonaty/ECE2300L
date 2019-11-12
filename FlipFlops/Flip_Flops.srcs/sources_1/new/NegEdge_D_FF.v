module NegEdge_D_FF(
    input D, clk,
    output reg Q
    );
    
    always @ (negedge clk) begin
        Q <= D;
    end
endmodule
