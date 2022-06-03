`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 15:57:22
// Design Name: 
// Module Name: jump_cond
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


module jump_cond (
    input [7:0]cmp_res,
    input [1:0]pc_op,
    output out
);
    
reg tmp = 1'b0;
    
always @*
    begin
        case(pc_op)
            0:
            begin
                tmp = 1'b0;
            end
            1:
            begin
                tmp = 1'b1;
            end
            2:
            begin
                if(cmp_res == 8'd0) tmp = 1'b0;
                else tmp = 1'b1;
            end
            3:
            begin
                if(cmp_res == 8'd1) tmp = 1'b0;
                else tmp = 1'b1;
            end
        endcase
    end
    
assign out = tmp;

endmodule
