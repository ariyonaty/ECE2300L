
module top(clk100, SW, SerialSW, ShiftLoadSW, LED, AN, SEG);

    input       clk100;
    input       [3:0] SW;
    input       SerialSW;
    input       ShiftLoadSW;
    output      [3:0] LED;
    output      [7:0] AN;
    output      [6:0] SEG;
    
    wire clk300;
    wire clk1;
    wire [3:0] Q;
    wire [55:0] X;
    wire [2:0] A;
    wire [6:0] MuxOut;
    
    assign SEG = ~MuxOut;
    assign LED = Q;
    
    clock_gen300    g0      (clk100,    clk300);
    clock_gen1      g1      (clk100,    clk1);
    
    counter_3bit    c0      (clk300,    A);
    
    decoder_3to8    d0      (A,         AN);
    
    shift_reg_4bit  s0      (clk1,      X[0],       ShiftLoadSW,    SW,     Q);
    shift_reg_nbit  s1      (clk1,      Q[0],       ShiftLoadSW,    X);
    
    mux_8to1        m0      (A,         X[6:0],    X[13:7],    X[20:14],    X[27:21],    X[34:28],  X[41:35],   X[48:42],   X[55:49],   MuxOut);
     
endmodule