`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
//-----------------------------------------------
module i_mem
(
  input [7:0]address,
  output [31:0]data
);
//-----------------------------------------------
//instruction memory
wire [31:0]program[255:0];

//movi Rd, imm odpowiedni kod maszynowy bêdzie przyjmowa³ wartoœæ 0x{00168,Rd,imm} zapis wartoœci imm do Rd
//assign program[0] = 32'h00168034; //movi R0
//assign program[1] = 32'h00168313; //movi R3
//mov Rd, Rx - odpowiedni kod maszynowy bêdzie przyjmowa³ wartoœæ 0x{001,Rx,6,Rd,00} zapis wartoœci z Rx do Rd
//assign program[2] = 32'h00106100; //mov R1, R0


// 32'b0000_0001_0000_0000_0000_0000_0000_0000; nop

// 32'h0_1_1_0Rx_8_R7_0_0
// 32'b0000_0001_0001_0XXX_1000_0011_0000_0000; jump Rx

// 32'h0_1_3_0_8_R7_X_X
// 32'b0000_0001_0011_0000_1000_0011_XXXX_XXXX jumpi imm

// 32'h0_2_3_0Rx_8_R7_X_X
// 32'b0000_0010_0011_0XXX_1000_0011_XXXX_XXXX jz Rx imm

// 32'b0_3_3_0Rx_8_R7_X_X
// 32'b0000_0011_0011_0XXX_1000_0011_XXXX_XXXX jnz Rx imm
// 32'b0000_0011_0011_0000_1000_0011_00000010

// 32'h0_0_1_0Rx_0Ry_0Rd_0_0
// 32'b0000_0000_0001_0XXX_0YYY_0DDD_0000_0000 add Rd Rx Ry

// 32'h0_0_1_0Rx_8_0Rd_X_X
// 32'b0000_0000_0001_0XXX_1000_0DDD_XXXX_XXXX addi Rd Rx imm

// 32'h0_0_0_0Rx_0Ry_0Rd_0_0
// 32'b0000_0000_0000_0XXX_0YYY_0DDD_0000_0000 and Rd Rx Ry

// 32'h0_0_0_0Rx_8_0Rd_X_X
// 32'b0000_0000_0000_0XXX_1000_0DDD_XXXX_XXXX andi Rd Rx imm

// 32'h0_0_1_0Rx_8_1Rd_0_0
// 32'b0000_0000_0001_0XXX_1000_1DDD_0000_0000 load Rd Rx

// 32'h_0_0_3_0_8_1Rd_X_X
// 32'b0000_0000_0011_0000_1000_1DDD_XXXX_XXXX loadi Rd imm


//assign program[0] = 32'b01000000; // nop
//assign program[1] = 32'h00168034; // mov R0 0x34
//assign program[2] = 32'h00168134; // mov R1 0x34
//assign program[3] = 32'h00101200; // add R2 R0 R1
//assign program[4] = 32'h00108320; // addi R3 R0 0x20
//assign program[5] = 32'h00001400; // and R4 R0 R1
//assign program[6] = 32'h00008520; // andi R5 R0 0x20
//assign program[7] = 32'h01308300; // jumpi 0x0;

//assign program[0] = 32'h00168001; // mov R0 0x1
//assign program[1] = 32'h00108900; // load R1 R0
//assign program[2] = 32'h00308A08; //loadi R2 0x8


// asm to bin
assign program[0] = 32'h00168000;
assign program[1] = 32'h00168104;
assign program[2] = 32'h00108001;
assign program[3] = 32'h00001200;
assign program[4] = 32'h02328702;
assign program[5] = 32'h00168301;


//assign program[0] = 32'b00000000000101101000000011001101; //movi R0, 205
//assign program[1] = 32'b00000000000101101000010000000001; //movi R4, 00000001
//assign program[2] = 32'b00000000000100001000000000000001; //addi R0, R0, 1
//assign program[3] = 32'b00000011001100001000001100000010; //jnz R0, 2
//assign program[4] = 32'b00000000000101101000010000000010; //movi R4, 00000010


//assign program[5] = 32'b00000000000001011000000100000001; //andi R1, R5, 00000001
//assign program[6] = 32'b0000_0010_0011_0001_1000_0011_0000_0101; //jz R1, 5

//assign program[7] = 32'b00000000000101101000000011001101; //movi R0, 205
//assign program[8] = 32'b00000000000101101000010000000100; //movi R4, 00000100
//assign program[9] = 32'b00000000000100001000000000000001; //addi R0, R0, 1
//assign program[10] = 32'b00000011001100001000001100001001; //jnz R0, 9
//assign program[11] = 32'b00000000000101101000010000001000; //movi R4, 00001000

//assign program[12] = 32'b00000000000101101000000100000000; //movi R1, 00000000
//assign program[13] = 32'b00000000000001011000000100000010; //andi R1, R5, 00000010
//assign program[14] = 32'b000000110011_0001_1000_0011_00001101; //jz R1, 13
// assign program[14] = 32'b00000001001100101000001100000000; //jumpi 0



//-----------------------------------------------
assign data=program[address];
//-----------------------------------------------
endmodule
//-----------------------------------------------
