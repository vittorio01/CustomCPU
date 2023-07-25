// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jul 24 18:37:13 2023
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
7PzMoxJHxhycV35TufSzuBSeEe5Jw9ILEyPp
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
