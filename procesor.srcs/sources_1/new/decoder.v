`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 14:53:57
// Design Name: 
// Module Name: decoder
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


module decoder (
    input [2:0]d_op,
    output [6:0]out
);
    
    assign out[0] = (d_op == 3'd0) ? 1'b1 : 1'b0;
    assign out[1] = (d_op == 3'd1) ? 1'b1 : 1'b0;
    assign out[2] = (d_op == 3'd2) ? 1'b1 : 1'b0;
    assign out[3] = (d_op == 3'd3) ? 1'b1 : 1'b0;
    assign out[4] = (d_op == 3'd4) ? 1'b1 : 1'b0;
    assign out[5] = (d_op == 3'd5) ? 1'b1 : 1'b0;
    assign out[6] = (d_op == 3'd6) ? 1'b1 : 1'b0;
    
endmodule
