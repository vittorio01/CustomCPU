// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Jul 21 19:13:04 2023
// Host        : asus-pc running 64-bit Linux Mint 21.2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19888)
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
