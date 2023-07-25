// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jul 24 18:37:14 2023
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
  input [18:0]d;
  input clk;
  input we;
  output [18:0]spo;

  wire [5:0]a;
  wire clk;
  wire [18:0]d;
  wire [18:0]spo;
  wire we;
  wire [18:0]NLW_U0_dpo_UNCONNECTED;
  wire [18:0]NLW_U0_qdpo_UNCONNECTED;
  wire [18:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_width = "19" *) 
  (* is_du_within_envelope = "true" *) 
  page_list_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[18:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[18:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[18:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18976)
`pragma protect data_block
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
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
