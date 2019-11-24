

module shift_reg_nbit(clk, serial_in, en, Q);

    parameter n = 56;

    input       clk;
    input       serial_in;
    input       en;
    output reg  [n-1:0] Q;
    
    always @ (posedge clk) begin
        if (en == 0) Q[n-1:0] <= {serial_in, Q[n-1:1]};
    end

endmodule