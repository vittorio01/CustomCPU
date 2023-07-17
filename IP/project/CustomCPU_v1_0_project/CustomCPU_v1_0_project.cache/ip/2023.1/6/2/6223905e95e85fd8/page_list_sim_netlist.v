// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jul 17 17:57:45 2023
// Host        : asus-pc running 64-bit Linux Mint 21.1
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ page_list_sim_netlist.v
// Design      : page_list
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "page_list,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19008)
`pragma protect data_block
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
v9JQIP/GKNrE/ZCTvQh++XW8zpk3CoWUqkwN
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
