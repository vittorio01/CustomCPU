// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Jul 21 16:13:50 2023
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
