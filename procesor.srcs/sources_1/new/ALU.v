`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 14:57:47
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [7:0]rx,
    input [7:0]imm,
    output [7:0]and_out,
    output [7:0]add_out,
    output [7:0]eq_out,
    output [7:0]imm_out
);

    assign and_out = rx & imm;
    assign add_out = rx + imm;
    assign eq_out = (rx == 8'b0) ? 8'b1 : 8'b0;
    assign imm_out = imm;
      
endmodule
