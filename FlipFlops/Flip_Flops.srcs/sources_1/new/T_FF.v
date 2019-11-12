module T_FF(
    input T,
    input clk,
    output reg Q
    );
    
    always @(posedge clk) begin
        Q = 1;
        case(T)
            1'b0: begin
                Q <= Q;
            end
            1'b1: begin
                Q <= ~Q;
            end
        endcase
    end 
endmodule 