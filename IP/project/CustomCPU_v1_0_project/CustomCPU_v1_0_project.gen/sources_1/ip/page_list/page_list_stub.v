// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jul 24 18:37:14 2023
// Host        : asus-pc running 64-bit Linux Mint 21.2
// Command     : write_verilog -force -mode synth_stub
//               /home/vittorio/GitHub/CustomCPU/IP/project/CustomCPU_v1_0_project/CustomCPU_v1_0_project.gen/sources_1/ip/page_list/page_list_stub.v
// Design      : page_list
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *)
module page_list(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],d[18:0],we,spo[18:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [5:0]a;
  input [18:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  output [18:0]spo;
endmodule
