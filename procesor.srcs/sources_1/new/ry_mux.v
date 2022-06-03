`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 14:57:47
// Design Name: 
// Module Name: ry_mux
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


module ry_mux (
    input [2:0]ry_op,
    input [7:0]R0,
    input [7:0]R1,
    input [7:0]R2,
    input [7:0]R3,
    input [7:0]R4,
    input [7:0]R5,
    input [7:0]R6,
    input [7:0]R7,
    output [7:0]out
);
    
    wire [7:0]mux[7:0];
    
    assign mux[0] = R0;
    assign mux[1] = R1;
    assign mux[2] = R2;
    assign mux[3] = R3;
    assign mux[4] = R4;
    assign mux[5] = R5;
    assign mux[6] = R6;
    assign mux[7] = R7;
    
    assign out = mux[ry_op];
    
    
endmodule