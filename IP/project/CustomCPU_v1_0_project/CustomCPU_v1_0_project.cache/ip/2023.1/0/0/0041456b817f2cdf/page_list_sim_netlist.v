// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Jul 13 10:45:57 2023
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
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18992)
`pragma protect data_block
vOj/OhGnAyTI7ApqspIfEy01Th3gFOCqryJtt5ekmUKTWIonM0P1PwZ5BNwL6R4DK+EU5FpoYJh7
Kfs14x1VwnnkVDW7rRzBscdi54KXf6omms6YAdkbNsRctYdRikToa33LI1XWWMXak5AIJfTw4IDk
WoPv2r5dU7GfMUzuvxAQpnPimsnfemh6qKXFJmaoBK2y+EZMaqetv/964EHKJXWkA9DWrAS/uQ6G
VoxnZazlFZdw0RleFDRtRLibLoqoCpig4EcH0tjbqXl5trdVBImyhFDXHit74BfIvDsdvKoAokti
8Ljkv1znbMpzUJD1ZJSi4QdftlDOJA7QTJKLHkTBHtsRgL6aOg5xKjgL3UC6j1KhqZwmpBldeA/q
DGO2TeFtzyvdKTWLy2BmldyXrsnd4pM0GM2IP6IwadYnLMWILmWDO/ybreYO8wibIInqt/VU5DGj
8XMHQr9vMrbSiEw4lefakNbcrV6Y81tVBqoYDyRdt8mUvQCwQEfc/f4kk+UKlQFLeV4zdLRc0Mqx
iti4D7VoezxPm3nQcZ7kBF8qbZZTI+7VBKvAB32SS/h2S2LcjuA0+ASbpvG5CoOciPFBZ4IzZ4Yz
wn7hmIB30U7P8soMU8rHGv8D6Kp4JqnHg8u9V8wXTB54S+2t1FpYOHFNVJPUlAJSJOTRjyJGTnhU
HuZIpHkBs2Zab2mkn9TsHuHe00YtTN3YVXhkKgzDkmFYFMqRD04n30WUvMVKYKlADlyFtOZ27u3u
/LP2Q39i/XqYyBSiim1Z3RHYRwY3mjwEj2N3+dkegUxFCo4kJPeNCYkTux/afilXNvcHz1+J3Il8
s3zM3UKDOrvttmuQ0BCqiwC+VlaaTEWhWbq7hjWQX9TALgUstnhHdAXtTpJ5G1nw0rkJ3b2c3cgb
wwqLhim+pZ/LeIKNjmVFvJmd+xqW/tpsQNPxa9Y2rn2ZKM0evIM+TcwvsDMhbdEvgo+DRE/0P1Br
ZwNUpVWAkoSM+6lXybDQ1x1aLVSby6cLuCv2acTgV0CBTU0eq0oew+rNO+GHv0TMW9l7OcA2jC5p
69KWlKlvf10sd8VY7u6ERui92Iqajm8L6IGTQPtdrhQhBOHAVKdmUzgahMRBmF+CDRsvE2EFXeUd
J+R3Ymms5Nn3MACrj93//ReFG5FapBCLJMZ09lVgkp10iS4yeooCQnFl/2act2bNULMlL+zLJ3tf
4i/KE8Q+D5R47P4aeG1o4XyWNTSnehcjxOD8gqzEdUX/sdCfvDW1C4h5AavOeYxYr8TDlKmxqaDm
eyKxZofG3WERomSv4Dw/2cyJfIHYF5tMNyDanpF0k9M58mE1NzBlzKsZC4RhmOoev8o5IycczS2o
kWNWIs/qXq0PC5sZFiNOFwfzy/DpdzafxIHAFyk/cLDfdth8MTxLTZAczAIb81p/TwVw+leMqiV/
Phwyr0MWCOjbAJcVaECcvRYhsq6s4xf6cfamebOJrGSjK7RWpkCpj5RLGTFYgdUcGDlK67cKbWVC
rEi/2s1Q9qAo/hvp7K7XRCdCgscmZvB+/3g1EODospGzXRov9TMuMTjZW1nDAwLk9yiprBchmH6a
QWf1re1iRKIngOGoZikv/LxBlvl3+WhJGexewISpAVHd0OQz6w8VI4xY6xqXtP6nju525eY2vyCo
kLn7kAgT7sAdZ6byx3Q8GkHoDDnuieCl/tL4hTD+wNSEFn6uJaH/gG80Xz7ofOo7VjBALGmovxBZ
X5bnxTdz9zQkMgRUTW8+JWZLwENx94XjeJmVEY7BGQi6Wgl2PZsMVFpdg2GMlgxDqJlPmx0KQnRa
CiMj0cPQvb2F/6twaPIhtEB6drOrQujN+MVMBWZ6+CYt8T72mUpCrGZHDyH9ijorYGtjzNSjmgEM
lnG6kw/kWyVA5gI7driamOEa8/K5qJM3hO+uBncfZkVR+XwCzPUYzupOBK2ESe/60nUPoxMSOWvC
uvsmO9JNMY5f7TD97wkQXFZ+0aKp2dQZHRqz5KKPegENTHP6S72x92BywkQYai/Skpz0IddBkZvd
eg7JFOvlaPNXaPfmFtSv8hzGYoAhwP1jDGTVxxvuUJq2mdy/6EufR+Qp3Xn7SRL+MPCsXlvD0YUY
JUFx4IRVknatMvMLPw2BPuOnm7JAVDnq6uX1XjOO5z4y/ZfZOr5Cym9SuxpySOqul3lqgo0Fid18
VqNCxTWMoUSU0rn/cJgTzZj0Hn6RYhgUN6ZjpRNqyw+DkHtHKKf9lCL7vPtKTOgBMjLg6blKFDtO
hw32a3N842fpUwNEJwKNHTH6t9HoEAeO4OEdd8+d2IUJhP00TJBZ3yi7mULRFHVf+btzowP/H2Vr
Lp6LBCKpYlZJ6rq6SWz8FvGM/XyAfnm6nmW/adf/ScoOBUJzy5X3N19yKcRJssKdj0PGQXrKVA1D
t2s/Aaa/uM0mJDFSh4AbYMhm54jNbwTaZERuuDhR1k5/wCo0yhTIB6US9/rzPNvPqMCJakT39rcT
F//k/o9JRKaSzo05YjuI4/xpo0jUTdYNS2EEswR6yK8/E1Of+aPfz3mo56dpDbvDsmZz114g9hEZ
G5MAi1uBGdS7yoPqrnoWSAKHavbDbeUTL/e92mzo5u5bMfvCwPtuewzr27O+CV9Qv8XyN8dhskqx
7W7kInPBxhrmdhhKrzbgC9zXZiHJfuQPfFLhuiSiJdEaJquF4YfXcVWROqeHjWWXioHNer27OWZq
8jtEW566vxgs9xIT0xucJmMRoJZZKhHxOuxrKaKT/8AwNCFcDI3bLUWiNvdBctztlLZmGOGC/u6f
yKksQhadnEv7RqNXbh03hyKvyvjN8ZYMYKJDAPtyqOGBsBVcECN8L30XrINfsjjrFfv9UOAXNEY3
yNwtFUoEL2/sTdc2eaZ35y8C05k3VWGImXn21LpKD3qO+W9FqjPC3Ts8iW7L3aANkPsrafz2rdJ7
W/kF01juMB1Ze9GBj1/6WGdys1CCxuQ2IwybV+h4Um5PuvqgYVTtAaj/CLtEUy42zOkjLkfomswm
XfRGTph97kZ/h4kQfQsfbXI56Bndf57lgRiyOKNIFZ2LlXBrmnIJtcRfXlnhFa4E305vYJeYvwDV
vOqxAXv33Y3qU5dMy1BdLSJhWAUUZw9SlAtVTK7z2s3dzonJGMVO6jUTEjOpzYkFRqiHeWMgPbqO
a6qt06aW/y3xjogX3wNTf18Mv6z38o5FEUkRE9UQHnwFlg2IL+J89bOgxYIEhTVQ3n1PoJkrHiSx
jhHpiUKE3dnZ9sWjzJ5bTsA3AXjmmZOCRdKY2xsxD6Ia2n6NNMU15F3XU6tYkpqqTTGrC3v+2+oD
b3dVNPSnx+e1qlzskndsBxGuYcMylrxBI8B53b+M9OATMu2rV/tBUfQ3Pqhcyd29JS998AO8eo2I
QPj44B/LUz6Ezq8Qv2rSjpc65FX3lqNQBmatoOckqO/eF6JUBdeBE04z7s61iexSnINthe17AuzA
5tvfxirvnV5FnScBSYqvPdGSu6W8Bhmjo1AoubcusS5NGeEqtaaEQNWA56uwBGZXkbBjIfmqZNfj
LMcMzakp6TpaYLSDHZmB+Hk/M16McQZirrhDaX9oulGG6AtuQEKhg4gZGXLzsAeDtLmBxT48u/8g
UGFcNFY+DZQK4rxoemREgmJ4ivYZiSISRzmjE14GfTaae4RvsNCTl+bONMFt6nQ0foFTtBK8o9A+
I9jWfdjUQgxHPW2a6IpCZJJCKNHq+mYpj95EfQl/agiACCjxcqj8x3U+jUNobyVE5yHGrahgJ9ia
rw+C23bYMTONSUvYpWfle1WImag2UImE9G59IJwzGVMEzAMw5IypyZVIcjSb1C3V2hC0pYA2UMWw
f+RqK5K9rlDm7Up0pPsUscxFxJIP4BPpxThhz3OMjFRmuh0CJDNeG2/GtVIalys5BQOO45TDJ3uD
66gyqWDEYwRiku6sdgRy7sQHnyR8t5kIeIEEVefyASktJsrEGqVS+fOy3eC8wx3OrJw4dW1nr2J/
17y9Xr+e7ZVNH/l4qHDwzDuWOHAy8KK6g+3Lai684Ip65XRydLLOXfH9YEgdZF2iaEVCqK25dCi2
Nn4FZNxeEeqSuuk/EyRzgQI9hQYR7VXrgzDphNuq4A7PAIz9qnA5YumU8ySKTm12EhPMV3LKOFk5
isAzNUUt/lhlhineAmLywgAjE0n6Reeu1jD5eqrUfZvU4tXj6bsh1vwVk3t9omJZMk61sHzbIYZ0
1Ji5KteH88JI25Uku2UiMporYvFW+O29N4ykkE655C0ZDhuixl063XUIJUlB2JIQCIGvQPES5Yl4
+xiPFnAU6yFMykvW5w4qV6G1lwnPiONCMgkRPDJQADlB7mhCQRjeYgoXGriiSFZairNitjLgM9zF
HPA8ggcl+y+eqs0K9oLR0NdPc/Cscqqwa1kU2KDQH/b1sromy9lQwk7aBsN/4mTwSclmXt+ydHTv
w41a3MT/KTNf/f7+IoYdgmgez0ZMcSDkCiOfRAituFIqjxOCeJNrX7lnIUP0O1DI5nsifgpzZt1V
TumD4YTd3mQDnwjhZD0HJcV9TYwaNiAQcv63num8GTeIA0sIKrqQDrph27yPgMhg7GVMaN6kNRg2
YCCyrkf7UuhBdsfvX5oVx6M4R3PA4XZpKA36L/v5DP40EvrRZoK2aFpXVrYtATu7EVTTcWTeVfvk
/RElGiZvkeHQRT6b3ngXvuh+dIXdTn6B8cQEWm+5EdthZ3Km1e8gP3MEgE1lh10BuieGTUTxRKmT
OvbS4yEACWpDPLTxzVMfdOXE5fsx3ruRDhApMC+6es05zw5Xnfp4MgFi5XsOhqLp+U2xMOfc3LQW
kVHCAAM2rWdoWPHXAxnrMLXGQgpVT/rb5vE7QF8Aex/m8X4DXyBDig0zT7gzvwiS/Ye3rGz0zIny
6YRM9xFSZGoqRljTEBBuDVMXTEftLfxP3xigZcjkAN7lMK2VzbFyQzPBaJqosJXKTNNACDelgVkG
JSCj8QWKMpqCzfcs9FKJKBM7rSR0fqWzLFvmbpQdXblhOLlhltV9q1HwKmQLqVTUQbUrG2JbceKa
x/1OKKgJXyoXQjQj7CvXS+dQ429bm49jrXVnatGLVcO5SjcEwWrfpqx5BnSmQbDMGG2v1X5tehfM
eYXvNEhqXFCzBjDEl6qNfIIJTg3cS6p7yDZNojIBHcETshrG1o5CEBA43NLXKN73NjgqaElM1btz
BGaw6pTJMgo+JhcfTArHTQLWWK26t5Q8s/y01JVo70e34dfXRZCe2ezhQSq5zBV1EegJQdWvYMTz
lGowb623UHO376caMXEdrDJqX/blpC0vmbCNDkY0/SC2PS1H55pbuwQUuh2lfzZGGegh33GxsP4w
byAaS5lbUy2P+aDxLiOAKopTaeYrcCU0KGHRfWHN8yC7kuYoSyTtI4XXReLCGiNxBNdr/hOa0FwW
3s/qqcDYgy9OlFBtePj5Ydss69tCnqboPMm31i5rXLTzOXAkBXslwxAweQNCmzKcqdEkji3nnJO3
mfjuFMnnHOwn9tTg9nUh+MLr6EyjaB1uvl4OpbsvHuL6XuwtgHvE3pemBdneTTtroZxRL5OEyhIn
LZsTtnUvhIuIdmOvHhjnakt2ix+b2FGFxz1pcE57efR21PV3kqeQYnPWhw43WNXvDMC/CB0TGQP7
3NPq8TUu8ytsih3foBpmklXxjxXTJHtryWPVirCujc7+3f4DGjsIoOFvJIPlWuHiem2tgXDWA2Z2
0KgYC3sQQ2bBJuAPxcUEsOSTMvpQkExlyliZeFnBj0izbWtkYdBvvLwallL8aw13I5Fufw0DbuPC
TPtVFmAlUeEs0kErPUxOry92mDIZYv69Oc3k8JQycRAOCv6S/1jJuQ7n1+GXCHURNvY1I2QuS/iQ
kKxuycP4XppmP9uoR0pgFNo6zf3PhbIIPk+qNw0iJbDEDgpPsi89FChDJmvtR9FqKlt3hoOZqkuB
i5nKIeUox66CHla6AOzt3K7jqNWeue6P2PqPvdyR5sDVrTpjWkalGuGyfOTEzkpPSML4du9nPQQX
vm+aPm+q1scWvurNaHB++ZaMQtYY8z53r+kV0UhGuhMMVnfWUAWVlOyffVEnaqxcIRQqbygwVmJ+
0zci9uH3ulizS5IS2TbIx05tdnzmN1adEfITJkens20TcmrbjBmV7kswTSomZCK7fsvSpoBcjQQG
obNRqqlHcgweR6WLlUngqgKTotfJcowpGLUQCTOZPmSZugl2Ul0a9l/H2ry1fbUrdwC6XtVlRkqL
B1XVaL0E7gB9QZo9tkNer2OYU+nU4ALukrUffq2bdbydk1RyuMbPzLYDrKkgXy9C0FfjC+1QRL1Q
skqksFDgugPddITeqxU5UyG9d2BkpSttLGH85OH+LCp9/gtwDF4WnH+QLFhgvwURs0HTmJUXaRKp
E49iZtgPB3LNh58+KOU3Qa+XfjF+aWjGgWHWXHlTMwjYcZcc5cmMbJfC1Gkm9g5SlPXQPzaqv6zx
/JYg3iJMWkBDLT18N+Et8bdLiwECyTtytPVWM07Nz5EwOr5xnoFUsteDrJ5LRkewuLkmbUrlu1y2
i68dXcz1T3l//qY9eUS4dQ7oJzhGSxFpZaiLIk4UfT6C3xfozegJIHA1Da7RYdlDSbwAgjbZEo8J
pQBZxIqgaRgtl6m0tckAHA/PpCp+yT5q8kt2c4tNT9rg86oVecVIkOYe4mDwhkP/JqRj7wYeiQxx
dVl50I/SJJ41M+7/6eP8kWlCNnHxpSqgLmNin+2Pz06yc9WFYy4jogvtBomP5/mv6GtqN3f6+mKm
nClVkhOFw1OdE2Xgfhfe9WrwdtpjcNDT4tKwYh20VdzIOM41ty2XKov8TX4jDxvRsbd0OQUpYNK9
kmmAQs2nekuNjtu6Pd47Xin0mkHUTSn5U1ZcSCguAf27PuMjI1nDmPg2yiUrrNcbn2BOdxmx5Xqc
/PjTLLsjT//QLaM9ZDyHJ/U35eK8m7fBqSlCrs8WA6he02bdoVOrN+1b50GGrAPIe3npG7xt3aV6
cGNlLOBtEl+MHSNjPeofROd+5tbPUdiHDRRPje6Q8vlX59vyMafJIa0JvJB4b4mLh+TPmv0/sCBI
EY0pmy7kkOcHWp7orx3EsDVaPlfVkSdWlVqiXKhWJB7g5+1dell51I1dg2zcbXO2j/orkBVOlwWu
jM8QiG2eeoIY34d50i2TIw0rJ/14zinZ8A1TQO8l6vrw2tlaA2q0PYe6fbWqzU1dCk6cM3p7RZ39
s+/CZYbZVXINDodSpx2kCKgxrt+IP/unafpCBXagP8ayj0RYEXbJZvR0g2NfLrBIZcKOuNmJuGv9
IigaVr6HMGgHR+4XI5nn2BVGFz3XYqdgBrJnGwMUWpX5fLZU4H2CGK1i3imQj0Cg+bnW7wVgs7p8
8D8FAac6cnAO+SBUNskdx9WGT2k4kLkFx2Fcg5dC/s5ATY0GDc72th9+DQBAcjHbXADq2jZDJzaN
rGZkF1W94WswaOBOevBd5Vr9X2bHkftoFAdxrL8XtTxljnumHO2SUz5upVymeOEgTr1UxY3iEE3K
CKsHLodbIyMPETZMFqipzjvPHWiVfqF3MWxXf+0ixbEnFBbSu02Wf9zjc3FGSZGWD1O4J5qQhmkj
eVKGgPn+kAHnt1E/ZEKptB8Vn0c9X7xsU0nYjoH2kzpYzMljsknExlnnjM9iJS4xeRygMWZYPbRC
RZNjUoJpfg834Nr2JKICxGhwl6ZST2d/Q648j90zJjNLfMIrtBZ0GA5zlUV4f4napCru1lHF2ZVt
uN/54wZ6wfnRnEMjltZNWTnvf6AYbmcYtCn9FUm06K10NU+vPMtdYbChA6SZXkF7WYmFwMtxywq1
BDFsgy8gomDe1G/6n/yExmXyCRqX7hOy/8M/bA5HnY93CvSyi3lrzulyrWo8C8WZYh8nRXIN6EuD
qPGKhsKzeiy5Xm9/pM2DZZGhEZe8QydyOlgxWUXdWrIizzIL4PCkUTjO1LG4wARdYbFV48GAyNdZ
D0VfQepYd/dTEljpFObCDqkvdS0+jM7lgM0d/w0jpa/4gvHskq+mtulseH1jeFSoi9Bf0unujsIv
NRte+7RD6X7xF0CCu42xvCZPNZoqfMaJqQM8iY3U+4YsdoeES+uNivawjd2bafTDeiFUY8q09782
5cWBcy3u6+kwRYMr2fAkjNv6X75C/tlhIpp5XIc4JsdUGQUpByvn45cC1h60Iv4n1TZizOGTfJ0g
Qc25sECxCBKVjPSX+mX0CxuXC8MBk3WTHhqahGhUa3JRIkGQphrVbfHZvxLI+avsIGB9M8ozIjl4
I7Y3rKPxQvV4Mzb+Zws2yFayLER4gXFb+C8MnXO+OvSYzKyY+IUVTs6GbDaQk9Sw9MOKXfqF/z5G
T5n0RntL3BoHfI7G+Qu5m/EJ1cbykpkSZArwoYHFxxCnJnj3v3auha+4Rso4Yfuz3ws6P9MjPMgL
c0crY7pS5b1wTY/yARJXJzbffkG5VhTyxtw7B+b/mzGWfeDf/eGZtLF9CS90CZAqL4HRiw8t19ic
B3uOfovm6OmXA7szGn5BO1u/Mb3G4jSnowAHkKnbAj/2X5UAXEzmw5KLU5HKVhYkPNTvdp9kfUoD
/t2QzIh78ZlvKNcNCkYGmTS4EzrctO419ovZJm9ded0y6IxeF4QW52fv/jX5AniRtETwcxWmZIZA
mS8o9VBRjqA5hj5viF3HM/axEX95oHErbhKknbvigWmZ3t0FjLtcAdIrZ0tWhIaOvuoAsXYf8nYS
Bya+XNnNNjFS5re+8snml4lA9xxMu+LKTNRYgCOZ4OnxbVU2SPOh3bVQA6qD61PT/n3PcOtTakk/
rB/zg8ZDGdmejqkCCCWqeubL37aDa+NL2obXcrUCsHu6fsa+qBVhPeExnKVYqC49aVbIUGjnBjYB
koHHAGlClbc9FQqeBf4IQqf/tKCYDaDrpQalIY1IqhrHYxkauxBPgfbz+9inJTAOM00eRGUAwXC4
LoolE5d/hYU5h9v/6ctXMXHu1pdUXZxmPdO56YQ/gL5TMPBVS8nN06a3k80NLLknRSsL4NMarTmz
NDfYF2PFbzPG7avEXJG/vxs+6AWVKUifGX30MPNO4cZprtOs8oag9E45HNYImnekyuSQ0Lzrom4e
hl1RpUSPkg5/O7C8c9MraeGwWlMpO6FC1JxE9HGOQDhQrPL2wGdssDez2n86daU/pXW2i6sQwnhk
KpXtpTTLTRDDzLI3VN0gWKeGbfuP/RJSpCrRibllUv8BnLYAwdFaJUmUlp4WNP96GAsaO6NV6sgu
8pSJyf9VELaSdbfvUtpZEsArsasXzYodoGxLVHzId817GKFSn9g6UmsNbevKB5WZnwUcUXXiP4Gw
cSlHWnEMQWamMeMEEgolS/QnAhLGGxVxIYt6PiKakT+JEDW6Q1HivupWAQopHW2uSN4aLct+tc8t
QCd5BcMeps0La1TGHW5QirAk3RZ7MJSyDvD1sIh/gZTGOvqJNlr1rwLdOHYqhWGEG+FlcgOhYfQD
e1umw5XpnCVO2tDBKM1n8/tu+CA+Npu2xThng+nv/T4ddoKaEvjX8zypaGnvaM7OaQoJ0ZgYezi+
gKIwXXieczu0umbERs5tJzXj8Rm7gjJTMCFDIzycmugsiMtAj4LaaJSTA57rWMox4cPBK6LH9g+z
4s5kyXro1YNRpfRe9KNoEB7YcGJZ4AI3G/WG/fMbj4ttgPsYltEjidIseIh+hmbdVbTKU1/0cInv
dzPRd1JqDGTZ4jhsWBVpiVC14DeIYUo3ZtIDDihTIHYBcYi/rLO4QCicLK1GUaevnAfyvslEMEWf
oIFi+6u23hnBYkWsP70MKlNl2NE6CLcKsa043CfRRcrjoTmkQuNxaoO5SEMjPgNEIPAsz+4TmKcs
jqgQ1ELcwS038CEv8Q6tnxyn25cKt7rCTatsZWWrrI7giDn4oCbL+BMH6oYl79iEsogE0dYears6
5wfqsv0h1jFYRa44JI7jRT3dyhVYNCnaFdETOmCJddsS3gnO2wo+aKq8O5ykc53mvcsU5JHx18D0
sBuItEr1refVPRfjEMm43lWJRxsrAP+MQxtGCL+EDsqFmRP493CEEHSZhdThB7cYrSLjolavsu4S
FW6y2BAK+jsS3Qjc9cHV+eVOs7HNfRGoFrKchMmu7EAbB4jHOmGavL7pgCshqjIoRuY60h8t75mC
xFDE4EVZtzqf6GPYXE3zvrXbm8bfs8ma0jP3ap/42Jk4WasIvSiPCLP8X+iQR6HP+ltNtDmY6bai
9XaZAU7z9eYQ6xNb/cdREa5RE3ElFgS/bZeuTB8cfEhbmI5ulZ9supoF3HV02fJeijTNo2ubMg30
YgvG2bSXDbXDId9aIEllHM3O6k72qPjAy+IJ6CNNNtsD/A3S7JO026jmZuGMivZLGdyezDG6oFde
HGVOi2A5YOKpoHE5HTsqD5d4bleriseQOJ+8Xux1uRFLuJKso18iCR43AiKxmmv91WspxkT6aVT+
YbXkzkuQ4ccB7XjZgxVhKAdndXErQW0iUKPkyyAHyZhkIn++j9SKF7AQuR9Z6C9mhSIaju5+jOoH
Y4b9EEG5k6NDNadr+tgd7swkz03Ypm9a7NBjjrRjY9GvYKxF0SSZocqLwvq3L45gsgh1u1Jeg+KS
bTomziAqNthO+zbp0eIbt0Ux/3/0RU8wn2L1b2ds42mJ8lcW7ivWmyn3za7udWjGmLigjHMkB8XC
gq4zLHCAos0xR+faEW0WlxdhiTRXCD5fxVo/0ZXdMyklW8qcCJ6jXCbNHdiG6h4ZhQjydngY0/Sg
83nJ8s3sXoCkPq4jYFeSzdaBLu6N8qYiM1tQTMP0loLJbGUo00X2F02xf6s4zwuMXCxYIcrryqiY
R8qt6u+OLxecnDPkYXf1OBK0/ZNYAsZ1cYY3lW59oMj6vkuKqa4iru+bo0aNvxV/R6Ez5aMemJLe
35MKhEFIodUU11FGf1SXOaE7xBzFdGUux83HWVmmr7CJdxON+YplkVMSlmBBRYkisJVBww2QjIEK
S7GQR6noC0IsAFpV3jV8fcQIFkthKIgYx9iBLag/Afr0KeT5pb6yExgH1lAbg0k+T4Wqo79hMzUx
vMjh13K3Ltk6VZdV7u4d2trXvA1m0QpY4fqop1WZEodNgrLFAtxJHOLvBxKyq/96xMlagB9xO5rf
nlGgV9tt76V27YuCWhiEsLSsYF+3ZjveR3s6JXPA9h/e4mdWo8lG06IELaihXoLwMLb5az1a/mMh
g29usOXOJz8eVIJJwpwlJ0MzWatseiDis6DTv3MY/jPgKyK0MNpjWTOqoALZz4tzZdlfLuWllDH/
rFQ/b/lNXt7mMZayl7W4knmo05Xv2GfVimeLxxbd2T2OIKpqPcKLRNkywxvdZXDpXHUt294gbfoM
zbVPAXePZPCnzxXr7LLyzzE+xfRD5PYG7e9uGMiVvOja6Uz57inR3oyaVpYht1iVKJy704vxmt8N
nW5vrmqnyWH6r/60aQauURKt8pOjC8EeUBbhIRXU5Q++nIwjK6QlsrC+GT2QETYms1ZK18QhGZsE
cNdc/K/zV4OHyBuG77vefmQpH8fTRvhn94Ce/UuBFOVASIEXvzWjkcn1qHu35xXm/0l8Kbj1HTmP
KdFrLFQowp9z9vC+mv07KIBD8WuC7O8pjuYrCXEuyleK1Lb3LKZHkBji4Dn0d6wVpzQFV09/nODW
JsV9rL9qhduhH+EbNmj60AJQ+9ZSb/0ixs2VOyqgzHMfvE7rFut3Bf/DBucpTDEugpmaKb9YV6TU
MGTtHgAE74F/b5t6bG/s5puy3D17elZWgjJyilEuf6f1PBPXhJeqgYqCZxKCbIBjjD3LLbIG8/9t
5rFqI39wQvFDQ6/i1xZTm4xKlyfLkip6Ew0k2O3Wyc1iN6QjcFny0+I76FqgaQ/vi6C9yfibt69p
yzZNlIrZxp3SucZ9Pp58t+sCb2qrtq4G1DKiogTMCtX7mAGwKE0o4w0ATnCeyHJL1whWpKucjsSc
OSgFtnVLvUCjTQAkxRAWFggY4FGKI9CxofF/aYwKgCslKZtrJ6tcIXHssBq7fachLsEba+SN18u/
b1YWkp4vGwtjk3amPHXGM3W0xv3BgVPR3MPbDcF03MUipix9+M+YvBy+j9RV64IEbY5eLI25wV9o
/WRsoJMRh7zgv1NLuOsSTp72tGAdqbyGYsW2e11p0iKkXcy6T/JdcMGFBjYghPNgA4gK0tnMFKck
IOdpDN9mAN0oJugN7XctTrftWRFD5ZNona6F0HuQjCnpAAbMvBnoUg+0E9ZZqDOi8FV9wrF39NTG
6/a6lrirpB3g6c/dVX78/Zjx/t2F03e9Jsnz6DnHFg2EW6ltm9aq5QWyVb4XQ03RYci+C62dOhuK
W4MjfYep0laj2AXRsCNM+vnXcVsuKD3mPblKzvUH7vdmFQ1PZqh4qNez+HkugUD+7+wdQJqgrcvO
gMYTwO2dp+qokWYAegqV1OMv3H2ytXLdBKvNUF1r/gaYHE/2aVtoK3LrZa1bgE6ASaCNxSTG4yxx
WAMHMD4DKqRI0HqdP+gUU32Y7qItSurQaFpY1v76tm+PGm4+Z7lZPQp0eTPKyqKv1FC/PpANl7lx
pRDu/0f/OqW/m9yoEAmGfpbAFi+P9EKcwFFhuTEes173rovUakqHXZO0xkix2Sa1iHEnX6qWpo3f
z6f6kWP5zAwo3t1zCOkmQvkGwhzyihUzttSDiIH55n2lsRFUv/g/ZL3O2ry57MJeswfK9XuuYkAP
FKBEZnbKkLGvaVg8eOOsd4OPdj5j4JGdvTCPDC8YwJ6mAdYg2NVM3sDufecafqdWMpAA99tGA3Ln
zlzUb0U/+YJIpP3qhfP35+6Udj75wt4oE2mSIZoboUUnnjWfGxhuuwD+HksfO2JSpFEkjhV5bV3o
lrKcUn1Fdy8Lq3FMI+5DjaXkWmvopNTlavnTQH+8/epjxhbvmVyzbs+nYTakX40B53u//jO+M+FJ
wSwKLCs+Dc5kgqLhlBhy2ddA/qX3H9VxzMY96WQrK+H8Rn9RlA/aUopR0pdPS1ARjE0Y0lP97sUJ
6PYgTK+u4fklWzOHLaY8PhDt1GE7lkBvM2Ln0ysniZeYrgGG5ef5PCP/i1jDzpsC6umipfTUUUU0
4cZQDPmkSEBv6JY8CsYEDZyiPbK+6lcd9JcdgSsTtnVdvHsqs3c9mf8/ynNmPA25syt212hZWwKS
HxDQznDkQJXCTOvJn8hX86RVWXGpBtmcs86XjBBdZjsZlJ1KPrAzN1ifWHNltD+VVpTQ6d9pHy3g
Y/NL3kRGIDSkpj9ZqESPsrEtsgnT8FhsSh0NK2oKJoKLPls8F6eUW9mn1gGwz/t7hzhEUz3Icfdy
SFmP93GxNq5CK1+aCmx86YeEZ9u6v3rgS5LZu3Y4YWYXjnH45pQ6Pe1O7WdXV+/aU5vaobz/mhGY
N56gM/akiee6Uzbc04m4Fbbc5WSUYFSBVuNgBRxp6tdMMLMBCe7ko0KhHs8N12UavCyh1dg7AQXg
DuSVTQdy+65RpU4pSvOWpcUsFmdAe6l5nv8A1bhEXi5qzK9LWLAlTGl4GkUtpHghAwUVcG7jsoRn
Wxm6jZzEnWHzPHh63f3UJ3xf7VUi2DScrch3aswIJqn+424/blBJ65Pr3KvtmMfBAZepxuAgx7rN
27xYfAvyBuaWhUbbdhL3xCKsnsYOcg07RHUMmFMnlQ2is/eOiQI0K6MUQ2r3coX3MhYXPrdpHfvf
uSOsFChSbtL+AvdNttha42p4gFOJHXprlnHBSoZgJ56QLNu3lmx+iaciBjaHn+LlKZTC605/MYYM
XZUcl12kCPqdd2IwLu9AP1WQW9nQCjxhzYA/CwppEAXVo0xrj3Y3CK4dHdHWjUbtIUApBAqujOKB
LRVppHBt5kcaLpMfcAMI9BytTKIRgNBhtH0I+CrHI8KZL9kPDMmK6EXAXPqL04bTImMmSxVo/3TT
5HQSeL43hJsz4XHmOma3xV6BiJhp/skA/cm+1MM86t4dY1T6qf9tYrqMdiVteXtjuOitTh6fh+Zv
WMWxtqWZ/U9l1UuRZs9GzH/9boaPWMPkIGHDziabUJNVukLwudyrCg8b7UpqY0ZZocSXJfYg7z6A
3141CljAzGK8na/2Bo4w5vggudQLpDJaIXKxfwtuHNtCFsbexa5Bmq7wdpRyIatS89IiK+eh3rlS
FyfghI+Da2YRNPZk8nCsP8xwArZaiQM6IKAb3IGbrtdzPxoyWfVAtc8XpTpCuYba3lOchk0MsL9E
+NSGL+Kh9Oh2kn9bqGMZoLNAUQZsP9CS7tZBDqdvbjnxnRFY2fLQbiqhGXIK7ufjtkRQhiLN0kbH
sYP/VhtiGnAq9DpCkW2SE5XS4EENOqJKcQGODUpmrmBlV1v4hpvhszK002bdj0ewHuCeURAMg0AH
b1szG/1fqU5kpnkNWPH4ovAZ74oDTuOOtVO3OSXHQ3c94vGe4r2xZ6FO9K7S6b1rPt7KH8BeO7pu
wy8r6p35AT/2ODhDDjIsTbKTjNey9/Za5fcfQ7/IsB6w8eRoQ27+NMt79w+l/YVNYrzGpIR9mRtM
CbdNr81RgPERM3/jTY1b3mcC6hadpx7nwOjQEVgmDAR4cqk4l/+Ne0ObOieLjfMIubY0ViPVzifG
JOsBYrHauzzVpa0A1VRzm7Mjta9TeiAFyYl3sL2uGXlrXlr03k0pUe8vCaGqzqgIVZ3y+GTf+qg8
QYiN6AhAGOOqOdXc2H69CmEg3zcnY8f1UmM4N7XGjzJTZgVfHiHPsfrW2cwuawPgysJWfRj9lMHQ
fx860mxpaPzFTsHgaNVjKlPIkKdEm1m3uBkgaJQNfgl3GkLqCK4CUY9BfyN8sUDAMT8ZoFNqOL5j
WhKsJIJIu6h5XM51i9PNji59vrBcv71eGSBa9X3K8rpGKHiRB17g5bafSsXkbTbAc28+xtZHt80s
n8ooEle/srEZxZwhb0W0u4alHvgrHDkQTpJPKb/1CmchURcJ/rXKNg9twnqgDSI0plYM8wAf4SrF
9qe6TtN1HI3u5Ra4XAspE1UB8QJkqyWl3yLAtTpchaRs9zXJApPtkE34NPQgVPWH9xZ4EOAqIYva
NNH8aNCO+8IggjB0ipCCRvMsjLYf8vEg5Imvkrbem7p28W5ZGVJ/MG3TBr5eCgmlcZtryPbkLEaA
CgIcNixSiT92f546uelBSRU+5OvBiWPnV4TIzn0TsPASOkB5wq6a8NN+hM2VZcU4z/P7oG/O9huy
p/GB9fxtnJLBFRjPrtg6JjY5rZM5MalBt+qSnVEeAmwyw8UPq6LpBkD8C+94LtKJh66GXgf91lkP
ugLX5q0hdlbO2SXmOxypHUdEdq1EDRAMjF1OdHNHjTD+CRqE6mumf4Sen0iK3YBwO/hlQHDuhaNi
QHVwWflN/9FoWuk9oa67QMoAsEYGVnMFUMW1YyIuSNWSoWed/0Oz/aYZVdQlwc/fcpMubSq1B+4+
tT3HR5YyEMr42J7SJzutc2BIPu497RYZglPOJUm1+sqzbUBIxGpVGZ/AmpNK3ibGlcrFRHmGd1nT
VEWSyAb/9VYi0AWqVj5mtkrIY9wTXd1dHO8VkiUUPDNdynCoq0SC5trgXY5L+ENUX64DSh/vud+h
1dJQ8GGzHcVu3s32Lah4BavE2ALpPAjCH5glIqysU70QhMHsVFx9Dq7wWf5yotiVrYugylrTHx0p
oUg3AhWV/8JjJPcOOk9lrbKoP5oJ8qWanUXSkQIMiaM4ZnNSfIG2pfT5F4hTXbyk+OsM0hl7unpK
tNaoILIaFmwfak69HcEvWFHoEKMZazf4cj/yg5U8kcyQjNvt0TSxqcg1K2GOKbzCZa8sS+jtDvyI
HEsEYyaLoS4iZNLL1xxDePhRN8xgCasfuNvVS9EXuZIO+K9UCAvEtEB3dCd45PZx/eJtejoHwChV
5p+fgfHYkt5FTG2IT78Vfncp4/x8yqrZmYKsT4GICx3uI0GKHcklo8DVjg9rS0DpKzxhBgpFZIFz
CU/z3K/KB8dRXMXgnLBTEvdT6/aLgR+H2omYV7A7A5jLzzcUEnrvVNYDS0fv6hlFXGh+IqoH8Qpp
5rfzuidOx6t7HurH5r4WFvW7iu74ldnZSc308s8qd1WjOfYVNMwqkHKrt+NUkBwC/FQXd7nHblCj
JRjbRrOCtQCjdM47i7SRCuVQ3SnDB9+xUHzLtRXSTIN24tSY5RsuhFtTYHZnKhdFZUa6M6DQ+DKd
/b484rwlZVwk2351ieT8mFo8rrid5putHdHLMqEdjM9WjOSdSDrkYQd+IF4Ftp332lRnyOmW47PW
OKwoJqxzvkPOaYKemKzBV43zvk9R2Ee7b3HhgNHrkTXOnA0rk8OYbqyg5HOUxd/oa/eYf06zek3R
rjFCGkfY0uiLrwxi+LcnKfPFfACtQDjkPatqs8MP1WYSf5NxMrlSNI86Bm4Gjjf6/zOmI9XubaQR
lSjL6coyUokCvIQx8+xNN5FHboWbb8h7BwzknRQcE7IZWuLafdCJnoyT9dVNA4YhG/iegqU2Ovc7
hB/EPApZwbUwlCMrE+NwJB/AVe4VYOsmMi5WJEivijuROJ/v9RoOhpNe7Mxsz/5U0zveL7GpnT3P
DiNzFfKUtV8bUtACxMrtbVcNjEofEl0DgqudrM2mvKeJ0omdNLOIGSHnwPVvn0gco/LQs6uqE0eU
njxWuKnBDgaECyIh6Ut5pGGs9Vt4s3c+lfmn4TYc+VwTTDKAQtmcNosd2PzQCXnCf5+wRoBi7XIc
zLqjrCf4GDYVzCN05yVh5MglEkBAXixCzCwMtKQoH4tEtSatGL0eqEu7YT/aWtf1XD1vqyO+VMse
zuCvN3sxX5j+rhWDsj2rQ/0iLorqM8ztfxXu8Jlr1e+YTjsBr9fiiuvrLmhkiUitg+zrfrvp9+tl
qZUcPOUdxzSrHaczRt79aa4A35TbnLEjLQ1maiIPyzXJeoFO69yGPcNntVg6IOYzHtNlIe/NCp6m
GLrjXBhJf50rXPu7qiazojOwKSc4UcOwoFKLcIfBd7naB0RjM7vhWqFH5gU+b+raC/EUrOG86BSI
2c9uAzks8uvOZhQuTUxsLtQbXP9uFrIPGSXjLMBZHWiAsxhyHj+LqLE5hsIP57z7RFqpsvdZPJhw
18tWkYuHtSk6I8Hl1i7XHfSci4MMXUstSDmt1M+bGAZUBQbmKmlNrcl2+VVmrFg7NLXRzMFNK7SI
P6i9dINnFqrT8wyACBpp6w6RN//IpDIbN+knLBOlYOQBJIQ2h1mxLrRi+iPEnb4tfI60bz64yVgM
3zU8P3ixb0zaKbkjVP9AX/oT9UH31DBkn9fV9cxP0IvoPZkuQm/bGPsoaxJB9N/hEau0vr2Zx4qj
6pvT7nO9z7uXyTKCS1RYWr149rIGIVmJeResFRMK/Toc5ZBeVUFIi9Eyj0cFfT8WTzKlgmx5yqJs
hEhrJaxXRHpHxWBFiGuFucxebYhcTyN0+ozKgD1BV5ttRxAI1en0Nrmj005rUkssOX2bEvRP7OA4
x0Xj407Tib5J0oJUVkmkRR3mKjU4+pscH7jbx8NUynLWWlLOO3mq+ZVFQUCJdjPVVqdTEWdxywPg
ZDAW8xNJP2Eu7DCN5KFk2I5e6TWSzgQzKpvOLnEDO+SBqTtOmxnbz0orsTTXeLERDiNuPKtOZJCi
fVGJlta44Eoq1uSlp2v/tQIW/1GBY21CGufItYMfsPv9rBq3zruHRHRzIjWmCDyY5mA0tTy1QSVN
QV3+IuepXkAKw6l1VGJwEwzh+Ki/GX4B2NtUB/cOkUdoZ5TkwZpShRDfvu9gwrl8rzQoI4XfMU7I
PWynijsw/WiTZJ2Za4lns6kdIxYpNSh/BCGK8x/sneVpIPS0LCMIwWI+nKVZtH/EoaQZi/6/TiHN
cc25QFzaR5nlPaakp3oQx2W/ViQf/EorOTcY50Tzv2VPzdHh7BUjMkO7WK6uQuuc9QPXK95Z4bw6
hpiqBav0VGVg8FpGWY0AJ2T2tWlZSMd0IVCi0sezz6uZlbDHacww70DuDhWrKwboWVT1OYKyURf9
TvvASzyYoshGeX7Efj1AVZRhg/EQKierUWLViUnOMyB2Q93NS/Lfym0VWe2Rz+tm3sWP1u5vlc3/
mpWKIvlL1Mownv9YWlOnu0W1+INhVh5twnVefSnb9GytKcCojZDDsvS0d6hmFXn5GKK8JHwYXdmG
UhST7ktIeDvZPCcsUeqrO9yrciqx2tfGIcIhvzC6IbRMNTZQUV6sBBNil5GAnqrlhBhJoA+7fuuA
/qORO6KJE+R45T4+R8Dlw73X9TPGAI2jD9nb18eULpYfMKgwo4VkDSrh/syD4Ehbcc3Npy94A6W7
yZnyQfBxeD29PNtUhYMH32wZ+CmYTSC25XO+JVNeFG83DvjP2y4kumTTJ/jpVaAY7Xf+1Fn0SrSn
qAtNk2RH0EdepdnaMmvuGFHdhUn6OpTV1O7gyx3JDS8H2r4EKh6SLLH3G0pWIi0eAsXVw2tx7gmx
OtWV0OeVkwyGuFDxH1Apf10se0GGlyri8zrftnnZaYBEoUAR12ttpYqaGd95Z12e355dtd+k53va
NKSsbTlMxasyWrO0DIQ3kP0DZQVNVGjlbWEN8VZrHZYu45Kx3uLaYu+EMBswqb7LQFR5UklkhFbX
uYYAzcSIsjERJC8JNLGCPumGWhpeYmT/K2CcUEKi5D+2xkvMPiZ7ZyEgfN9CQH37O7DK94gpVhLn
hez+D8LBBJE62HpBft9fvly4Uciz82zHP7zXhpivSud1y6BpZC7lhcczZNXsZ/d6n+DBh0VcW+4z
OqaIKyeqOqfgQmN260Q3ecrqiQ36JOcPTf5OFRKdU0u469O4rZcEDB1Hycssdmm0IcKwxs0wzNZY
XlPBeqZa2gkKGvVX1Q0PNFVrbrB4d0hvzMpeQ63i+/+OUrLhMahJOL5Q86zocD3kFs70+ektMKc6
cGRnbmyE+S1gX96i5qUxenyq6sVMpTj2ODM3WSi4pEup2IZjtu7lttAi2uhAs8Eg9J8ILC7tlaqt
2lPsGIgBuIcqFO96xo6iRVGQk7F4PaKvcJB4CR8xj60EzYjKG81Kb/Q4H2/WGH8hk9FustkdQybq
s1YaSs4Zbxa30gXhdmncc+rRIHO3IJZuTHkgM4PLAfKPgJiVqcNHH2ZNlCZIFF2EPE6AGtTwFOUK
r4JOht4i/h5CxEVFdt6PC2SlM+nsYYWHW4ATkntqYESbusWuqZThwl2w2BqThXNTpbES5oZGlHLv
A7Gi0GhbLXhL1sNYdG5zakdksFbeYIAiIbmrZ8m55hS9DnVf8BdpKZ3xkUsG2X8cs4cR90uSB4DS
7QAiPLzj5ad7GWEgnWwggbC27OUSaq5zFWKDEYY6+7YbrURBMqZlAWCJ7cEA7WD/vDu9S3i3a8aa
YY9Z5ekLk0X+dTQlVGB8dlzyQQEmkNX+EVhMCbDp8Ra5T8HH7z7pzryUpcVCDxKOhBmbB0MTJ59H
sOARmyl1nxTlggmyFeb8bGccNmiDvFQbTWXzclXWpb0g10AdegJn/UIEDAvlbnbdp4NrlY3uvVrC
zqrL/jNV4zE2Wh8AL/5Q+zFBzQvVLX10SvVrh0yByGFKNwcLkwVDgXEfQ6tLXMN0eBrgJ4/p8j0S
LNaFe5DXBnP0pOBPuEvS//MLGXjlnX8nV5abTThlEgADvJMceAkRHbviK9hP58DNI4VtxxorgHTt
4GrTI0HFDN3zPbw2Xcs2XrXxic5M6Fwm7ULCWGIMFmazsn8fmbSGpR8I4uNhVadvC4zG/dZXrJg6
4iEiQFNHEhjpeFtN0iEm3xj78lVGR0JfHTBZ3zx8KpXU144EXly7vgjROxuumZxt1+ro+OVjnZKr
OETbBVKNi7S7Zxdy0oMr9PFORy2k0Vt8YHsrxsWwUttcRGvbcpd0jlgl6qFpGevwy2tJs8Q4DvDH
XCJEbik6z4M2wgnXaLdn/4Lqqp+0CxPoTTdk9AQInnnUr/sI2QM1pJneImpp9LH6WLyOfkC7f7Cm
xsUHhhmHj98L7eAprGAsTckBNTAxUNXDVh2DQ68X3aDT3yikRSBtfsxdBAkLOTkHAuMxID8ctO6H
Ofy6Zwcy2Zhpq8Ms4KVs/3KNjFvxyjFz1jds6uqGvVYeBmQ3FMpO6QLkG+O+dZCqFpbjwQDnHA/E
vPS4aWGr1Kz+NaYTBxoMrurzQLBHwnOIFym4S6mGsguh4ymXB7JTU8BKMiXiNRbwZSk8RSbAHMiE
6klksbzZu1ALbdaqHojP4R+7Rd5ELttiesC/Q9//CrlAzMdJMObpY4x4B2aqD6XWU9s45HOkNGgO
7edxxU1Q9DuQSvSxVRaKDPG7+3VbeKVHYqra/cChk9fnvvcrvGmCBkV6TIO/h4aRt2zKuZe2d62I
k9ZGOzqPA4KMPoQ7Z5PwISxKDIrZG2Jd5DQTz9Cy+zaWCrKd0vlp8s6ld6R11kCD3N9U1aZcS3TR
Rny3JLuqVtJazdvYJAcYwFYLlBgR2Xg+wbUquIZSPG+78YACDN4YwOpDoWstxJ9fq/Hq3llzoc6+
YCTh/XMiFrW9WbRYt0jTXHZE4z2vaLuI4G+riik1bR20bABJb1I8UnL3+gmoNkQXr34Etl+Ccldk
8yG4WEkJ2ufePOMucKmS7/LHWwinSpZDc9n6hoyDIKRuzwLxTJxjGzdKzYRZkGXBF+pd38E+MHAB
L0REYUXYRNKD63/b3wdnl+YqA/o1RARYoXOEP8fox3jOC3huyi2YDiTgnGlWuA5GoGYsSEfaukTt
I07uAhE3wghzO/8GchHg/pMbHPRT15qYRuvKRmm23qPr8I3/j1Zjz7pB4S3BI8XLAdQlISPqFI68
/n1IoPDRMwNm2Wvn8fODBB1pNUs2y+e7eswSmp941QPC0u5m66HPrVweqsWx5vUC0XSh2/Onm6fl
rfPv/mv7EYOJ1RWeKrjhd4tnIuZGzFXJq4gonCxML6SwSQDCPNg4VKm+0UzE5RjGNrkw08/Rqfgx
8AWLGSXa9/UdxIGtlnCa/OkqWcywjisoQ2Bygpiyio+rTNo01416h+rBT2Lil/GDb94+6cpOMEZj
cJqag7Ol09QPAE8TUyShX741RIJKhRKkXQJCxcrYMdDfyuvh0h12/Oyj2qf59Np9Idj8KyZMzMwS
QRSvaRopn67fRCdadLfgiqOU04ofvtv6OhoGHv4Hgp49YmFHeYwW0iN3xqXtWaIQ/1q+7Eu4qrA6
D02sRfH6mhz/MEqB9AeIe9egTR2l2M20Pdm8oT2DTbCWtykO5lFPVQMVCZXoQEl419hpLHLfB0t1
sGPWAMiwP61aD5e4Cwlw6hk933a8acuozup38WrZOf2wXhqjbh6p+dUoMq1pTcwtR2MA+DE/dTQ9
RWxwDLTp3wfIEIDHzzRaSYcWxWIg7fgN5laogFBAhA6zVk1D8/IqgJRgqZtQL4PNV2ZbL7o3410O
q+UA3HGEaBxR17oP1tylB4LErcBLLufwqauALPSMk8ngvgX1Fte6i+lkf6t9Rg1sKn050+9EzwbQ
OMTU1pDVcayDmpRih/nEbT4iwSpM60uQY2RLuDxEZ0lnS764gUSohxPuz4C3wTxnE1TO09zxcXk8
Rre/wQJPjNoN/d+mKF3TB8Ns4Bb7ttCfDg2nqWbb2kmOpx4zEYmt/6qG0E68ifW6Fun7Hczn7nJm
10TG4GyR1iACBXOQDYg3Ow4z3a2sHxBA28o2Rvtfan1ENo1uh35xP8WLgEiYyRU8OQBnJbqyBMBT
59fKSIs+DsDszRIr3ZC+JrISZX3cp//qll5fMCCOH0RzriBhk/iwKzdVGCp5qZpxaNkDGFzmb0Io
CgQHSYRFEiuYPHtV+9STVC4kiutT1o03fTWBqBIV5MGx8hVMeSRu1rJSD+C8MzyXELb7mpoQm9HM
RV3Zd5gGV7DTxLCUff7kDxz1LftnRov9BtA1Q9VuOFsTkUtqI/daxl+uK0/z2VOrCPPv/rSZdr0K
vGrDtzLQueiAIO/fCiyK+PytXTKn7wysNvJ9N07ua2S7wOzvq5a1UAyRrkcVlqv65+1PPg4FYeIF
IKycp8bVCo4B26m1GuSmtYjKAigilBlqH37pUuzyvOdIVD+pT8BAZkvmHXpqAU39GeEVfwWXjiyc
w2vdVH/Z4qXeydG7iF62+M6s6Rdx7D18ajoOnDM4CA+z5hdHcxg8XvV9U4rcv+X0E//7srGAvl0D
zj3kEfBdxQypQYK7t3PPMl2HbrW7UyMcG5BcCCVx67P6Y/HZGI0whTlmhdN9LEIuQ809URsRjT2E
/mrFpV8rkE7Rc2dz3DfjTWN2gbgWdC7IlAaBQXIceI/whDj4Wyj/MiS0UVFHhHO8gJPWeA6spQRs
fP67sP2t/XAO6x/xii5VlM0/j7T9xOpIcKrVaU+tPrPl+9Z6s9lUgM+bWhCJKanJePHl1aDiVnkV
oE0kBuaX7wbEBGzLc5CISk5nUkNJ+4KKe758qQtDhOXi17/ZSrx5CWkTwWZ8gstiYEoHRBpg41dc
mePy1N07YhA6wTqeDkz2HC2gMHJPQ1KDWhiKAHxdQaP7vz4MagC195W80W35V90LBiKNbtDM5prL
cgERwib2IXXK5W+y7aW/ywNSAy2Skk7Y0k1p/dcCJLyrxrVaAM/EcGCTJa97+42nxhYF3YvAd2gg
/jqPoUTTW4yV6fwvKdgPYEcFoKTLooywDRoxE2AVaumZBgF27rhOJ1eZHyeqDsBcTuN/B5cra7Hg
hSWef4SFBsjSDhUGU+hYmvErt5s0sKMlOJYGDmlqrUOmJDhJf5mdUdR+PRHTbMCxdO1FQGdIFjvU
eLUGoXH8GOwrcfQSN9JkPKaf57poz8OSd1BDNnZj2ocS5gousKsgooGDPx2+smlkfHc701cqoGD3
jbszUJe7AaCVR2tcdHPA96otIS4pZ4wFWt0OqSvGj8dFE8mK5JVy8P4mePqOrEn43PO93KM/G+KM
DuwWDEBClJ6VXj2cM5Yd+k3oU3Qvg4vZCMWy85y+I92orbu2Ar/P8zyYvmZeijQtAhb9jQXRUBqV
lbH2Td8AJVZn58dF84etPmMxpqstt9DRXSDBout7fbmhWqJKm5rE2MgXlb/QdRTuEDgOXYIvWJ+M
EkYn6l3LG+kG4ButnBYv10hJynzcqjMtDo9Ot1dzZYOuKp4lr3dIqd63baQMBbPe/x5ToFjmglRQ
gYfN2k1kta5GejpCEH6uWNX046laLBakKHrszNWq5AjsUBgBQnmRKJ0gXei+uIJJarVXJ7c2Pind
S8ny9p2NeiaGaJx22EOODr5SeK3m5ZJO/pDn3rOwRjToaYmSf39jKCVrItL0G+cX+PaSpYxxfhVt
5O3y8LIUMiyz6moP7nTp2c1O384sogOUOOjA8AFU9wkEJ31RsoM+FcpTXD1ZNUezibboDUnD/vZE
qSoLzft5yLUTxuplJNLsSeha7ROmAFwEFv5RIkOdQSOJrCoq6qQeJuJsuMtHLfp54wmh0Fz1qgMN
socSQvJSt0N5G515c25B6h40e7HlvEa/U6zR/Pq9w7MTleuIxVIHPqWagbfFcruQmhKAGNBpeZfd
YbXfETHdHY4/6S+8+0qYBeMoA5wgVqwGBRbGwJJjhLQpvTn9peqyhjGvQMl3IRC+AP5i6RMnXeSI
k4sy/83xHBrxWVWnizW5I/eXEG8XETHmkC37wDpKsV+wpBClMfDwPqLAzK+0qG0xnAd8W36lnztQ
UVX6BLfSERC72EIgTW99BQOpcjGWlb/fxKIBlr255urQQDPg5IlPvLlhMl1El0qCeFo5HKvRs2w7
Xtlui7FlOpZDxGBFDFMSUkBG25ZLY8TcjxsxGyFpP0s/qabrhqwg/kU1l32kKCaIK5/SpjaXtdUY
JnQoSefD8BNZmXGDCGGiITVocXTG4UYUrTjwAqj5IQqcpgxpfRtt5CulDWGvpkj/AiizVqT0mtKQ
2iakzmNTMEKvj3ZtB3cgFStpBPrs4O0q5tD+5BetVclrl8qL+2P4euoHJIrK/AeU07Zq/SMkwZNT
PTeP/ggI8JG9bC8abUNzxDkCE+4Bu9IUpt1F0LHI+g6BinDFpUpo8XU8BC5ivCatK35BT23EZKyu
gMOW3EQrSXd9LyQoo+VvASlBA28QtmjEfwuHCdgXQOGCZp80lH121KWBONhTwF656Ku+V4tS+4XL
TNIhQs+7bPnjiYb9VBk/SzJUDSwpAOT63gBk6rCGsIlOIXAuyR6BI/AFXDeBE2zfjNpirvceJMEV
WJ/C44UocjPe3cf7gyZYUstwIjebFnQ6oXCY0R8OpvLTnpK+rE9tPMXa11U+rGfdroXe6sJoHKqC
uwv2/l1dEs3eRcPve9RFFS7FPsA5Wyga62ypQUr7ET+xKTzRBTVeqgOjGB3VaLFnbcVnKZ3LUn9g
E84/aPDj0znhbCGxGo3KlQqd3h08BPRxD6HRSXaoolGFs6VeMrHMC3OBT+E9YyQSwerHC//4m4O3
+YaJKfBJp+K+TSFq2DdDWMdXFsrIiaFNfgmjiqweII7ACgsRxXL1FboiqpAidomhVN1iDxhUzx2m
u0VDgPRLd9kIIuBRfglBf3MPBXHnqniSnbNWrhowZiBnFmYUmx1j+tzP3Ne+X3os/+H6t3t0Fmw7
0LJrUnWTihsbqCqm36J/5RvV8TIYwGbwrRaUtz/v8rjAbuyUVCpP1UBzbEdOh3MfLrjPAndwMoUH
+fr3apBYiPcViNrdscK3oWqUG5H608VN+bdv2I7lGkbKdCriA/n2TqgahnuW2d8epgdU5NSgvT9i
+edQT985Z2TJzS63/I6jNGDQbhFCcF2ZMKZ6akE7iJ5yI73KxiSxKKKW1g+KSQ8x1XBOTawAE5Zl
Q5b9ofom1q7pFNSbJgjDy6AWPCZXM8qPTkkC77Kgkt8jZPjen/taEdPn0l/ODh7Bzjsijal/GTUG
RESYsuST/MqSpIgAx88BhCmB2ntH6Arb0N42aoBfSDvaWxyD1j35Rn/ieKis3f/yKqrTY1XQfkaD
xMbm1MDxT3KdSx7fGEIEFJfQBwutyGI3YwJyjD5JMfAdFpc8CG2DecicxNtRxunt4ElTehv9X3oz
679YMBNa34T/AN2O4NhzH2SApWSxnwNnE77Pz8lLSM2XGBESXaJ+ivT9190jCCA+pe3BahAbrfol
1axbuf553bQuKIk=
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
