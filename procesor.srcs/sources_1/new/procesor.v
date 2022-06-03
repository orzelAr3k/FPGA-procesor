`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2022 15:55:56
// Design Name: 
// Module Name: procesor
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

module procesor(
    input clk
//    input [7:0]gpi,
//    output [7:0]gpo
);
    wire [6:0]ce;
    //wire [7:0]r[7:0];
    wire [7:0]alu_res_out;
    wire [7:0]pc_mux_out;
    wire [7:0]rd_mux_out;
    wire [7:0]d_mem_out;
    wire [31:0]instruction;
    wire [7:0]rx_out;
    wire [7:0]ry_out;
    wire [7:0]imm_out;
    wire [7:0]alu_out[3:0];
    wire jump_out;
    wire [7:0]cmp_mux_out;
    wire [7:0]R0;
    wire [7:0]R1;
    wire [7:0]R2;
    wire [7:0]R3;
    wire [7:0]R4;
    wire [7:0]R5;
    wire [7:0]R6;
    wire [7:0]R7;
    
    
    i_mem instruction_mem (
        .address(R7),
        .data(instruction)
    ); 
    
    d_mem data_mem (
        .address(alu_res_out),
        .data(d_mem_out)
    );
    
    ALU ALU_unit (
        .rx(rx_out),
        .imm(imm_out),
        .and_out(alu_out[0]),
        .add_out(alu_out[1]), 
        .eq_out(alu_out[2]),
        .imm_out(alu_out[3])
    );
    
    // Rejestry
    register R0_ (
        .clk(clk),
        .ce(ce[0]),
        .in(rd_mux_out),
        .out(R0)
    );
    register R1_ (
        .clk(clk),
        .ce(ce[1]),
        .in(rd_mux_out),
        .out(R1)
    );
    register R2_ (
        .clk(clk),
        .ce(ce[2]),
        .in(rd_mux_out),
        .out(R2)
    );
    register R3_ (
        .clk(clk),
        .ce(ce[3]),
        .in(rd_mux_out),
        .out(R3)
    );
    register R4_ (
        .clk(clk),
        .ce(ce[4]),
        .in(rd_mux_out),
        .out(R4)
    );
    register R5_ (
        .clk(clk),
        .ce(ce[5]),
        .in(rd_mux_out),
        .out(R5)
    );
    register R6_ (
        .clk(clk),
        .ce(ce[6]),
        .in(1'd0),
        .out(R6)
    );    
    register R7_ (
        .clk(clk),
        .ce(1'd1),
        .in(pc_mux_out),
        .out(R7)
    );
    
    pc_mux pc_mux_ (
        .alu_res(alu_res_out),
        .pc_addr(R7 + 1),
        .jump_cond(jump_out),
        .out(pc_mux_out)
    );   
    
    decoder decoder_ (
        .d_op(instruction[10:8]),
        .out(ce)
    );
    
    rx_mux rx_mux_ (
        .R0(R0),
        .R1(R1),
        .R2(R2),
        .R3(R3),
        .R4(R4),
        .R5(R5),
        .R6(R6),
        .R7(R7),
        .rx_op(instruction[18:16]),
        .out(rx_out)                        
    );
    
    ry_mux ry_mux_ (
        .R0(R0),
        .R1(R1),
        .R2(R2),
        .R3(R3),
        .R4(R4),
        .R5(R5),
        .R6(R6),
        .R7(R7),
        .ry_op(instruction[14:12]),
        .out(ry_out)                        
    );
    
    imm_mux imm_mux_ (
        .ry(ry_out),
        .imm(instruction[7:0]),
        .imm_op(instruction[15]),
        .out(imm_out)                        
    ); 
    
    alu_mux alu_mux_ (
        .and_in(alu_out[0]),
        .add_in(alu_out[1]),
        .eq_in(alu_out[2]),
        .imm_in(alu_out[3]),
        .alu_op(instruction[21:20]),
        .alu_res(alu_res_out)
    );
    
    rd_mux rd_mux_ (
        .alu_res(alu_res_out),
        .mem_data(d_mem_out),
        .rd_op(instruction[11]),
        .out(rd_mux_out)
    );
    
    jump_cond jump (
        .cmp_res(alu_out[2]),
        .pc_op(instruction[25:24]),
        .out(jump_out)
    );
    
//    assign gpo = R4;
    
endmodule
