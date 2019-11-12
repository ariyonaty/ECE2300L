module PosEdge_D_FF(
    input D, clk,
    output reg Q
    );
    
    always @ (posedge clk) begin
        Q <= D;
    end
endmodule
