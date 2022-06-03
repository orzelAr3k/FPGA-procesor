`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2022 18:02:26
// Design Name: 
// Module Name: register
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


module register(
    input clk,
    input ce,
    input [7:0]in,
    output [7:0]out
);

    reg [7:0]rgstr = 8'b0;
    
    always @(posedge clk)
    begin
        if(ce)
            rgstr <= in;
        else
            rgstr <= rgstr;
    end
    
    assign out = rgstr;
    
endmodule
