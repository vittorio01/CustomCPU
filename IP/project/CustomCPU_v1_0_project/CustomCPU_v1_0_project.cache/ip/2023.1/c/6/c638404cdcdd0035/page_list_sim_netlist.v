// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Jul 22 11:34:38 2023
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
bDxPzoES9HjYLTTvnlhHW09MCER0M2/SUyEm
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
