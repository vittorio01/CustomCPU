// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Jul 20 11:31:38 2023
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
+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
tZol/be7zcto7a191+ywdeQcKF0yLQMyH1q+
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
