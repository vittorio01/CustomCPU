// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Jul 15 18:25:53 2023
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
  (* c_default_data = "0000000000000000001" *) 
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
DG5hYKj9c+KYpRjTTbsP4NJ6Q7V0Hpix4ZYZ4Lyn8s+q1cg/ZNT/nAKU0fpiSqV6juXRrccE17ZM
rSWxcQVD8Su12WkwmrqF5fc2Kx5oA7zS6F2lwTwp6u3qVULKack0wYlSOkZfzjuo+rBJVEYSyDMe
GXJVNM5YqrFczBThUXmaTfmECrBeb4vw+QO7NT5vRegza2nxXFuVAcWs144UuufKLqUkcwzKSFwW
iM1ddziwoDYSRJx32I6gOjHwgLsLOtplHcQnfpUXl88bMuVOUXKjQSMTCQdGMze/yXc8e0WbFm1q
ifjI054EdObEz76m8Y58CfjGwl5tac+Qi/5/hVTYa+Sii5nL31+r6vU3SrhtCuVz2mRtLLZjlir7
zYoXByIqvJu7PoX3RyotogoY87eOeinAv0a5fxetz94Df+AggYbKnMWnYgKlfuS0qE6EPBHaoBQi
RMv1YQ0zaNW0aoFExLPDYlE8iShtvV7ap46GhsrV0m/FVx0NSqxI1xoEyD8r8jyLpyoA7yK3hCME
+9ViKbsnWDiyP8NaqqJ7i39fBg7GGgm3FYX7/YooqNdm6AqdF6Q35fiIiMlVQytQb+uttCgIlccy
V5jyLiNAOfpxCJLymupK5ckaz1Y2Buy0dLlg/XcIx428Nu58iSg7CD3/IFe5BE7VaAw50nMO35yL
gFAB4lAa5IZ45WefSBONzkLveA88JqYLeDpzsjh7Xbe/X/FKZ2H0rNq1yp9OMbg4znza4cEc4l+5
i9cozcimxJqu21OMBDGfEuHle95tu8HUbM3Crwe/4ixFZUkQUBGxVZpItq9GyKmDTg+TiH6WDuAd
qXPq5LroxBaexZll8iGsQi+LIgY7MiELQdFjHvcrA9bJY2Jqu2EIe5xH0yXXPrsudYOZra7ah5A1
Ooct1RmYwu/TOk4Y/tIVRMv7JzdoV4N21FeeJuryhFF7ccQ4efxOZbtaga+asXmWpJDoPW6MWz4H
FBaG0ESf1bwWmOQBfj/WgRd9oILVnjq4AAkpxdbcZ5glpaPtikTZhnPtBHFhJBE4ef/Lt0r1Y4dH
NHFZIEGZxrUVY+Rht80qCYzXZpUbp7cOrVstwPg2isj67Z4m3EnxyM9yeGhpSJh3LE6SvgYZBVxX
eo4NtHwfiPt9iMJvSVT4U++xs6Y+lYLZvGjzvZH5a0T759ReepcCc/HKYjPL0t18xB8pWcN95IeD
62zcG/duImm8iDea7tzZzuiWoqnlcblVmL9ZLgVWdB3ALb2M0EHIFyMlswQ+AEh7OF0UysaW/zEJ
Kyp6GnDlWvi/Ns+oA5FHRRPyVqOr1EcMv/GFmR6fxJADFoAUGTV080JLzVeuTaehs+YyLCE7bi3m
UPUHuTQ0UlzfGlY64r/XMdbi3MS4JTclBcSfc6U0xvTYvuKd9Kl+wDgdiCpkXP9lHNg8HIztbLyj
tksm+pQV+kumHBGSXOsiBlgvbd1sd6XAdhGvZCs4lyBa3V4BdMOLaZ9Q//JC/jymbhKXZ/B2JHyR
C5QBV1pcucrGT1j2p9bEhg+5SU6qWEyo9/R4AlN/wxDctBD7W5Yp8geWh5tBy0fnirazY+od4MCj
xN4jYFPMcazthm/PO02dm1pxDNFdav9ZRKYSraIWp3tcDoZy7qOD6rkObBozl+MxtNLob5a6OWpe
mcZkWtaWCrcX2uXuyGx8dj5ibtr9xJUnIke1uT4XVHeBQVIvWi31WrszKL5R+rD57QRa/F3pfyE8
ECk14NBVorZrP4JaQhithXqxJnOObQyztu4yW+m19Os/z9CNPM9lZwrn4k/jqUDtnULN0b3v23GL
O1V4k9hYlopfqsrBgYXCbEqvOlDTjb+Ii4BRsY9frkhko4adaISVuOLdI0temIi+UZ4A2AFEe6mo
a2/Z35nJeLEiRyK9SI1P1FALrULByndcIeDbEMlZwqF6ZJ/JnMy3/Wh9PzirgOcMybP7RqenXa75
JAi23l3CnuoBzNCoYEe7St2BcrMMayvDbZiRdSwS5jeEG0hkbM6vQxDr9H+uBwqDfVSQujQXK3vQ
ODLuet4D7gq3vjP1gKeMGK2i6n1nyFzzEDYdUjqVMO1dNTpBUkT5j78uMXhFVzZXpwv3GIZdC8O+
7adpKnqk/roZRvwqA4uH9RIT5xcnZAN170D/1srMpjT+k5CzJwpVdmuB/6aI0nfVsM7BgWinT3yC
PHpm+eVhR5tCyl62mtlGspAkTkZXCuexADFRS1wvGYhaDML2sdBn8Gn8eh+GU6jFaf6SoJipUWaA
dmsz4v7m465cy0zJcVkSzALdQNAXlxMx4Jke/5YKNsTvb9Mw5FmtDm8sSix3Vvmhxy+F9IZ7UPw+
M4vheiWJ4Kc2DFA7lgRQFhmbeedp1C2DkM1mKX5zIy84yid8FGCFmUHeuzbL1LMEtev7BjxKrwR2
CxxV078b8GgQANTsddmLBjkQgqhyPbZoe6dAnnhxOLBaQBRAESDtWumnfcXAd5KY6I1JXVpEMaog
UMTREbX5MqpdlaoS1fJbLFdlvJq2huZ2MXM69VdIYtKO6LTzluwnbLP4QgIww1wRpYvILXIuLPvl
jTEW2fUDFR2f5+FfEoJe+v8GvJ6PBswkNAZJlA3CaTAqdaF0yOo+/H//weCdPVxRJHh7VTStb7Ud
PhWS8ZqTVeTS23DFyRYr5Buv/pWooXXhCPjM3H7JhTG+gBR2T4VmCOPul8w6g+NWgpvY4N+eJikP
IRY1AMQzmCIG5Sscc/1fwDcVmMhEfWCcNadsSQZTXSmgAkNkBd7TrzpIxkPzsEc6Q5hYByDfRKnM
i2zomSSKuZiEXH9h08uCrjBxuOjZxA6S2ycoIE37lYFW9ACz/AtqP7c3Vxuf2KpewCe0rzcNWaC5
AZlTsu23Acrjq2bsQWzTK4evze/1SkBVgURLtQsWr5QB3yzrIfxrRqP8l4b9ldag9/S3pBaGy71r
ERdJ6hGjctnxGbleo4qOODJIiV1xZ5i5ysmEr5OMfgA3JhUIc6hjVq4Wr8Tz3+wgeWyfxpxZhqjQ
8ntsvbpJOSdA6Y4s1o0PwqiMDSesannX1WCnaDuDh0siVcuabtUIYHirapRZ2NzAvOVeFQsoBG6+
QMUj6Sf3VGhf4kqJAHApWWu0qFNtHlwIZn6sTH/gFuGQPn636RaTm2RGo8x4znGpPmIaS0lL2HPC
paUMwmeJ+UfVtgRuXKFPHTmyNsYgIKjGIYSzvX7lAXmNzZmu/Nzehs3ptLM5d4ehhDCCBSeKOvGi
ff20P69lNNmCADULjoy40+As+XMAa8rQIzqC2kubWdNwg5ls50QoSYmMXJcngc1bZf8lCIKxi/Fg
xIbN0pAA5lYMKEd50WRzfg3ihHAdfkfVzzOLRwCILfB02MAK8GtkcBq5frK3VbyIw2w6Ll4h+Djx
kwGJdonzZid5m+umQetSdCqdEwkV0Vb17K08YJVUjo1p+J9ahp8yoGdmRETMURvWGKmbB6+IZDiA
WiB2UM8LARDWRTgPcIACm7U8D7OsHue+2sp8kzveNQprA7J+p+EFcnjIaWv2G9l1wClVXZCwOStV
TfkqncKPJR1RGAGxFJU5NkAAifa//JgcSNyEbUvOXKPW9wBLa4ZtexTzAt1F8VyPtEHJS0MrWYf/
w3tOTEyO9dafN12ImhPniTiHjuK+McDU7fOF0D9O1q0Tt5hlyJ9Mm8CCPMvF7EiL3uAykDGWbVSZ
sMObOmlUMLQ62PcdFJQ9aaJ7tfqtj42IAmB05ONux9bahfsy3e1bJ4VHhKTFRaGw0KNExPz7UNI7
0HNZs2tXuvtvFPX7ZDRrOIgz9+zStklmUx+s+48lMiwJViYswpm7zjgMRhQbw8U73kw+Go0xxq1o
keRu2XDHL6tlm6S/z8LRKRVr0DIfNL5dDW6vjPIHsL2AY6hYRmL3LHqrCbn8AQ3c9wZEpjoZRxqL
RVQsYerwJ2sl2/dv+RyXattuWCbKwQkaRw4kItViz6WoT5ZK8bzmoXufeTPXhWf4xUD6NZ77bgBg
VPMpqk60CtMhvbtoDpH8i/axBn76qqFFRvhwrXT6MDQK6/SK4pk0s8HSnykX2lihm5kttm/ciop9
qXd3qTO20Y44rmSVOCrWnIyOLK/DRuPxoj6U3sM+iBrKUkMjpXLAqJkgpv2ck8sfXijKdio6djnU
9ErF9OerRO7YdWSw5F0y1/G+TlM0Ka29QVhmOCxH9846yz4FVPVtfkzPOscTJou/OqriBs5aUvkL
GO6Q+/2LCL719oLEGgH/q2jDOXOrobBllSoAqPZNwRBeRz6gt5eZBHGbqJu+AQCp17tqSLhgMrnq
ZqdO6xYirDuZctPKWkhozS8TOjMVUfl9a6Ymipoo815BT3X2OdhO9P5jzQ1rMMqCd5cUHRIz1Zll
em1gDD8zEswZrX62g3KPPRNA0fJ8hQAGE1j7FoSBfo2LoxMIanOOuYU4AHf/BSK9b8NAVcdxDto9
mv42Q9gCQ+imQEe/TfMRoE1YMrmBL0byXOmEYxRqJiNy8D0mSjKX9Pi3zDUi1/BD0zFh3roIW+NS
7rBSDnNnPc8qRw9cM2g5viIpwNb/BebaMrewnrEenMvytyKDRjVvc++nlrVPAKUmGxFnsXvyDe/a
6DGL/j0GEkrEWsPI3DSCzNz7I3s3iPRS+5gchM63XtkTYVxzqdH+N5NosVCR+6sK9hL259Ni/vQS
JyGJZUOhTjzwZ9buvVAzmhBVgtB2v+6XCy0x1QKJGsKmc88gUgnjBG69cm0TN5nIXmv+N6QCDN5I
zpy82SinYeDEWOr4z6kxyCh7VHQ/S39ovJMwwBw9/WRNfcpY8CZnYCu5iQ9HtylyhlrViBJ91DFv
0TME7VCskSW9jH49xbTMFiYEdPBcRLwkMHtHIUZkx5mWedR9+pJgh4VW66ujZKm+dm993n1BsDMY
8fW0vU3K8dMU7S+FSRo+BQXEavDcfkAGJdrUpzuzDyefsW9/NMui6WPLDjvOE6eSXR/c/6qDpNz7
ZLB4xZZLke6MkJE97qkzliiyz6RFuevfrHCQw8UXWG5VREawosoEbCZh877nLmSgMC94fRX8C2Cu
0UXXW8MmHxVVv3fZ4USG+5BK7K9CkEq9LZqiiXIKC7ZKZqBzDqIZrrMS282J9zhi9aa5FeWtkJai
72gu4awUVdUnbhlDWJCkxpvAbMDXNSVjPHimP+tF2YnVClD7syDRm3Y138jza7NQzZLRKCWQmS5l
hFcItnuhtl7ue0av/eRy0Pmjny7Tx4cS/+rR8CnwDqZ7V6TzFuzor7E6rfSUxLQgNZB9BFEcBmkz
mNPiBMv8aG4wQB+iX5E2c3Uievj85FySktKWWLkjABKBUliXhAdi20p4W2g8hjmkImRCEtrGq2fB
nJBpxAcdcLBhHE/xyQq8GnFQqzqwu0NXrbkHkMT9gyCG2eHB29orecv1jRRC2iY/1zsz3hcIOSwr
PGRpQ8wNu9dRsX6KOJVn1ZY8v88gdx/O90OTETrUfrhQJuU6hS1auBz58W5bP11AZsFv7bj/KxMu
SN/2J8jC9bAJFG022Or6NstDLUfDmQyu/nuucJbBZ1OwEVi+alij1cVGJwL/30SrOd5r0/qrUcrw
9NgOQ+KR+ywxCLy2Rdp+SyXe/4hwMp9gDzBPwtOIdS77dFcHSxYC/ZrnoRPLSn89lspfDhzbuWcR
k2n0QhNV2nDYFf1G03EONYFqR9mz68gUUxtQYwTaL7MWbNeEDqQVMZ08RUjshBqD5gxD21xepAXF
ZowOXCbJQyyky0IgVkJevC1Riq8KkTyq2mPOOHETnxn+IZ4DQ2f//W2TF8YlbpKis4i/d4Jv1f+z
0afSbRLdUZvkZT65wAbE8JyYgzpdJV7CeFHC5Qek5CoEwddaML8Q2y7boFgyiIebUIiaSKcllWsY
Ylq0asDFA770/s0Ng96eMvuhjmqv49T9ZB8yPLJ/WoKdK8TYhFiq5KVpBZG9RsX3BSKtinfng9ij
LnnC6i+JW6HOe1lwkIQ1zzjzURO7Ji8DoWtW4yIF3f7MWrVLGAGLh3jaJ90AeNRm4IUOllGTN7N1
+zmfTRWrY2N6D1Erpw5boPN+bE4dCXFRcX7oImRXVJry3+lN9c7WDazUruE5pg0bTpnYIkwLnRPs
QLFSwDb8InyFd6m89vnmmWUbec405tNoaekpmA1pBBBtbTHFbPBWiv9XdpLnxctZIQmWXicmlSMC
RQL7zvxCst7xM+BuSNV5fZ5AZ86LWEQKhLJnpJ9ejS/31CHliRXraVv+MaEXcseEzX8svMyPiecL
7XXq2F8ssHQpPa+9EOkJbC4/Vwkz3+3P4ikblKkCk5di348k5JEHdiDSguhkbkU8BgfjenkiD0Ds
q8EQiHYj2Mz8UZ53/VXxfED4yWX/rd6R9ejGK6UMrPZwDaGEGo4XOcOVlieeXTj7nm3qpanh2mdt
JT3RdfK5bquBmdiaNt8o10nO4TfcSLChAilvr2jgXuXcMd96MxaEpBRuY404pI6bAv2Yi2NGNlA3
Kb72EGfpZZSTs+I0F3S/AZ3Vr845JDgmZ/4GoMpNlGALJoOd/Ynr/vlA3LyrKF30irzCZucbMkAT
3Y3JenmXwGFCKrMFV3FTSgqo/T7vdc5fQ9R/l24gp5XKVjld/TaXGKGdNe95GOpLF21LPLDTo/C1
dTM2sGz558OkIh2E3mz56p5HlXJZVia9istnVZINSYZXwzbNc53xTXYSQux3IaixLN9ghU/zPJHd
I7g+xXR0OAObYMzaHu2qUapjq11XHgdwP3xXlzgbrNJdyqbukcDtBEQBD39SAgWGS70FqYK0wmRT
Xmp2AfB60BbP3Xa0eFXUXbNU3xjKT/h6XhiFnHm344D1qWNwLMAMp4gOSJ/lNZKnBF7es0nk77q3
Ypfz06/mCyWKPxcr8XKG5DcNQkdcj6e4CJQqheNxgbGp2XiVVPSBg6TCKsUY3IAb85OTApm/kANj
TwT/rHbZQeHyPId8+18TmJVrzD+pEipcwDR3ZKc0Bg7PhtgALV9dnatGHMVCBAsVUdM/4PEVy88S
TC9QeCK7vqzjvTEu3Rp1viNOT3MvFJgnu5vDLCibBiUXn7lxRB5VpPRtSsr2LM2Mhq9n19TVKIzE
2JVzzthHx2bP/NbZwUCwVVfQjqd57H2dcJPuCw/cefWKONjNexbkqmcJ6n/rReM3cUemJhJBAXy9
zFAKd8xBHG+8bBmX3YZN4pXNrkjB/ImTgScTZn6BxxCRofPi9NDGXVx2OW1vTrLmUWCdAdxSGPyq
zvjIh5BsCBUyULjEc+LBXTUQ5n7ViFx6K1J1GbbGCGJP/pFga3eZl5kEQ8iJ9BY+84mvRU8FIu+C
t1xo05njW52j9H5SYPasFYItNSWL6MBsy1I08sCWYgptf9y9a+H+HR9tRM4APVBck+DU7QyzR2Ac
hf+UGVUB0dqfpZnKG57BjRceoof3bkScRvDiar+Eo5KkBExsvYaEVPfPL6ujqR/aimdMkOsp0Pd0
1xyKoPV3TCZFk6o1bq04hfKtGlaHkf0OCL9mT84MLwjhE35SfGg+CZOtnOGKu/XXEQnGh3VCWsF1
SF9e0T7l/gGXNLeD5BYpfnakbcIqCRIkY2bV+q/9/NFChSmrKwzK0GwxO38eXFmLLHgSZ+scuimw
60hOVoITFujSMI/dGZnlprxn7OdrbTuyM+T/CeoQkAMvfg0nQU9+SEV1yBSKQnqsNjHAtfIlu/7K
gtXzJs5QzfJwB5d3yrGopT8RsCKI+E/l0sJsfJw1h6NNjweowO7ZFUSzE1Ml/9Bzv7hpNaAOXFQM
MkoLjwV6o8XLgruOE3WHg5kfkjJ1hjcaL4cv+c5gicAqfgGF7jPw6kDPROmfxzmIxE8tk1QwW9BW
VXUzUCHLKoTsME+YafbvN5ziHnc/b+0Mt8YyIiBsQ+yC/GPHd4B2l+JQY8afW19J2+pgO5n2uDrk
siKChNExkzTdrgtdL8T9gJjEiWzsHQPM2lTWffWVlo/LLmuIS7VCbgQ2Xm5EtpZUBUdP5zy2T1cJ
wgvqf29MlCMfXgdCie3U7CH0y0Ek9TS84FAKef5NSLFb2WxLyZ2yq9uWY8YkS7s14AzntVscF0zh
y80FXCEBurHeeTuFxfnb/CJ40rpkAB+qaAZWeKWvUg9u30fuairBPpVGGqPyBJssTNtteqS7X+zW
VSlRXYMEIgP7JgxD7IK0uEf+Mh9Nnt2zEWNGA53Svmti1UmJcAv4DeTX5vOUHbdM13EhI3+o6Eeg
pU8zHXW1bHjI3V1aMdfxnkS8v3HYJ64a6JGNnz6qEpIB0ZmqROHo40ygeRb023CZGKaOJGeh5wKZ
J/9v3kI4QuQ8EIMfsxwfCahGIkqTmxfWDLl60glzQbwc7aD4DgZXz7u9y1JMcyX8O5h1+7clh0wr
46qLi5OO+PIQl4mGLxWwKOh7/QYYwnIjW7x+j7vnUB35gsZUI2Gy9I485IUq0l3aesIgCvBjCFfl
MxEu3ok4I2Ji/upm/lxgMJ3kEItIxAvQghcuWI5l9Y5szzjdYLrmkLiRpMznAKpxZwoVYmFVuS9p
8FM4l9h+UPQoYw/D70w4JdHyrAAN3aN5to/tbwkZZMkm+zb40f2mzLt9M+hxOTMYLlfm3NjtMfb8
bj7p+QsTM8i8F3BlepAMSRvG9ZAxn7ZhSKM5ZwD6TTrIqUaj8n5ji4kpPgzTQZjF1H4wM8CZLYyZ
b/QW0jcWGhC3MH5QoVgvoE9hWKzNdaALSSRzgCJJmCzbMm2AbgYHFkbsSpvbIy98FhB8kqSqbBY9
Z/SYNvIElDQXbwA05q8BDudhUEy4e3SLUbEOJkZsaFHnv/veaejposNB7hefgYBVZ0YipG3fxXaT
CEra3SXG2OOl0RWFRPZZDu/K9x7JADKP76t7nLLlqkiGObiFksqjTFsCmMHGkGqFrSh/RiuMheRV
3q1duz+qOC2MeVKUGIof6HqNGQTrS/5Ea3r5eGA0OzzibINV5i2zVGNq27viZOFTzV/dTH+l4rHa
SoJySWTgHNJHgR5s/pChR0LGjcxjJxiu4ErEOTN+KU4pjARpodMD+sZMQf46LCu4ffuf6aYNAfQ+
NS1WqIBVy2uATx7KEWjluwipOe1rkCfPwUiDEAl5JaiK7seCMb5u1qMLvWb7S9SoJET9XYDnfIF2
/SljzBCVS3TqJUspsrR4URFMxOpgQXMt8n3Erjjy8CRS453RGedmlXCUBAmLbV/XPykDIH5xbHE7
BFfTvBPeWvbv0bXr5UplGl6cjH1zIZLJ8JUI6p8SSC9iWeTOdT1eGlcyqWWNazu5sC+1rUcixJrn
pFb49A6IRTp3ki98Yjv0w4mEsy1DZ/Rb534bZS4mhHclcLd3WVrA8J6deJ6T+eVI/s2KprO8cQzK
Ym/3XH1fOywfBLFIgTyoMsw6yYcH6kKHxy7RoaOCDlsilDxw1/+uGEZUgPoP9ZhZWldwVJgmYDlk
CYp+u3YYy7mvh1/F0DiiT6JHDpmHHRmfs4RUbyZwBLPZ8dta9duX6m7HyWWwMoEydHPoQX+w2iRM
jDz45QK5KypXXEW4d2ss4j8HZ41Tkh08UEYBsXHYKIIk8p+BvxLYOgK8lFMs/cisg5fDuODEX1nR
/jLvoEWbzDb3NEVnjaa/aAmO7kMdK/Jsils7g/JsP6PeMeaBOYoXfZUYkAw37ZSwcHIncqmhYevi
3YdHgfwd9yAtLEuO6gM5GGwtenXmHeP6SfOZW84lxdu8eWKlIOUO4FfAZT7z31Ft+0V5BlFy+RA6
d+1lLKCPg1qxIhE0uaNnG9VNybkckmAeRWDzVZ8qcLTSIJCSlnOkK879voywr6iWb7RAQyt77mAG
V5Krv46GlsAYfg/jRVtefYF1oF4kJcte7kZiq0YC1/zUtQpMyEtYpQ/bDtw6qzv5MM8vI1YjbRkC
UOpxJBySUpRcsbmpUcSMN92DVfDccD9NgcoOmkwwQ8SNZwnEsgiVwaQQt44/rbFRQrG5bYQLmMzC
r6apqkVMW5VSirirS7QkFZyMqYxsQksZ/RHc9HSMenmu6vmnn2QgO3a34THt/lMkTpyLl2gIUmfx
lVN2eLhg5/8VdbLjfleBs7rfwCS7ag8LtrEOupd4vJL8Dp+NIOhL1GA60TVOfQgQN8b8D/JRSxsG
/JGW7O+I553She0X1DD0Z+zv+b89CuKGOI81VcYSoSVx3o+ahtyqg2gwdGLgDbMEg24EbYql4+iC
/qmtEvMtN8B0v2UduCNMtKrEEvxzX9Z9kihGr+1Nl6JL8Q60LM2ZD6bs2HIaCM7OvvoOvoMZ11lq
idRCTVFfviKr5XuKFRJvFQvYpGe7e8wooATCd10Xw4CZOlOvwpeC8aaxhwg+aS5bFcy4tOqO8mu3
TjZGjwftrpu3IwaEfp8YWzSUV5pUnRsq0+xsWoaqvnldk5LqCF9C55oXn8HLkpi3R06KX/XpXY36
dX1N2qDAuef1OEXWP29P0dhh8ICj/xjsr0syfqWNHpW8s81sGCZmFxitYYFWixqPmVf46ritk7WC
oqLiR5mfGnNatMrJ1KBdUrmXYR1nPHJNVJP8KdGqBggthSh0/CN0kGT/EBHlTzNi5LwP+OCIqYHH
Z1TZ8szFtKb7PWqb89w5ZNpQ/YNkO0trd+Kx8rIHPwT0UJRxb8GlWfOFiFu9ayM72SxvXphyY3Wv
im6lSIcI/d/iPLtVXbn1l3OMSq5LkJ/d8+cu7Q7E2C9t6rNPh5QqH3CThb+u3MDF4X1oBHV7yj2N
RDBlZ59CFA0fp6f1Nfk71qRdtin1oMuKNwAue3NzpnJebXmRkY3R1jzu4SbAalZLE36p/5O5ORuh
syk845BQrUwzIIDptQHUcMAvsmemBswtmdo5Zz4dlhGQGPs8hiOU6Sm8pNE/TMAsVmvXduH9qjNo
M47VjLhnQklvh8skRUnvdOBzfA9fJAifPRooeMr86daDCI2GMsbHFtfpQkny9G6y6mtzpYGsmVJ+
S1nVukmNNXNFaXBBtX42trNpUZ1gQCVO/iQ8mFyD3AQ3W3MJYm2zKyoPTTWqoq3ZTBNoGCRIBl7O
RYpso4phSQnT+0NsW2sL/+KLpwaZYkJskKIAbibwTVGtwN5Mf8z33TISbczGLjg8qnaN6T93iEqb
+frIW+Y69rREl6YkCOyoZ1PHd0PNwnxDJpcrOzv53I1+ur+p39zDJ0yx3I2LDmXoSqcXNXgm9KZ8
8lOnNeujJhgdzfIynIf1JVCSsbp2GF//a1goyswzidAUPTPlsXDWWU05u0pz1xtKs6C7VAngKFIv
+40XU30bZtxQSItZiduyJAByTqQonSKDMtMrEzYdQBodWhZUgGVhmTOLUKw5ot95Kz1x/G2aqfZE
07mReO3pR6a/ggM9v3yiRf9qS2pXqts4DYupVCA2AgWJCXUjIoZzLGAt3+MF6ZhSDjhp2oSpp4zu
DQW3B3kEKTHHeugOoOG9nBBN3grtFRH6BnKr9ZlH4SlM5S7hq5reggYCf523CmSvL8SvyJJL210J
3WV/FWgg0LKUfLa+NhBU/q30RpbDtYoZjxQsgIvcN1ruBVEuxuhUWJdA4Mulld2TvRiGLmBUR+oj
xjdyb53aYwUdd8E6b1+iowY18rsE4oKnsD6cYNm375v3dOmySNAVd+t9pzsomXo1VwGm/TvjBwFx
9JHGnS2ZvAZnMboOs8bvgfudRf2Rxpo+xCo6FqC7zZfu3WwDhm8ZQ2Vj4XP3VGitcuYXRi2SfzF2
rx76gWrBRL5R+EIJXymp4Hhovbd1HOCwlfLKq9wL7bUq4LRHrTNYJTORZ6B6MexNUhoXZczzxeWO
1bpUhWTSIC5TjlAAkxJNhG2sL5DFEt0Q96Rrwmp0FgHEwjSTOXONrtGKQyTdkjDwyPlSnjFRLYaO
aERwsHxnKfmpke/S8vDSDfWrqJ/mbjRi2udR+PF8/9cb0g3ZRqehC/ltDVlN/7VNa37fUXVDYdYd
mtqLjD5SpscAPUR6PZxwsCqUO/5YaB6S+HxkeXe/8HSXujGmB8GVPOpWa/9ebJsUe8zzjXFTz+FP
lIEA8O9bZ0zdf1RalJmSSNiL2tgvYkZu0ofOqOQv4ReSKdi3PwCaHDIJby2PQhsxF44lg9p7BEGQ
qSYYhxT23y7hksjnkbE5CeIUhOzGa+S/kOc3z24lZzHlgn4d7c0055EEBP6yvftYxYJUwRvIEla7
ee7toR/ttPRmL8FIt0YE2WbBVp7lOCDxHC0RKdf/h6EBuMJyO1Taja5f2zzBmO8Pfz5/HDy5GJpx
jxjSMBTJQVPMLHCGi/eqG5864eTD6fvv59AOXhAtLbOqVdmy1oSmM5xC1x1CXS3BzWF0IT7G9/Fz
k/22dibg3u1TBjkb+oVlD5N9xUWbdFEjpnuNHuKydMxa9TEkHZHstdeADtMvi8jxLWmxUkQX2Kqi
dQqJ0C6jr42JksoEWz0Pm69PKu3ukDd0pyU+WLl15JVT2TDZgOsxzPVkwjQF2noI6anywWqxLKin
CiG2nDt+Lx8ILPSsCxnumSLI58s4fYrouGO8wAhtg8JGiHrqjnFmwKCFPuMEO0zSMe1RT1F0mnOC
qDuAlNn/9ZiippXXjLQBA4T5HpW7e9GGK0vb63GIOBz1BUNGfyENXpgk3b5zXyQWFRQvv6oISLj8
HUHKZtwuItu1BGrX7/MfFnK6C2UfwSSsT7Lglz8J7NOeuKdo78w+e/LP/tuo6JWvB0CFaO6XwFWG
FdvgHmTsQZ2Jc1BWqy9O9NJsuCmI3C/pHyNZsNFeohtxCk8HJ8OA9Ro99KvsU7HShiVKCjSHlKoe
PtcNmwNavnPoHhqYFVRXjIIoHPyfhNvy7rFSvUQrann8mhp6Siy7LYYYJ6SytNev5nf11TKQIg4m
LxB4QZjjGiQriM3ib8ncp8h8ezRCmPzicZbEpweW5CBAcFMINhqDAz9ewk1EleEgaPucynZIvzln
ST0GgXCcgN1+oB8TNpyGrIVw0HLdqRVcvllzmQ3KhT1zBDrXF/RF2fqdMb1dpdFzMPTqzc9W7XWD
ELoQqP0zIEqoqmi3/0g30js53N+ThphtCrWfGWKOdPlLQ4FQ2juMDmzzhvCu4zYDYZgDj/TNYhfy
G6YZNi5JoktnVSAgrBYZ0EyIy4mpk7IM13hm82bXbBcpo/fhcOifR8/C9AaO0dk9usnPtwxzetX3
qhHiP85O25cmUIzCNQxjib+w7mMbqYX1Nc7bvs2+CkntK19SCPCdosRUFXw6hQshsFCiCQFsx1cG
sodbF58T1WBWj5OvjVNh/Bw0m1HgKiSDEZHco8B/4YcZn/Z4bUq5qBmJSznec6eyuhBROhfQjrq/
BRb04oYfHncmDwoSZL6l2uE7W2Ld7j31hUj9zlV2+uJHpYlfp88bR1VQm+V2zqKGWB4ElrdSE0Jv
zMb/xh1ppEKxBYI1GEae2WZL3GjxBFO2h1aRlX5hEHrgcrekqIXpK2WY84/WsDcuRa89p8WpxcXF
STCqRYzsypvFtT5i462D2uQWnPeu4I5+D5bKkAxSEDvM8wYv9zVKi1HyZFnlsIOo4EBltdEg8Pw2
vyrSFKs1SsFao62TWPDtFIeX2CQvcYydpQFiCWPw9cmzCv+XQ5CZ+F7OTqMJoKKBriCFCwM/yY9u
s/WmaRgprkAhOTKZuSwvcZ3ulqNeeoQXoeNnL6fF6D3fvWSn1k/0Z1lyHs/A6qUenhnimy0RwDXA
n0ETs7Ps5uUKDdPZdKH9Ox+DTW8oI+aFn+k1cLN73nFL9uYN80TcQHSu4UOYD/EkG2iEb+u8uREs
WbtayrqyHKjNnZxiLHxaT3wt+8gKWMhl1DfRYYTd+QaXsOtL3KLFJyojjVjHslGtQ/a7yi7J8Mnt
9VTE23xoNVU4+aOksCSaendoY72oAd0NkTbX2pIaNCu5lXItUcQSSD7b/CYDOGgW9CW6WwWD2Zz1
43qDFRYInpLS6S70uaBLjusOD2lTS2z0vvNDOCmXxZP29e1qQXvz6oEuV2AlqXE30djRcdlAg+zo
KrW/5CsPJ3BVNnBUcsr6gUmFNvbRegKRN+g3K2Ff7TipxlbNuYikFQHxtqDUcfJKwK5BK4GwvQHz
2yglKU4jSEB5wkDoUqlZ8SoB9rCicocR3E1Aa88WcEaATD8EoAAZY7o74Slg5mgFNxPWoRkMuCNU
LQ4qzL+g9GoH7Sa6leZtUbi1t7dLnSPMNBAV82lJ6UkC1w39ZdRan14GpxyoepWdcyYjA6GtS4tw
mS7Ghl9gJsLzGYn654T66KeGnM8KsdEPs5+C/jpZS9/bcYI69uvEkrUU7oxeGmf8YtwsX8UYE0Oi
5vQj1Euh8oUjGhfu7TQBdX2X+Gyp4eHZbCNaC8HKtjyHT9tVD8UOdo9lSYbwfOCKcXfkcGTP1vka
fuMYCJY3vrpu1rwXLaldDF6LH1ZheSnUXtY/VQFClFwk0yGnP5mlpOP+7yy48/MxAR5rTfyIi7mN
vvUpXLIHayodiXnvhhxLcxvtpTEP572DYwire0799paFLip9uz5X+fm9L3uFJXJXq2WFhiJdAREb
9WRHHVAVnlxg60I5N5tdN21gap78m+A7d+hKgAWgmZqZnPJ8KLzfxE6U5pzoUgBitwfIaEMpkYq0
5h8jXT7sQe3V5dmO56JC7gfImY0YURMw1SORVoFbVm5vJ2CRbvWOdbP2ByNNM1MnrIcA1hKkhRrK
rGdqs1fVqKJR5YLhOfWo3JX//sQGGdAn88o/HyaN+2H7aiAjHk4co21qOdA6oeAAk/ejZBnst7Ri
r6g48luZqkbdcXb/XOLuQbdFKKdjafgkV7EC8cO+WXymT3PVW068juILpl5N2fAYdvZJEntGxt8o
3ZLciT3XvaOkl8f2wbigiPSy/lM+wpqiWtKMoU3xHY3t/knxtxe73iAcxIWQYQ/0RrA/+2ppp1lc
nV+zmtFe1f4duMLO9DjgyhgO7pWeLsxUCm26/eMNyMMfqrHyIGVaC0CUtqDs94sWnyX7HvW6DPRx
rROSsqaSAIsdlF/zRR41JFiGGsp/XqNIiM9GcwoJzO07B2zUd1eq5/QrTT7BQ7ccdOx3dDgQmnad
Ocmj3+roU9IlN4AAXEFmC2vyzzrVqkqEEi6qs6A8MJMvuVXEeHaJ+EVwoB8JbRqIuJ/VOrl7XYiU
mnx3gj1TAMUQO34a84nNLV/GeoMmTIUyXxsa1E63YU+9qbwFlA9BiShlhz/ynlhox/nkU4AS6sSG
AFMRGm1WV+LgmKh5xu4AeGVkayNGwJl4O3SvIX6qKsUCCJRfHgyt0XFvyUdYNFdgLZ2FQ4++3Bvj
HftmYAHh6XAZLULLzKMMEkncFZCBXfrGgcp//cUyXVQSMvcAFqR1V6n5h7+gGvYSlOycsalWNIBT
t/THtVTHG/fsjqTKPQc8OTh9lMpEn/3O+VWAMEZr7ksMUUAZJxcvKAGI9CoXz+uitL3L5oMTdGwV
QXpQF85w5VkXfpmCGptJXpvZnblraDjRNplFlxzCxhLmFDkWAfYEip9hZgP52pv41YEZ2eyMCvkH
cPvDcbV3dBlL5h/zex6pwGVFRrOhH/Cad6RTCYvqFug4VyXu79+EmGUsiUAgraKRI+pF4PIoX14f
wqmlIwffAkHaqGwiitpMfQL4pC3xMC0LcLgItOaEIhZePfNE6kgSTCQXbYDd8+cBs/cYDgAwv8u1
w37e4iWV/BAtdB3SAZqoeJ6tL85tdfbLGET1HSjQzhnrL5EOmX3JDZMIS8s+7n1pLaaVkG1Z1TZ/
ZDmaq+rhIjGOX6SuPe6Mqm1e/upp/Ti0hOLBhJvh9uENSFMy/l5DkQ5pf5brrVNXqsrH0Vo/HU5Q
e1zyqYLtnH0kYPbSLR3n3acEmOLU62IaeKA7Mw10Zy4fVPpoqTpvKQo8+hh6kXzeSL406OZMUuqu
zzZQ8wIE54ln70pzz/AZF4Gk+HytifzKFwLerAeZWeNuoT517XsU98Q2PibuMI7JLohth3SONffl
V1XuQGvKFqRgKqwYqDtG8AxPikujiBq7Vuczpc/gpvdiEC2vjBlQ7fFtE7SA7OYbWNDUkcF3OJ5v
24wfoRvKfe0OyHfsnAfjyvdkcjNW1wz8SFvHBx3lAKuclXWuWATzikLeHiHXpDjwR0oluk7bRCN/
BJJCTwl8GjsfBXLUEtzVe8DCSTorEiiXbTFCX9tzTGVl8XrIAphyGb1R547OtdfPmPn7V30yeaqj
dVa0UB2/zlcbk7BdVIOzmyU3NhnKe1NcW3+INvltjDsGl2L3Na181mBb0O5Ls8pwzlv6ZVScfWNv
nAanN25uZMWFXElPbhSz7OyKYqHpJR3npnfEMEdlp0R2F5J2qRiEUzJeRCzlZJcqI4+9R9EGVZJu
K64EaY4cTLaXGc5rIfLpgSiXFgxnDkttixiTuc3w40t5dIkUq1qibaF0j2RdK7IhakLa6JoqKcgB
N18pBviAwz/0sWWE7jBjEQYaNvERhCKP0oAMeQhTddCfFeFmGh+/SlrOgM6RZhME9bE/Kwv8RU6c
HFHZsF/BmXl0fObehwM9vSYxIx+p+SGvpTMPg1JtGuG9+3HwDuNaDQM0Bgpnd8R98smVSyrza65q
PVLkGY30gZHLH9UB0LitSYe0dH0QpGwkz0+tfE+vphWL6KaLT0D2DjVRE+Oh+mr+OQWjZkdbA759
g1AGmoi0iPX+GAxUo73wmoFy6m3I8jtegKR2PF96cmnbuY1Gc9gadb4ylWzbKEhvzeJgyuZBMlB+
f2ozxhztOQthnFxw+9CxyeBjJwKdatqkFnoL3AmYP74bsm1MVhxA0M+nkNI1rQ9JKgd8QPs1Zp8H
ooS3y5DMTqjuARleWVd2xr/L5XG/nw9sH++6aUanDB5rE/yji/M8QdmczSK5Ibi3A/btGl/BpDVD
i7nBRhu1pagX34rgppZ9yiGyiOKiRULqlMtXoJMxXQEmJ0E9i0U6jK0BLZ96OXbsb+mJGq6oMVHI
9oT2l5SmzsntT8v/dOn0wjR7AFF6ghD/wOKeULiucNc6srfn08IDIPTPLauCVPI21CkKVkcAYzy+
OU+j6YwZ9gbqBMLyFI3FmMeoII7eKmEEiLmvtf60qQGGcBuaKXRApRKjDARPZ826lN+1DTFYYiy6
ANyONjpxtdiy9uLvulu5u7U9tAzrgJYUC2WXna1vRpojM+/1dzE8rsnKvVCyipmTVGtOengFzFGy
wZR2+P+adf50yOgcTL25RJjKrQtvzQLMOBu9mhJWV+LHpsQYKHbTJPNf4FACdIzBG2zuMM2FlOIm
EQed4ztplT0GC/Mpkm7MVPV9IyqVcf+5o45cBFaiGdYoqsq9lrUyUlh9sSh9EJJBc+2GW3p79ZyD
A+Q4hBdx93+maPW7mJ0ipHiKXjouPy9ERu4Kyqozp4bo5hbluKO1g8eXwv/fO6cxeN22NhffTm5v
H5FzPYTTMt2wFLR9JuzRYmMJmCHMGOdxb2NGSSz5jd1RzraHnQ3cu49WCiIP6x7bOnmVR6A1vtsE
ZDsAgXmPjuY0/rvZYJoadhsN3isz06BxX2O7Ow2Dxb4Dt8eGTZU/d4qKDGQKAeuyKBXVGz01UchX
GhgrQ7whK87vk6t8umttSJYpqqICKWwHZL7YglyL3x0nfoBvz6Imo+6bOl0n6dUGLOdRPTcHtAG0
9P2mI8UWz6gYAyKFxlVpqIdqQKSaYKZ7RXKDVScgqVKuiLkk2qGbzgjqCjj8T4hKzKaFjW60Adhh
tAAQdJxfQ2dfSeptDC0O61LeYNoFe7VRijAjl/KO4EbO73Lxl4AEAc/Cs7JQf8XTJCA+OCbyjtiy
67swP4Jabr0hnXEehxASLKU6wLMNaFNYu+zPAq2kN468uhURDclppmvfxdF3DOfdWrdRTPixXeIz
1MrCq0b5pw+8R03Pm+TWEpyAUYW3P4Nmfd9hKtBrNSVzNlMselS8C5t5zvoXyfynA1ope0MBOHG1
IiLjp6lkDyvpfgcH9W3FBJOrj/aRwyfccnY1AJYkv6/6DDo8v1AX8DNRITyt6zwOnjv8zFH7soTK
QHT5lY/6tQP1Gwjjxm65VnxJx5D3GnzH+eztyKXoizrA1H5o2O5GvlRFrw31Yo8oBe4j6PU5maGU
RZpWWgP5rfLZllWt2aJAyxD4lCDewTPlkIXhbWLSXiA0ReqgQNPZiWO2Khoh5HjL2NFxWOjQR3Up
GYXu8ZEkJT0mW2B7yiTT1ybYiFwyVFieCNfEK6itB3/jbwg0m+Nj/1ydvOg+xmBWSJ0Yyky1pppN
3RSxn8PZdP1ivtk2buIiwDXwtGhSh4bCH9tMzKiCR5oMUeFGh4xJ2DD1fWq/0njyEaH2UzCdkCzN
qZOd8VGaBLvCFoRZE+865tJWvLgCgvgXZjsyzayS4RFhyxZ6Lyp+XY8LjDKlgLiLcFi60lYcoIkL
K6pbHg75sgOnUsYvcldtEcL5x+T3y6X4RTnrugRvd/z1Ao6F67NNIfQHrBZ9iQReJiLtBigZoy7a
v0q8pu0Nit/TsvqryisfxVhRSbLNt7/L+zYJSVe8PEgRmRw4SPVT3yFRyndxSjvzTVc1YOkKBSWk
ujORWISPJ1Adaxt7Br+6eK2ZinCKoREFhjFQ6w6EgaOUjRU3JZvqy7wHWzpjIh8RhkmmlpZQjPzd
f6dAeCgbc6UBL1NfvDKcSKSQWzyKLHjxQj/FwssbEBZaNET47mn6Zd9S81FbtfJRv+wfV6+ONMNo
Jm/r/PitqLrGfV5NCNObNgQ0TsDj77xGHRg0zR5jJdHGkJHynBn+sa9RyMjarioqjUBC0eUdcgYT
GgQcBQCDF6bcvqq+I5G9XylZ58vnk2C4uKmpK2OWBay3FNAQH4hRWUnwrLM2W8bGMLShs0Gb27YC
RxcP2ackqtKH2HxQ4BTqs4/YuWQR6n1lJmUtrMpWh+qIMqkUjnCyqLchS5ScfFVw2N5G6ESydUWm
XkOADOEPGYBQMpG7ZkizqIKk4Swa1a32CURChQ0GapEBDU1URc2XkmW3hM4Mq+EuLGmq9HS0R9aK
Hg46TZAbPgwzWp6HH7PmVnUpdoWU5CET8VKe6ug/7clltIG6c+No63Rr4l2daTuoBGhOi/xon+Em
cYksnXnWLpvfjr7GZY9ihqcIXoEJvWb505hpQ++YQXrPg8wrFWdSoBr9Y7GSuDcSrtxBk/7maZ3v
PeiZJ2690R16TIGgI0pwS5m55s0GIjQwBGWh4TcGAIlAQRkN49Woy9UarcIu3qeXJB6XqCtItBnR
sSUW1BKFcOgK1nE/3YN0q9VCpkTXVmEkt0ojpk9Ioegw2vpIGh22E0ir5sVb6NTckdDbxQW2wb5e
IKMyUDLlCUv9B/sW+EWS1NVzsUo6KdHbDsv787dNgoAzJFYu5oFcoa2pPHWnTBQBJtNWnnkRDfFb
u+1aUg7gSNoUiWOQobGyvufwSxoH8NnufA0RCW2Y9qglnQaeOXezTb6oPyv9DrTSmZNmrmEqAPva
yr0OyzFpYnbvPpKG0ZeBGNZZtRo906cnheyS7W9lO8yFqDJkcFR8m9pZhht17NklbMlVohPA04bL
Q9JCbPdEiBf4709aVNWgItWX562mrpKEbduRN1FmSScopW/u4HBWcL4Nohx8zocLHJ++hDcrtFma
6pOJbRgn+ufT+DU7akNhdS34e+sSAoeOsfGiKh7eMtOHP7Q4qZ2AafuycKVGsjbeIQX2N5J4xnDu
tsuc6/pZyCoV4rMGN1XB8+uWt6yaidgF+9g92Jtu8HskOvtgjfYStl+NFQHAwnFiu1/3hoIUO7WZ
TpATEX0Jw7BvkkF8KRSFtBLPo7/Bv6xfg9oI/dE39u87zfLlPAXHI/F8EHgPuLqyirD59bM3Cbxw
T5qjDD/Lr2enpzxiueNr80F7zG/Kxp7x3Zctol8UZ8B676ji3PoEMCPrQyXI2PTJFPoowtcNqesY
2pRwIoj+HRYlEHEWWoNqTPkLwXZ7bjY2wAmn5w7lG9Zd/cC5PHwmquG1EB6LPB+uJLgLa6UpRoho
07uGrOjcdLDY6s+VE4FQFGnvIUA76pj8kv7xZ4E2ZCmrZOl4raSLzMYvjnsv+ExazGahhT0HmBAs
Zsxb7xO8NE4ZQvaVrEfX8ke6BuQuORm5eiEsQEHzP7m1hufsBufwET/6/8Uby63n7ERxA89ra+U2
He7foXQrD2qOF8XXx/Ju4B51tzvj+N3apyZnUmrhTBOcjuqRBesm+QlTveggWBJQ5l92tv8FF+uQ
z1sN47nkFfSfcxLdDtwNh3MIXksWmGcsRMJQ56Hkx298da6FLqy6xz7HtwBFea22ckFWVkEaBo1L
gGuT9zwBixUzc07iiJz6jrA4gqfRDGzC6+y9opJMO5AvBtUW5yTQgUDMgKdfY0UrroFs6qh6p9dt
kN9sHG13X6GBEUtLFtHQ7Yn1kg2+M6r6avSpc7Jcz6W+7BhMpW/hrXqqchTvcKdZsJS6N3004RF1
48DhhJoPFaP1CixbhTtVBXIL4sSOGfk4iumUqaQEbOkXup9L1ak9NQVJf2ixsfkGskEIzDowlHfi
F2TgTnVbuTT+jir7SnvIviI0CLy9cmZtbpmN3YwKfMkh4Exf+cVIpK9gAWMwToL77i1uSR/pUjNm
Dpq9PxYmUUr8UbO3YY0TaAugroLX3Vz8daPvoxGFT3xlfpgyWWsSTzLQwvIT4t+g4z7VlwE3nXgO
HPw1zFDV9zIwRymPthOHrLSVX5qoFL9YJfd0a3ioUeKt8k88lfjiIW9u4r4A+F4mXkGFevcIRXl5
9IaTVtvzkXDaIvvjMBDGv7xzzyR+9n/jYnqkM5YF6FD6m3b6eGaRS4kzZMEE+LFYekuuwhylwga+
/oOeUH1j7W6BOwvss/X5jg9hu+k7UVOWakWprsA5pxIARG9uzJP1GKT9o44x7EGyrT2GIQvTwvh5
g0oxoX+QH/87YKE1amND8+9uYFKKngKkgimahoceBYH54PvUMqg5pTiiJU7W3H3iHYzS6JSv1Yi9
Usjj9hwhIgn+2SoKkUWM3tszcj4FFC7/2nDBuxfrGbkdWQ4RwKNmKNQ2wuABxyhlcESkQGUOILYa
XTWLG/s+2dijOC9dCO8dTx3MpzOPISeKsyVxQsxutAfpvDQHOdJfxkbryxHml9MN8wh0e8ZDcJER
+9JR8wprzqVDmNeoGdNPRrSzp0ivtweVsG050/hsMKSFUGqOT7ObyZ2MFn/Bzc/9vyhDDBwf4EiS
5CmWA/UBRLzxcULKLQzDWXX4Q+iM0SCwL9tBcvJOFLDj+P7kJtxz5iPxEZ9+970CSR8j91r4tOv8
zzisprYRZegPirtXZOy9TdYswTESGbChQPa958dD02GcW3rz0ajD6Hd66qiyoogw+oQPfr89Fb/S
fvAITTtx1PiLgP/n8+4pjRq4GML4nakNyqTZwffc+FHoBLXgE/vOmALhr/7uwv2LEFBEkn7G+XiB
omexktK7/yytnpAV14BQqRKeS/wLwdxrOc0JpFAbDvGRgCB9A8o97wO9aQfATDAcl/2Awuj4uNKu
nHZvDYBpHopfGSBaBfKmjtTGA9i1WIlfAL/js9jz00EVDDvK2is6DERroMHY/nM0QBlXG639bcq3
/dztEL9W8/xR/2DilqTeY4Cbj+Fst3w7nTtDp+o89x5bo5WKE2jUGEvgCca6vFk86+a4h3oE7GnX
nQJ84WnwECoaKb/ClLWQjaYdZc1k0XZnaQrNBX0zPGyrPfhyBvmgD6quCldnXn5m7KJO/Hm7If4X
RydCbQfrpHaxs+NZNrl+fU995DSq0NeKWM/vmQFwT+bO1mWzeNyoG7cEMO9+4aKFp+aJFK+VaMsT
ASgCIYySUE3JUPG+h0TIha/WAykBXJCgXfT43zqrLuZNqCnH/5HyLrq98+px9qZkK2qBaGNEYiPl
dHrAmvxhl0rPK23Glk8hashGcyJiXsj2g7vxqYfl2Alrcvx9MGr67T5D1o6NTS332V6g/9BgYbd0
vhv+JVsGH8+GdlU1JHRnxI7RA6zgDaUvV4F74KjAZvAETlCnZhqXarINfZkjR4CZVhxfpPS0C3Ik
V1EbCZTX5xaxvwuwCiNNOqq9lY1CHIj2ro+R87TET+RxAqx2mM+DWLQ4Kp+DNH9hlPzO+o4MbwQB
+HJ3YZfxKJdum8QuErMhfjNdwgCZkfAT4nLWzZ+kRNMMskpQKDivN/oif6yWUQsx6icOSefe2IZ8
UIwn6DDZXeCj2oz8uakNJfaKtgve5WlbKGSwm6pGWXi8405p3oFXzGfbg69spb/uhokfVBNro8aD
u61AAia9Avp0flwz9Vne6BMbRTHtkgRjyUn4742NZWZQOnsFmHQWWHVJNtEEFqh2CVcRdj2j+HHa
tJ+sikQzVZlKTARUlxR4N731gyPjS2JDuwwM8ucb8Aswyiq+UOyvUCBQkEN0PaYyfPXhQacgPNz3
ZGVViUbG2Fn42vURIbyHsAKSnmk6cqW5iZpffRoT3KCvckI+qKDplR9O0JpHHpTm7WBm89FcjSQ+
dZ6XRP2tqR9swGQdimXacruo1tGjbM+UgvwU9qOLE/utEW47WHbr4my0y0TQXPob9rdns7xVfjqW
xNzcSPMktsnBjPMdEgKjL2g7w3Jp68Koa05OR9kjR1ZVZtsWMG0pa0zs04m8zwRAPG2iHm5yn/LX
UrQGoUjrdhDAzx3nK5l0/73bBvx3TMIEKzOlS3E34Lx1SpRSUMnZ49TKBsj47S2G+SABN6xzSQ9H
EU3ArDzdTJ9NPWSjBlZYoRelnbeiiqFHJjBWHdEESiONYl+ijMY0VMWymct3h6all+lksT+A3P7/
eTCy1XZxAnwKTPi7kxgW4dAvu3WFh5E48m7QV4zMjbOGO3q1ocFKVhJH+1+c9+ykPl6gIgRBeLo3
t9JROhuqSEeShvgEhg8V8dTgPmrzKIzHovhkf9dxwYgWrus+qQyuPvOa2TjeW4GF5bVLsYl5dbV7
UV7DQoggnMjivVpuKAg4CRl+rKMBO3KW32Oo9tveqi05hdWMtsTTaZVFVuCp3G0OAXT9EKG9hlkP
elhYjXAX5W42LcMP1X5NNNxkJKryVFIgXdv8gFJoBGwR8+6UeQWxyNI4riGpW/P5UYQSwR0T6qKd
oo+I3SeT6A4IFUUvoT40XtweFRqc2+1htqD7ermX3FMSz8Uu93GpVAWiYgiQIZ9jnam6fSuWQ1+D
nRe/YjDjOfr/f4MTbpJFx+vmQImymAo0ZY2SKIIz1WsaQVdF+DZffyGI8jVIJXZnMUglnuMW+sWU
U/v7GYvUM3UJWKtuDfqJjkQ+pkbMt8EflRg7nFKc4fsIOz/v8jyEYAg3mOWH8Mwi6U/wM/kSDiKJ
ehiQy1lBrt3/KFE8s/80hSkP/q0C/Z8W1rE4WU9bZNozmWag2NS1C3O8WM0L0001IX1OrgPzufaV
TYVXkvCr3ptFrJiAg0qVYNya+0tPnJf71uT5Bo7wje7Byb5hqFV4B6x+U3Sa6CuTz0ts4ClDWPVH
KucakQsXIUU8L1Ma/O9SHrrJI4LrOCceudOP5haAgOBm70koD+IUUphfrktX/J1Jk+u22ONu208K
OQFKrWA7W/fg2tK7BPLi5xn065+AMPs6CRZKnE+ROBJlEbVhi4dMqIf9GJ9IqWG2Zo3E/ICXFrmk
PTjYMpQVTRnyfiBhKUw+O4ubnnqZnbmNvje7eLkA+Z0oRw5YGPO9c4HL+PWJlJda68vvfExQaxCN
4otm1oJk6iSO+JYPcpmSbz+WXf7rLbjpktB0WWJijPrEJlzAri1h5gxymDkNvrPAoVbKiyLx3OlN
DJgpqlRsTIX9/Qwvjz9uwCpD+Wqv28S7PT+jsdW0dyteXeQQLDUVqibv7LmwR5j2rMcb8rUNv7zL
IYzwfbXX7QrytXw5Ja+iWKmdIKctxC924+sVYhC1il2JYx7eoZ6soj7uI1FrUX75RR2jB9cOHdFw
3FI7W3sJ6gnBr2IyiObloaEG1cm2LumrNHbJMQhS3LBJCWx0ZegJHRfT0yv3APBu6NNiq8zVqeCR
nCkAUH+YJh3zl3ejuZrXtSfVaNrLqbrwifcHmeJGf03a6CB49NtTYm+FKccJtu+iFEwdC/Vjpazm
ob0tnimoUi7cUSToVLmrMMy+9CKP2kOE3lqwwjslaqsFr3MXOd3EbXqy9cecuGg1EOh9/2PXbsX+
KH6LqDNnHmzkV119iySjgeTTg/ur/UJ42Ty8B+hyyu1cI7Pd2ILKlM69jS9iJhhW9UW3VXaen3q7
xwzwqe0o71CGVihqwZ9O64BaDSk+dBev+iV3y3v0BKmHKhO583l9dxNLMKQKVcsrq+Jy62P0NAnK
FyPcq1rtd0KAxc8bWKogLJN9p1CMZgRmdu/pO4xmRuc9f27xzU+Wn0onLevkNHo3rfoHCEgXsDIU
RERXLdsLtw1Jk6so7Z3ti81eEfsIHVqo1y2Cd9cKlm4Q4OvflT7umgHoDSXYZi/Ojo0pghYwQG6r
ZNf2CWY8Ci1VxILcqdC3Va3HeIi9UvC3lH3aYOb844J40i/46s218fPKInW1D9Y+g5yCDxfOIIXX
dX73widxzL9bLqTohFDsUF0kPrvGYjspvxWswh6W8aqMMAMZ1w2+EAsoU/ok+8rwzcqHVRHD7H/9
0zrDZDp5fvhyLHgazp4BcNzIKspa3iXiK/NDB0D2jW8YFKWUTh3Vappz5/ULStQcHrH3Vuf8/QOi
WUIARGnZfh6e2hY0xO6u+7KuwOKK+7EbPIGr/lPWkYEXi6aZNvo2jxQvcNgGm/ZyzhEsLHQ1QHKE
HYFvSfgvHq4bkn/VzZk0RwSxH/ddd+EoEztLilcsa6Fw+K4vH0mOXtdwyxgI8bEHKMOKcvLut02t
JYTL3bgYFXuBhnAvz7Z/4B10c74FNssWJqjmPTZrqCADuB75zZ1V7Gb6Tnwf0/1cF5BT7ZaL2CxT
d86FVn6QeYGHv6tikz8DV20vz6p7LRBxF6emt6t0URXwomqjfZpx5RerkNnzc0nbHaqar4Iw354F
3OFrp1a24bnencHP0SjsOikaVQkFcFjmg1QVJIg9eCcBpWPPC0auR/UlqlIkeJuNH/sG4WLL6Nyz
Kl/LZIVFhhwP0Tz4jOiiswzoy18h5/q2Hy0bULBbEV+nDkj/c9cbw5ldyrDooJRv4IBgKmGvBMXO
9fv/MY3/RRv3v9a2cQXUAnsBNhp4wfOcHGroxji54zETTy+UbaX4FljAmZCXR32FsF50HZ4DT2GY
EowqMfPhYhCphZs7hQFW/wp+6gVsUsVxgEGu
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
