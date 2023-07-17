// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Jul 16 17:32:37 2023
// Host        : asus-pc running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode synth_stub
//               /home/vittorio/GitHub/CustomCPU/IP/project/CustomCPU_v1_0_project/CustomCPU_v1_0_project.gen/sources_1/ip/cache_block/cache_block_stub.v
// Design      : cache_block
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *)
module cache_block(a, d, clk, we, i_ce, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],d[255:0],we,i_ce,spo[255:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [5:0]a;
  input [255:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  input i_ce;
  output [255:0]spo;
endmodule
