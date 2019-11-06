`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 04:18:11 PM
// Design Name: 
// Module Name: button_counter
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


module button_counter(
    input       btn,
    output reg  [3:0] led
    );
        
    initial led = 0;
    
    always @ (posedge btn) begin
        led = led + 1;
    end
 
endmodule
