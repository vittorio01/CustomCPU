// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jul 17 17:57:46 2023
// Host        : asus-pc running 64-bit Linux Mint 21.1
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
