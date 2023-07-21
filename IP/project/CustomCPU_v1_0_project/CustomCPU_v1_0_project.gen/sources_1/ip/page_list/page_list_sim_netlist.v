// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Jul 21 19:13:05 2023
// Host        : asus-pc running 64-bit Linux Mint 21.2
// Command     : write_verilog -force -mode funcsim
//               /home/vittorio/GitHub/CustomCPU/IP/project/CustomCPU_v1_0_project/CustomCPU_v1_0_project.gen/sources_1/ip/page_list/page_list_sim_netlist.v
// Design      : page_list
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "page_list,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module page_list
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [19:0]d;
  input clk;
  input we;
  output [19:0]spo;

  wire [5:0]a;
  wire clk;
  wire [19:0]d;
  wire [19:0]spo;
  wire we;
  wire [19:0]NLW_U0_dpo_UNCONNECTED;
  wire [19:0]NLW_U0_qdpo_UNCONNECTED;
  wire [19:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0000000000000000000" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "page_list.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "20" *) 
  (* is_du_within_envelope = "true" *) 
  page_list_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[19:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[19:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[19:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bEktTo8XfP53J4LC9J1bzNOsr+DeYSQtsSeSeRwv1ROtu7MJT7BubpFM5B3JNITvmmXMIQ7cHCcM
BFy5Vu0fdwcQmgznzr1F4XAF5OH/PlBVKmCiA5IZpd+UQUMuy8l823afh4u8+Fg3bwZX7B36A3bn
Zez9yHjSKD7JGdQ9zA8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vAZQ8ZTe/MermX+omywGuwEzd7SLijiaDbuX0B9K4vjWUXvRoI6Em0qizreOX/qdo4JlybEpt70i
jJhVvWv69a9yKb8TMuvLagWbQydSwTJKTY6VSR/CtA2Uive8NvQyiQKFXLjR8k8OBlgOYmyzZEEM
vYgZLdnM3d2xSMMmeGF+dNh8tCJpM10LRaCrnj5w8L73RtOImlhI/zlR8cC5oo1TbyRV+JuHvvMZ
sYS3+4qn/f80Ugvao3cYMW0LtoTftK9oYpzhiyqg6hnJnbGsAENom2wqBpcRJf1vsI98WiJqDCuh
LIdMFI+M5KuqToM8D+FTQUOT2NniYpTmj5qTFg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VpwnevLJi/mNDesLbbdRntRX/1KkSUuxvcBO6/opCSkxKA2w7s8Eyh+CvZJvHhBMtWZquJPlWZsE
d3toYaeyczcrzAzfKryx5nnTvscAyYnKl8QyY0fWsE1UqWjg6tazMCtzxlfF3HfKx/GSm3D/0NEz
xzyxLBgRosbKCX4YRV0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MhGbYf5xy0E517prDNoCHbf/sVQ5JHlfzlh1Fz+rfDm8S3/Zt1g/AR2QuQPNwJUQO22hvTTB491a
xRG5ct3upD6ZdXgMesPA9KgwjRjoBp/uriYuT6Sb/yE2jugYl2qBGpqxN9n2OgAVfK3o9XZ/aIcR
St2PwrmKRzU/ZoYenWUMZ6ZRsVNlzFCEBcKop6f5TBy0bWAeebXRZ0Mot23DVX4pqVyFaQoXdmkm
56Vr2jGszkLic4M0JoKahUlQpnrZuHIWgFVd/RzXXP9HwYBRQTxaKnNX6eWTdksVvzAImMYoPa4G
PJJFf+gsNAKp5BIFXjwHfNC+Nerc6XzDmxe+pw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jfnJJlFHpbB8S3PjID3rEIRi4fzY1WUZaITx6CJ38mSZfYSA13DJislb1OQ17w4Hnv5eGM/0GVgA
2jPR4wYaMzC8v3iDfETrH4kyrFglo3a/NDlACuR1U65YoHUnUu0UmMMovxQEnd9ByAfOtabZPL4j
FTvCoVMpwI8rdT4YJQ5pYXryESdM3NUe29p9OWbY1EalisEVViKuSwS4LzwtaOmrPecCE56FGEp+
2iyBMICOFF2PpT8Bqp39Z2rx4xyIiudZKo3LNimTm/UYBCnPAJ7XBIS+JiCIOkHsPER+wNivbtUb
J02F8ZLbEtS0qmUdYDXO4qqhc1njU9O6Uk9yNA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uOK6pXmc+RsarhB5GcgUPkseiDLhaN7KZ4C18Aqea9NqSbvIERAENTml4U58cVlx6j599K+L2aW5
rVMZLtj8UE4yfEDhtivrSdBYh446mqbnToHhH5r4BmzYnr6BUuXVZ4NIUU29WnaJUZxwrvZeCln4
GQCdP1kUA1Ozy9B47ndTYgOzCcZSr9w36W7ZA1gm34lqVpXYuGsaRTvk1DhS96aFGCeiCTbs5HM3
e0JPkZ7YUsMgWuRzE+jHE1TEMVjbPkpPjFGCYOEeDf2bc/2s2fPLA3bxMs61xUFH5LAd7Qrs9D2v
Mx+Vcfvo7kmp3J5LW99NXfA9OvG1JgjJ7ykhmw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OS52LCfxYaApFxxvQUqjJD8DSzwhbsM5irqCX6E4R0iBINlXI3QVmtLKp8vhPICYZWjEuTIVzohU
28vwAOP2ECPWOkJjN+ny9RQeAKmQhPbxHYOysXg4IgtMbK+ZODUoMyLIsJzz2yIFl5qvQeLBnc44
NvqDk7nFLhtrN9De4XV14FKtDvQG0BdWr2mXiS7WiEAQxiww87A0M8yP82JlG6ykYSwQh5G8K6pv
YHoqI8mKAC+KGuDltBnyBrKGip5pRq7Kf+0okVAOwt0lJwDvS0JMNEUg1HK/mEIR6TKUdd8B/fms
4qcaCBYsptjoZVCq4ygSG56x8uaQXMVsEALe2w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Aew/RSoMZUIh8oIZPhChM37w+R5unp+7pprfqezjGFUVX16UeT1spPFU1DaqTQvQkXhBe4/aNxvo
Y2eUJsQd8zSC9wBoevCnvwaHEv/IBc+OKmBzOPxO1hHXDVPtDZWdRCx+1y0ZYhQa+NA6jLP2zOJx
/emAZW55AWgZKKJS4QgantVgmUSyKVe/LlIVstraTkF4EzV092mOj1iPH/UqFFno9IwE1aOXuYuT
XrZU9D1dkPLBMg3CDwOi+bXRSgjvuueWT7ostJSFraLwDkurP1pYHHG4NDxYiDxMFWarWeII+T6v
hMJKd/8ZRrh5aHvGV5O/Hdc4rPitxa/cdQPAc0r2e2XWAJIdic09atzXXyU9o2vV/urpMsjSVva4
B5a/PwS16c18IMm6vAeFSLMo0T/jor1Q5SoxEC5QEkxvEfIUjjw7k0b1Crv5EfWz/sJ1LHwqlG7t
az+h03yAqvqGfOHC+7YoilYImR1NiLTCLgxnUfIvxo6woY4SgD+hLki4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iZJ+xdyrZbhNc8zYurF70yKiutV2IBjRXDiOZ/7w25UL6rCpY4Pd5gJN3+SNIoQ66bzRxlhaXMNu
tzoCM2kFY4N5ZbCy/S4rtBK0PUHKEVd7c5Btr5gn8BgQWiIafJ8Qa/8xqo95ocakFzN6/V+DNvyN
7FPkXDwuiaD0cmHW8XyOxnHM2b/XKHOibr7UKTRAomXyt7y80BVKpE50ddxXAxw9wlMn+gpW5Kpz
Dp8z4VH3uZrVv8Yl5RWELOQ3Uh0Xizb20mvc6Lu+BNoz0Ys9zZUaqKU71Kuv4s8vgPzrZXXNifo2
pU0aNj0oqAGlSTcTCBF8Tl6/jFvUXQEzYoIfiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19856)
`pragma protect data_block
+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
NnTpOphcUrO1vcS4lrWznuMShag=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
