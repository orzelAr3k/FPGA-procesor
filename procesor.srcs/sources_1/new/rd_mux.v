`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 14:57:47
// Design Name: 
// Module Name: rd_mux
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


module rd_mux (  
    input rd_op,
    input [7:0]mem_data,
    input [7:0]alu_res,
    output [7:0]out
);

    assign out = (rd_op == 1'b1) ? mem_data : alu_res;
    
endmodule