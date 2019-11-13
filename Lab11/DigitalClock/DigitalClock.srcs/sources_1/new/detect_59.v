`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 05:54:16 PM
// Design Name: 
// Module Name: detect_59
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


module detect_59(data0, data1, out);

    input       [3:0] data0;
    input       [3:0] data1;
    output      out;
    
    assign out = (data1 == 5) && (data0 == 9);

endmodule
