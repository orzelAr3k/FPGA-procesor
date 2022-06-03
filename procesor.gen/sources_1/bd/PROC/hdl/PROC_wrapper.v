//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Tue May 31 20:33:55 2022
//Host        : DESKTOP-QNS8T2O running 64-bit major release  (build 9200)
//Command     : generate_target PROC_wrapper.bd
//Design      : PROC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PROC_wrapper
   (led,
    sw,
    sys_clock);
  output [3:0]led;
  input [3:0]sw;
  input sys_clock;

  wire [3:0]led;
  wire [3:0]sw;
  wire sys_clock;

  PROC PROC_i
       (.led(led),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
