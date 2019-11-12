module d_latch(
    input clk,
    input rst,
    output out,
    output Q, NQ
    );

    wire R, S;

    assign R = !(D && clk);
    assign S = !(!D && clk);

    assign Q = !(R && NQ);
    assign NQ = !(Q && S);
endmodule
