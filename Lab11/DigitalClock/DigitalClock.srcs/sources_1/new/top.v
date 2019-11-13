`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 03:58:14 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(clk100, sw1, sw2, sw3, led, seg, an);

    input       clk100;
    input       sw1, sw2, sw3;
    output      led;
    output      [6:0] seg;
    output      [7:0] an;
    
    wire clk400;
    wire clk1;
    wire [1:0] cnt;
    wire clk_en0;
    wire clk_en1;
    wire clk_en2;
    wire clk_en3;
    wire cout1;
    wire cout2;
    wire [3:0] data0;
    wire [3:0] data1;
    wire [3:0] data2;
    wire [3:0] data3;
    wire eq59;
    wire [3:0] data_out;
    
    clock_gen400    g0      (clk100,    clk400);
    
    clock_gen1      g1      (clk400,    clk1); 
    
    counter_2bit    c0      (clk400,    cnt);
    
    clken_gen       e0      (1,         1,          1,      clk_en0);
    
    counter_0to9    c1      (clk1,      clk_en0,     cout1,  data0);
    
    clken_gen       e1      (1,         cout1,      sw1,    clk_en1);
    
    counter_0to5   c2      (clk1,      clk_en1,     data1);   
    
    detect_59       d0      (data0,     data1,      eq59);
    
    clken_gen       e2      (1,         eq59,       sw2,    clk_en2);
    
    counter_0to9   c3      (clk1,      clk_en2,     cout2,  data2);
    
    clken_gen       e3      (cout2,     eq59,       sw3,    clk_en3);
    
    counter_0to5   c4      (clk1,      clk_en3,     data3);
    
    mux_4to1        m0      (cnt,       data0,      data1,  data2,      data3,  data_out);
    
    seven_seg_decoder s0    (data_out,  seg); 
    
    decoder_2to4    d1      (cnt,       an[3:0]);
         
         
    assign led = clk1;
    assign an[7:4] = 4'b1111;
    

endmodule





