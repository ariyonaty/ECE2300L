/*
    4 bit shift register
*/

module shift_reg_4bit(clk, serial_in, load, parallel_in, Q);

    input       clk;
    input       serial_in;
    input       load;
    input       [3:0] parallel_in;
    output      [3:0] Q;
    
    wire i3;
    wire i2;
    wire i1;
    wire i0;
    
    assign i3 = (serial_in & ~load) | (load & parallel_in[3]);
    assign i2 = (Q[3] & ~load) | (load & parallel_in[2]);
    assign i1 = (Q[2] & ~load) | (load & parallel_in[1]);
    assign i0 = (Q[1] & ~load) | (load & parallel_in[0]);
    
    dff     d3      (i3,    clk,    Q[3]);
    dff     d2      (i2,    clk,    Q[2]);
    dff     d1      (i1,    clk,    Q[1]);
    dff     d0      (i0,    clk,    Q[0]);
    
endmodule;