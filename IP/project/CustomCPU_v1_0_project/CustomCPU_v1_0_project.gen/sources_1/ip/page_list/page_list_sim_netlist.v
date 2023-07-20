// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Jul 20 11:31:39 2023
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
