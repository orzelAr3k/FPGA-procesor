`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 14:57:47
// Design Name: 
// Module Name: alu_mux
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


module alu_mux(
    input [1:0]alu_op,
    input [7:0]and_in,
    input [7:0]add_in,
    input [7:0]eq_in,
    input [7:0]imm_in,
    output [7:0]alu_res
);

    wire [7:0]mux[3:0];
    
    assign mux[0] = and_in;
    assign mux[1] = add_in;
    assign mux[2] = eq_in;
    assign mux[3] = imm_in;
    assign alu_res = mux[alu_op];
    
endmodule
