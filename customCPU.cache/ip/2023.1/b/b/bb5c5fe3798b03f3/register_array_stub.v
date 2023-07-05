// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Jul  5 12:16:28 2023
// Host        : asus-pc running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ register_array_stub.v
// Design      : register_array
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a, d, dpra, clk, we, i_ce, spo, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],d[31:0],dpra[4:0],we,i_ce,spo[31:0],dpo[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [4:0]a;
  input [31:0]d;
  input [4:0]dpra;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  input i_ce;
  output [31:0]spo;
  output [31:0]dpo;
endmodule
