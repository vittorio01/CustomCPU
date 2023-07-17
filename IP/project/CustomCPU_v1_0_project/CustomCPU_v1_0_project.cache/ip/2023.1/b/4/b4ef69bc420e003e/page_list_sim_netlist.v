// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Jul 15 18:15:51 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18992)
`pragma protect data_block
uBwNT3v9H+RhUwRiEmzhkFi/4YBhVxOrdf1yoblmJfsOkaIYjxqF2PbiWYCgFwb5BP9vFy5D2yGz
t+f7JSlGCcJSQHcVJIHxsHDSOtMIfniQ7D53v3YKIvolzlCMBqUi/N5SJ9SC8LYl0ytewCuM2swI
Lgfg5DEgJhLg4JmtIKl/I/WpBsduN5TNbRb41oqhssW0URwZXIfZEIOpmfV8wDlxqvfQdeUZ9T1q
QOHAzbcBUXXjnMK0/UuT1W5ICvlimgdP5WS0U6uFU9fitybiUzZ8tI+XCd+tdztFFqeMkVO1cesX
VEICld3prEzYwN1z2l8UQ2aySAOmdZ4pTJ1Z4bGmkkKDYshV0y1yichXEIkJpdZ8yZU/HKyx3oGS
dBwKtgkUhWT0U7X+b5TN3ZeOSUmAwmUWKxItE/IusYxW3eONqAiFEFCgJwIwS5NlhI18JM5jUQEd
jOz6Se4ihqyzvXWxtbzTYYgj9m/rNBRJr0J1DhTUlv8Z6iWZ+cfOtGYwSmYpbdqFmhjxs6vrS615
Zh75hPOApejEiwD20pVsfbKg8Qlo/olqRFZF0mlS8CiKj6PZ6y2dIPmmsb7O7fUbz2gkKqpb+ptT
1vlY0R/NXF4VhpdDrGyDxAG62FJrhffcKBlcmpOQQD/s0zqBYm7MVJ4kO22KS8F7BaQKLi93m0F+
Sxnri0AMLN8XE8ErULev90O5EZ1x09ELTHMdIriWPuh/XzkY5cCpbkb+oz1AiKNy0dO7RfTXs6Ao
oIdjSYyCLi3uvI+mYBpryDhDGXoF6v8Af40KpsnieuG+eDZNY/PITmHWcyM4ja6QAX8fB87mbiCI
utGj+HWGZ8qLq8zO/rYMO5SrovXwiam9A1AJ9KAkvHQC3YmGaZn2WgoseavimNA9K5UMPuBMJweJ
hltLu1Be5Lefv4PL5o8PTx3LGft95C+uoalxodoWl532Qi+6A8fl+IfrWSaNXwFmOLbykKt3jTYY
zv32uzvYVe4WK8tm1zohnRKrcVwKs7grHHi3GQ3m7aPbW7npsNLjLl0emwF4+9akzZeIUCTZA52K
ayGx8HQp+MGnneeeDJPBJLApZzjUxld3T9Ebs6XLGDTxn3Lkpu+AKFUs8G6qDwesp1vEp2NZ2I5T
bC9zLr73R1ymWdJuQETmOKJoX0IBg5kWA+AODf0jKhEDoLjjMnWPcE6dVjRVAbd9JLo4tHuijK0+
snEaDNDSatFfouPa3xS0X5+7JMccg4wQUWjc4nDtahZr7NFyNOFy6bYfkK8jYJEYFVzPNY7Iva2s
jO3AtdV+1xdL6UdxHZeGFKBkk/bMV7Q8ZJ8tkTO3Vm6++mLOsV3MikVmfIiiD0mqmt51Qtpbb2yc
YDlIqZsUCzdw6aiRkTTLxPrgK6VgRFN9P++jzXoSpIZ6d9IpO5PsbRKnhEYYwTNlNWYafqaxgisQ
TMWChg+U4xpcJqaETv6jdeeA0HzuR1Iwk72lR8kbiz3Mp0d+Hl1Jzcjw2aqFuiqWvobm6MirLall
hRgz2deVDRKJgHEETngodQPSnOd5MM0zGuL/d3aCGCcFH0L4B56xlJ/hVy21conyn9ua5gyYCgFH
WhHu98DzPq1OJKffWNLXHEVwoZW/TPQq5ymHbmQRj+YCW33Et9ojxNshC5Zms2YAL5C7Rib5JvoL
q+YHVgPdpBW9AXYgwaw8KA+FVve98ST5YJsGNRK1aOCP9WnyeQ0dhmvjL4f4NvZIo5E0BWLAyhPj
AzZ4li4Gs8qc3nNQXjwA2hGbCQKOpuQTovKxPYRunrrkP4PfJ720es8VNUk7lukHiygI76apQtf1
DVn4kcD1tSLH8KhEPEz8CzSWNeo8F7PuwYVOrwXwio52P7CV7vR2o6Xd+MXsPPqZszdvLskQ4kQv
jVtxZnzkZhpDi6IoQAEsLyUjFalJqnwkerjCVPaqt4otuDgNHeKYiu9Xc17f7Bm8CI23BkMdEvjn
e1nOYwU/Nar+OveDSwkr+iYrTx3VQ01eCTjzg5n8DMUjdKj6yl3hfEtHstAq7KSfk9hAHk9kicO1
fnyr7/f8VP9B5seNCyBdE5BRM+4PdopbGDBsSIUfwzI+UW8cBHLqf5e90NASH6X/PITXPsT58s0o
fknRWpvqWFXRYsU7UDxExhjOUfFXliLgzbxi3W4ngkGagZpUZrZe45+aXiF7rCDId4//wPcAUSb8
xT1UZ1G3gjYEwHxNfj4xQoYVrKepCRY9XPNqPhjxpMC0Fw31nk7WCJuTFXJosgoK4KB6SNZBBXuz
/wnSjZgX7F68IhZa//0QbmCbixa/Pg4ZG1Faiudf1y3ZVGr9bs2dnyQBb9fpuws094yA0DguVFYr
TEUGH63IiKsf1aI70UYagOqxOAkLAPfwvuW1o8q0zVFVI/lIF97awjFpMaTf+lhT7xjdJRF1VLBe
AOXtzdXPXjORgENmaOA0XivjWgBzUfbEPi66c4laMkoeQ0onC2D8toABmYl0qeYd8lLXM6Hd43aC
g+bvU4DjFjM39//Cpv0/d4+Ko9PPo8SOLZg/eA6PEBOJNZG1Oylb57W61LTtFHXoZu/CSxh0vle1
IeStbeqptnSpFMWqlkorkPvlvidovL+FnapdvdisSqkLckmwAghiBUp4m5Qh5HitrUHSSGHY1TvT
GAPMLVtC6SvZC8fNpwbPD/3eKFMwn3C6QE0YpQPhkCbyrzdIN+8S4jJ9kHUZKd2ZMrWfLcYSqVGT
a4cxejk53V4qsECqvZodwVDNFnmsYefzJj4Ilf9dQvuG/Hh1yV6wU5TEDuHxIe/1l+7K+PQY3GPQ
pX42vjasnTBg8mBDjchF8eF0Blg10X6BziMENEKkVqZf2pLZJGKiFznQPpNRHbEHu5d4+GGS3/a5
lEasoqwsJcEN4q3EkgcrTCqp1hqL8wneLBfRkr02qo8Ref9Knq+SKkm0WVoz5fohP3/vNZpqlWyp
PpmvhmsWQzuY00MLwPq5LujSBO8Z5jC6TLXP9vTPz7yKng4m4jNuh2jRLFrjTbfqXF4LoJSEHliQ
sk//uomqWPmfMmn+S/BCruYQtU7AN9QgGLi8O7f3UvGh8Nhmv2vVgDLpl+FtrmguT32XbK/+30cN
uWsDQo0ujCbPDM/t2n6kXPj4NHw+rmx0Z2YJhUMCDQ9dqR/2CQ5wX6SD6bDNYqw2MQH8LdntesQn
itKoKdZUJbfhIdrWMPWvYo1tHm0wY+sfig98C2qeFqJAK27o2HCzC/n/Xa2hez5C6M7p6PsIl7i6
2w2YFvl2v5Pr5WsOnAwbUY6mC0kbZsbElYTM56sFoik15UHO72ERldA+QF6TSrgh4OOGKtzdr80p
f1meOtHf7nwNkBuZ5TjEwJ3oKdTQ9UYIwjPghIvC7xM7W31U3RHGK9bObaeAd3VEB7GhnlxAti1l
oy1vK9tNhzwOawJtN+T46dsHr5NLj9ZooYGjOwUAstfH/Kr5IX2VVoijeVHrh/vwR8j2+Qeo3CGt
LUP1HYDxOlwvPtNAMZoj0EVfxfG0HbQ+zAaDRs+E0lctBF3ygdauLC7EKyyEoVCu5fVehRhWtkSt
5b04XjO/tnY7y6/m0p641fbr56GEDi/GU5jrBvvkpB+Qx/EDgogUWdPetLMdVtKYZuZ18h2k5ylg
N0p8Xuxo/vVQv4APR39MeKDyQ9VOAZTixjsGMj02Jybt3CZq083j2ohvvh4CZYGIaW4JEgF4lAcr
tb66UcNpL5kG+Gkwo/XLgA7kicb1dtlUJZsR9LE0JGs4GG6foRWRWsT3s0O8RhJG9NWQKgA9KfQM
ni8T4R3tGgpxdVVh9RkL8SqU+g1B0MnW2Kro/4YrSxmHI9QWW4UtPF60evsAHV33DuVhegINnt42
pUXIdkLFqnBkOHXk88eHliGC66gRvGfTkwHUzD5Ru4OWm6dpyPNPqOGMcd0BoPBdj08oVO1dnULN
s8MAwMdEmcQg78K2Ukr5QFkei0GEu1Rif5SuMgkAVclcXMwaepztG34XQW3mZMoIUh26NQxGXy0f
3DnsUOVN8C3vF9Qycfx1tyOMzD4hTOPLnq2J+K4DsJuC3WncQr9p36nVE82UcGXUdElxC2XGWRu3
1yHOjIbxkeCKhavdFVWBwLOrpSCuJM0zpWehgrbij4nbV/46Cs4k2jnXxgO/icY8FlQ0fMb927Vx
HzuuGoS8Mq7/Ke7DPasV/83th/EdeA844hrKwsd6taHpK2twOB3/9dq8UD0gqVUvrjiPFcQRHx5f
y7JBqlmb7NtPjbhyYspKWL/sf2ZSKDKoZS65Tbqnc0caB2JYcyB49KLveZSgIb8AGDrD3H0wHEpJ
PiTBJc12nEr4G9/gKknv+wsFKzoaOsOZGjsImUpTc13UlJs7lhSaDpLsxASBclZbmjUakKNB4G1X
zRirJUlO1f8FpOKGh85W3Z+hOD02bSKLFmxwsMxo2dYYTEOwcTZZRw2PbB+GR301Q4TQ/i2i3UZU
e9TrrhoVrZBmbFNDdHndqj98C11MofMpAluBwTKK7w/y7wbMiGTZfhIjMCIGxb0lL4+fRzg+cUyt
DcEPausrhwoTKeZehWHUJ7oNAN/ZKj9BGLZ7hP82xdgY9oxMFUUDzHnZCmFpw1EHrzjLXUfW668n
hrAhzJANqomhrnsYy5iaXq8ceLwYcVFCqNf7xSzcsETSxX9f8oBYp49ZfwWEUnwqMi+Li0n1hu0v
zcQ8mprpExiPDgTCrz6Qlj/EghKJ4niyrfz2onQFB2ToXgUHvO2hP+z9+IM9h/hCkkz2KrNGgdsZ
BxY3TnhfCsi+BDAPbz5Wsc98Xfi7OwcO5in3Trn9rrj5lnd5LufxIGTjJ+l/lvE7fW8P4k6pPQeo
z3PD0QCHH8Mp93mRzJZXOtmAztLHdIBoJXYMkLB/JV0Gvxy9vitRxiHb5+2iPizStfyRLUXiKgvJ
8MjrAXA2VJQJh+GqZgS3twZPr8mb+fUUQaG3yWZTgGiRRGeO9bNl507tul/8XuM6ABArSJCIhUjz
uJsnphtupcW63q7P+vcMQMw6ZPdBkuE4OP5G6iykHs7yd9radQ2qeE4KlMJoPeThiOV9P0e79qMY
ctF9DrPvGFhVUWjeN+i0RRb9lLBuxasyYme0KS386wOAKCvvDWwZr7ZVbxlaiuPHTLb+YOwLoJuo
mjvjlEndxAXWSjL+XE0B8bnlaP+2K4XbE2klnv0QbH7fsyBYiby0Kjqu3Cw60vqGULhRCmSzDuqV
oixweqIK/9JR/xHR2/jolEiD/MEWel0gYccaB9XLmnEJrMNuMj0SE8K40OOXSK2MLZyCF9IY6qhX
+b70HNdUy/OJ3P2P+EEiNFMKQqsXVEFQIySPYC9T/JfccAhRkcDOOPvH5ISGISeHoP9wORZ0B0Ny
eBm7j1wr4S0l6/CoPBvvJqYqIeJMKkQ40iYORnmETVr7vNgoydv/enpk2svVN+W4xb5ImlJV3MHL
F5avTR3AXSDxWmxTBp/ecZH2S5DpxcR8na3IaAjPjYLxOmHJMRD6op1qd/latUNB5OR3pLnQMeOv
FTMpHitAQNWvaUq8jprlX7wh6Ei9fNpHDMYy+FhqmtGimQJ6s3gwwyqDM0IONIPIpqDl23GyvDz5
oSOKmywnb7QpdcCNRbfMFJ3l4wq1fn5wrvjW3sawRNNj0lV8Q9Yc//VTgepshTZmob+AbrMbR1st
5JNvZipytAEN2UuFR1xkRSa8qvWruaB7jHk3QGxjzcPR+mYrhwoovfEGfFsbbP+PUVb1DwRE1dV3
HZnL91OUllc0aPL+V+kvinmbnD5VyJ8aKaQaZVXCiBsXz1vDyYAMOt2+vQUJjEWcwZLSQpJSGsrW
ObbPCqDpRZv/0+X2hKqYgBov7kpo8FVQiFO7Oj4WoNuCXlchyg2IDyqr7LPtC4oJzLX8hIkXgIQA
DB09ZuFmvy/ioGQ4w4nkrwMY9JfP8LCLpDNlkwq1iUCA8qg2PLtYFEgSt4XUi48FH7bvcnS95erp
GW8f4anK2+RTBLaIDYOpJf+wT4GVK8P6S4m75TBeZ8mUbOu+MPvyCGESIpdf71r3XBlJuUnHqcYX
5+I+fc48qddWWDc9SDKgfx89C56hSmeLjEZ0eHFlTWzuvg6w7TwZ84t6tuw1Aoz7cD0+ayTa+Cq5
WcluKuV3HPssCNgKoM7j5/B/YVuPcKNVy/sfGQjfe3Wz8tmKy1kRWYXu3rASsQ9yQT96m22wArdB
YQF8Kano8CEQFU791PahZtZJ0f1r2YEyqSMH3+CdTQwL+HLJtNEzwwXghjwRlt09SSCWTP3EAAmd
XxISeJfmyXO2Dsg4aJB9I823EIu5v7YLlc4KjX3ZYm9ajJ+W5iQO2TVgymJZnbd51d3eKTXBBeSh
mQ16I7ihbUhG+TijKXe3IKW0smH1eFyqbYMw+eg9U2pr51KqZI4lqTTuQycNdcNsDJGQcLke/CV+
c3d0ltYqfcans9Kf29qG1Haj3D5wcepdcmWLnADRIujKNvTxAj5LOR/z8BRLtg1+z7z+g2NneaeU
+hwuMemtwszN2osrIhIat620A8u3J80hBIwyKyvidpLfF7r4ZVdI8mrYd5zLEMALlAp5gN1TTGhX
tMoZChcFipvA4UxNXt22JDsWeKNy2K5cpKAhpGCxx5r0ZYOoTzwiCcDnOO3vcTqBS5ahmjQ73xC2
B2il13c6gRDS5fYbi8yHoRgprKJoKBlHB7fWnicXssyegk604MazXzZ1LuYZdTR/z1ylZs1/kR1X
snTP1xT+cON91JeXhrbgqjyrtSQbkUa1loGI/oZCA32csTOO8k0+oICihS4+A4Bq/Hu+JcFwj+jc
b1sx2/Wt5EYfZRYqCZhvV15BxY7RRbXZB/K3K6e8QLWgpTHbB3jnzYBt+85awqYBgIGyC4ZFhQsV
WNBWBuy99sIYQAbUeFEG7dzMBjW51IBsencFPcAqkO3G9DjWCjhANT3XJY8d7xZtYVaYblPEXZ4J
CMmHNAMCvni8i0QRJ/yTSHsQDFq0D8ek8ofpalLunLSiHz9PHsyLT951aoD6A0HWh+qe/UXnMVP9
X5n0Z2bV0dfU+IU/anYIPKvIiDO8UFquTBsh602d7wzTrG0cb0Z1Z+wGbo/PPP64nSRsISzb2n2f
wpxa5UDHnVZyJkyLrSubJH23bzBBL3P3+dKvHvoLHKKgOvN+650d7EUPwcXL5EnLbNiTSjiH4kkn
YA6Irh07ZgLZT2B+LukwKvCeC3eCkvifVGrr3y3RYq1NTFST+Cu/D/LwcT9rSb2o8YyvDr50tXFN
T4QA3xzMRciqQEYG8BcsWxvMc0DTmnOFg3AjVfH+/HkBoz2R5IFJ/gTNkh1SzwVJ+KBFP2/88VSs
2xzHdkVLwTKmAYSEbD3+e2+FMiDrFVY3Pn95DI78bhopmFbwz6797quM9ZOXxc9Dvyb+m6LVjaOv
L7rd+iLrjn66jvhuu7wB9f9NHrBV/aWMcJvJ0Jk6pYqd3m2g1dUOGyN930xwMfuJdYjkGRrMdmt1
HfdYtubme+2eUKC338WibOC6GUtk6M1PVAgvdRc8ccaxZvwJn5uzyitGs/bl7yuiY/M9LezrJ+js
hAtPkiUHdegwR4y4npkQ/KHy0lUlOrUvinut6XHLFYLr2JH2hc8GqWxcISyqBXn/1KwmVl9J05Um
bdPnCTnJ0fK3aFwJ8jA8qRCPQDKHKd8LEPodsKL+owNKrTOKDRoSoGtXeXU5HLnfurrDq30o4y/g
0Krh6Ae4e1aD2TcQIw4XY6JMIsN7Rjm3Sh9mxtdOK2oATmQvFaHn8Cn5ldVu54pWwQQsGJaRWY6v
UYSDvDAOEWoA2Hs+Cbyw7GiNHik4rihOWZX8TlPSzqZI9gXbsS/UzhmUiZYnPLSHm+i+mDgcwVpR
kJTcelyTAfnAxEgvwKTq7j2lcPsirvExkW8FcMVtk6+VdeVziCrfGTRIR2SlJsI2MeaslRfd+B4U
73bEj5MRn5XXjORmsImss/3+ZJjeqEsgvU5JL5QuoxiDKFPXgVaaws+F/7Da46r2wJ1t9MmXAy+h
FO3Ajg68jGAlvxzxmb62vqeGg+47Eev3nsvaT5N8JRc/zTmiVYnVPB3sRfKkwdZOOUHi4owxcsC5
u+WBEBlwjAgPxB6nEpOy6BcXZMeNm1T3O9MClJ81vBYT0F71rh6u6dZxHNUuxCUSeystGxIIVKbo
7oRtBOC0p/p3qXv/XIYdds2j/Be1hs1+AGr9ohp+FhRRBShogseUw/E8FR1uH7rNnKWBrt5ccoE2
RCGdemgdZShh6n15E16CYrbyG369NfBhlZhv4PWB4jw6dVZCLy8QqOqS03Wq0Z7IJ7h7JsTKsq+0
dxIlk+80DprxQ/fdnjoF8b34AY/nvvv4LCYC3trdGTO7Fo/p0F7mpeT0wonDJ+0+tMK9M/fHScL6
jql2910NkkcHEoFHuIVQNYy2baGL1rCcC8+8XMZMNvFC5FDUQrShvgcVM6zvVvC0tJ8nbkBcU8JL
w27TsVzrdzZCFH5fEsrY3lBKE3ye/gawmTAfva00oLigr9bzAcRASMcBrx8S4THMoKXhMri4/9yA
e55piv+AaYGa/5zwLdzLSdSW8hPrr2AQti9P4yhXNHtj9XWmHHKeCEcOYcuLvTV/9+jhs8Dm623N
4Llp4AYHTExyCIf7ZqL3dnO2lNOvXSL6EXPtGLfcfpwaptHjenRXVMbMFjCl3a86rR53SVD1azbg
WG+Of+STTJrq54tHPBW5GCHXg42cCKerYBaQSF4hXo0XO8oELIGNWzNbMfihjsbANt5oW6XxD86A
PZNh2uCQj/hQD3dAXQ6LNdPbHgOqogEZA6+z5Zt3mfROoh10Xmw8mOJuyve18szRYhxknQVzgjVy
qlAaCcCpNTHoUhfDiyE7DyNQlAYn5pgnHkvidps5T3YJgRtxAx/Lainv32VTTnLpczfglizItZYo
TZrMlySV7wtYypdjjH6NnL6CniHHQ3d2OsJFaN6oHu7OK838rxu1oJf0kuNvbne0A1HnoVsbYWXF
ZF5BiaMQD2/5ojKepiRlxfJUFkMZSjarjGXICBWX0M7aQXTD3e4J3a/i2WCv0QokyEsbqoUHiidA
PALQdpT4VcFbW/djeSIgd86xx4Jr/4NFenxXs2ZDvQpa3dpnvzAsin7SxUJ18lWYtHpjAdUfiFrt
zYQNGvC2GAvqWnN9G0n2Fxs4quZBJSUJzflYhOXjRJQGebVPhF93PwBQTgYuoapaAX5DuDOA8FC1
Hpgo0OWuGCVljwRbRF0AUaS56dJMXszqwmREqX/jQehOouisFHUQCbJThQdy49IRerGBLfUinO53
xer7wSsoRfs3P8t8Dcj4auElWY8Tmbl0HmW84naL16d8CrDspKhIJvj7BDmjgu6nyCDmlufyYifl
jDpnFH7nHiggNrZLqP2V2XyyK+lFcS/mhkFWqg1LJNG0b/7JKF0+seU/HEzqqy67M2IB+k9uvDLQ
XJkOJbw9RaguwMMB6URyf5sSTa83wMJgty+X4TJnZI2cj4EAXhuvN4ljlNyHCc3k3OGRLWPltFOS
if0R6G7uk1uwxbM3KCFttTT8hM+DRD1ZQIMqwp1blMJO+0miQLlG0T9zztwcdSjYaiXlWDCwCcUh
bVvyctu/LDjxs2Pi4OQNreyapO+HopVvbNdSAfsehhfypl04i5JMQrMzastQW3oKD7r4v9U3ag9x
uuxaThjHehnR7CC5XgF1WOrzJGiRlaCWidKqizQ4F3f8tRnTptS2iL6EyB4BVHBK45dEY7FblMlf
1M7JLBVTJyhyLipo2/WvlJuzsA/CdohcHVvMa6x6yNmA38KBFFf9FTE0eJpsPbMUXo4sViLqYtBD
s18BrfXjfn6w4fNb422SpjdmMqDkg+sCMNWoeiT6c2YBVhDkJuVIR51jClSjNlsT4pXATsEBv1Jc
6bHrGQW+5G6rPc9sjk+NheZLpLHiNOHd9zNQDUcVFj0MDCwwH2lz/6i4l4yCQf2vZNz5ulp+8icw
0wo63MKp3fShIbGpdaLOCfTDeZdzmR1vy1A9U/gMKlL6KZ68JHJW31f204WRN/4Vu7JUCxO6YF4G
3qORtdkTRfFWob1gGYlooG6sw+TvoxYgo2QqKI71bt68zYGTDRpfNf4KyGSaOSO1sUOThOgyU4xP
pPQPk//UcptyruxLeyaPFv+j8cGV5vOdsD+aBjzoR/nZLRqX4AtYBvcSL32FqaVxFPbupi0FnrMP
QazoDUf/444+wvP8gNXtEpJJcNBFJplJ4U7FO9IT6YL1924/8i7cHUfredw5bi4B57IWV+saAFW6
6ghgueWptJK4mHqf7+/MV0L3q8ICU6rRR/mtWxAfyhKEyca0en/N6V4Zqtv/NPblUg7BY4aoJQfb
FXPDV3f127fmZncCG6WrkID2isKU+ZXRU4WQ7Y6dWJblyvkmyC7MjRQlEz6+66y/5+1NZCO6PZTB
V0Up7BQ7T9z/y7PkDZxgjXH/8Km/hEZhI5B9c0v+3i9oRao302lBwVllBU0jGScnoiG9twJ3bF0f
QNGRfO4x4pG4hzZAF4dsD2d38E14rlrab47qGgiZSKlhV57e3reWbyOJNCjQD8owpqWpYdtCHITe
FyImnnJRDf5Az2N1jd2eO2EGLI1Hq44Umvsx57sx6/aTo1iydo4QbGtO4hS/Ki75xCoX5C2bHX+e
N7gURAQ5b666efSiQLeq3Z+lV5ngkXoUnhlk2XrZqXE8sPFn+eSYLghRJPMa91L0vMjnBHnT0xEA
HiTLNVkjC+p/SyTvgVpjL2oul2Ar6aaW2feFTfKXyyWBhyv+EozUfwCTXIR8g3SZ9xewuMooM56+
CeinKP5FMeTimBumlPYhMGXjuNcA2ngiLCzyercwbxd1fqsdrUHlfFpdZDP0xKVLdpX5Z98a/VaG
Gmx0KXxL1B+TYmYE7fRivJZMMMflezl0tlf52ZT/MEfUSg5vQ6GdsqIhRaNnNHrg6RiXREfu0dZE
kAdIGcKKmLq2PNMVT1706yJDRZss2d/SVBhAi/DDNkFNtWXMVn46/TKli009v7V/Mvu6ZmLAgk05
jo/ncxgUZm80Duk9o29IA/U3o+XgNmqq9nKKc9+3Le+WblptzFwfY7k5lvNngaiN3Ac9C7Kqig94
MsH93hOjDGoTaWixYi5PhFPvoEvftk+ST/72h9adfq5FjxL6KWOI36XBwqaChpJFPA0Ew5l5kkNV
S/6cSAk0y7tK5qNXlOhzFCwWnEjmUAcnu6w7y0kdyXBCO+vKxd9rg43HWDPgXaepjLgGEjXI4YBx
CpH6n9zIg2pdwjzX3hFQFxr0cJCDkhKte+H4q7kmMFlKd7Ex2CNzWUAsTNNlZKT/9j63x/95tMJn
3zPiRc+5sm+Y/8Qy9nWBRfX8qal2NSdlGiBXaq72yvWd0oFXRbo2d0yMKy3djHFBju7Sx3qFw/3z
7g0io1T61zWX1NPqBXum8gPO9LhqXmJ1ZMw4XUCyAosd76eR8XBaixluOFwERD3qlCCA0ya99+iL
1EFDT1IxCi27XnSFmw32VEPrIT2F8cDI5Cmj8Cbhy/CcqvPcumKexqpuN7ZCHNSqTniDFuoKDcdf
xs0oc47XGB5Z9U21Zsdh01leRpTmTIyhYRlBUAizV3E8YqUGnyPoAJ6FElb+t1iHNXeN+QpUj/Wj
uhOI63cIbr/HzIsStlmVuse+TXTIsnj9I2kpOlSDcG+1woso6QGgBFDg5pSZfCbCgrOHPXlBN8By
6CkcH8lRK4YStAHZ0ImbkXIUyrPbsGQFCG1EUq1xCMWVVSUxC4w7/ga9IgNl5vOKDDBhhlsVMGZ/
PrgOMXtub5IloRA3CbsYfxrvCPRn7o+T9qqN2xVnj+gbV6KioIfC/RejTiepsrxs/dK5yxhEEVA4
oC8G9/wbM2UESxY4RdmTcbMSwGzGFzMFAkBLKs2YYH3puB5tDKCMSG/uaGmD3yC8lZYRCNjWvtv2
zh4YoQRLF6MNu/RhFipUGM5VC6qEzIZQd5OwWocKWsAb+QXllYFVWJKkZYmOxprbi4P8d7O4NEZd
qIbECtAlOiqu8Zkf2hoPW2W7l6HXjwhc6ARe/LyQx5v2UkPhZ8MeoGVMr51pHZEKnfkiI5tLEN5v
R1PfM12uChiziqxxTT8y6R3MbRUsZnVS2bABprzeQ7TZe+EaX5ke5w7x6jwZwmAfZkxKwSJSshJY
FiH91jvoghCH3gHG7kDrVzqJoDigzpFAIuBaKSuIiVPD8kXULqR/Bm7g2SWyiEpSABjD4VzO4Y3j
OH4NN4int35J1Pw3GoJZJSVKCEBZ5FZxcWdtv3giqjHeCuLD1P3yQLNclZbBLj9lW5ipfVIdvgZX
XeDPVl+fyXhjFQUYxmuM1Ezc1qvSWygg0d4nUJb2LIFEwEJJ1PBbSnDeG8/wueOgpVvrwn+zxdkg
77Nb3eicT2RuCCfRH0uXF4RoUMcaZZf5CXD7QwGj0mq7JC8eVA8OystND1+Y4AO40FHAj7RtOkvv
UkQEQehgwhAXmBgousV2E18P5X5bAFiKwi3Y97RDJWxq0UudEET/z8QvQZ8wiuvvPL+G370hwLvY
/7wTsq/SwOQWQP4K4hVYGQuLAZlC+tTqHGhtv1k0IfVPdJjp70CNCKwAfXIHN5XtQY6URJwLt9wB
Gbw+GiNkGWuifETDrwkFHWJl567I3Z5uh12KR/vlJMV0IMZdm63s6TqTFxNLZtxYlMGHJIiErUlH
yq8BgHR9yb/UhvLgi1w5p9J5vR2m13F9BtwLMW8QLj95l+0Sv7ibcolL4MyfzFyguE70zWJmQmu6
2om7bqRVbGqFRvf0X4BaaNNGMFkiargWipf2uUUyo9ny4k3x105nohu8D6FnpIv6Pc4urzHe2RbF
KPVmXXVsW8vDzSMV5IKc3jpolA0Z4UwXQPviP+IWu8xvBqhnPHeZBtz4TzvL5BsSWsc2rmJAoeBi
spdS7447yJW8C6T+nASFRy/e6RMdZLB8HlDGeYrRWj1i/domGgkorAlT4TKYk7cOYOeoENUEmD3k
8QQNkj7ZbDS4Xr8kanXCgDH+40yaB1obFykH2ZyzXaXOJSxXHKn2gQwEYSgC/TWmbApNXu2AUTdl
EPPt8ipqx7gMXXE+ZAmLTf4u1Rjg0hBDiS1AbQY1A63wqmqW4XopYKX1pKBmErxNhSj/zdGLb8rb
5C/JJiKe+9knOmZfNYUgezs1EpeVJtld7VUe4Jw4it/nNjTToc0H+F0L3S3HcXtxisQ3US5aHgng
x1yPlxP70fOWOZKfQT5teIwuAfarS0HEoSZmTG5NgX7s4oeLaurG0E9nGRXsCXs+776rtRGkGinw
AP8RnbKzZL+XoUzKHnOPM0tgy+9hrXlZLf+2NBk5ciDrDlJNJnxDkGOBOhyNQs2yozwZoOaoCrCe
q7jk5i+cZu1KkG9a8PSloxo21x6Hl0RB4Wp6jqJ9NoflluaaaHpyNc7MIDeAQMlgjwzGxICbmwxF
8QDVfR+/m6lB4b1nA4hXn1IEq2fm85TVEtZ/Dj6KQcy12fkgRv8KArvU8VxQZfVVV56Eim4wN8qW
CJYKCbAMbe881NvB8OpYOTgBLk/tGaIPAS05R65llE5XVJ9LGeBSmaQsp+lzH3EzXlGPP3BTrFM7
r+J589w6Z6VoIFp0GkB9UkWceaQ82aXObPFWgp6I0bQI268HmDNhYessfhdSYmQxNtxmGEx5+BzF
MWRD1xmauBChDtiU/meOC6y7eP9TfZpyoR0keZFnWbWncIaAoEwxs3ZmG3pt7UE9EJMyLSgSldeV
EF+23tOXOaQ9u9zT8ZxjmxWPMPqk8OHaB5dz25cYMf/dPC4+O9rrlzY6ozLRWCkZ81XOn2w0dzQ5
vNaWnY5puOt1SzB5fdnAj20dAW/sWJejKh/5/LOQPrLOZQbDfjbo3OF92CBMvQMRIsTWIwafsKTb
XjeMy1pux903lNzdLbtG+o8JkL8b0oQjt7WqdqUu2uzxBUSA2bwR0HnADcwIYps2BOt9pAgJPqea
A7YLaynxO9ilVUkQPUvz8C1RRb7nXvUIeMgcfvnDI0JnO0c2ghuaOC8oDsFPqH5MTn+qihNRBmDq
uhd/xPlLDH+/ehDJaMPjkWsVdgMQDduXGreMv/WKdEyApBxk2Nut3WUaO320AbkgvN/GyNKxMClj
VlA//dgK1vVaW8rdaaaB9FEQZIz30/QTTlBMpWWSo65sQPASEbD1kg0Q8ExLZZPYRMaglDvPdvSJ
2+HAz436eKkwP+awWzjlkrIV+Uqhxzw1WTUtwMGdbq3LTMOnd6p8Nomv79IQoVhJ+krdOqCyZNRh
6/T/2x02oKDDScoa22ZIAcK8HQTPsZO9HzKSLF/cjpWJU4wG2jq7A1/pO761AwHwZ7i/11GlOrcd
NV/0QeE+ag7zoc/ZSlb56h5udjvWJXvthItur8FiwqPs8Z4dAxgFF3QaFoBNhygmVLJCWriqORUl
3vPZD1Hvzz4K5sj5R6jq3Hjp3kNp+Z2kdgZgfPSW9cyBbmSHbIHCPOE1px/JTa2OTg0ZQOpOuXRN
Tfxjq7QR3ECTl/dIqUcHEIg5WkQXI/rVg9bTuf+m0DBwZ19vXxLuW9ymXF0wRn/ItDG24EVPQfMn
1frIy/aPrHYlne5UhLBVuq1q2OoBtEKDnvvziEVKa3Jd85BogHse7Fpq8QoUn7lje2T7W5m9jxdL
oe86qIp6P+NnysOxVRdHNY0Y382KV5N2sZsD+5N+XoNcPeqTrfvgX5bTyXEUhZGrdQ2WtKf0a4gw
Yyh6E8geLCL27T1b8TEOvxoLz8OlZwnwrRytkOyQwJzs/s4zHcFf9FICPfUEbfWB4jJYtQMEk/bh
EpGbMKD2EEbiOQOG8RbIZ3HI8SSCC65WT7NJmJUA55MeO38hExVSvEc0SQ4PHzP10TOaXDquCsyc
Hs402nFW7xoZVeVd8jxuU//7itQugpoEkQ44A4fXh1F2A/Cl9GJzqXBtHVMYi5j023Q2nFnWnjkT
kO9r+hCRRbcVdG0uUSZB5IxwytDkxR4vKx6teks8BZTG4zAFtIASz/VoZBcbvbLvDI01QDXZM2fb
PV+xTUp/rz3N5surBA6yoOs0KMVhzqUqaMxOjL3gELVEONmi1L0Esi6LXu4lFdsBJv+hBUEY6u7l
JfwafHppxhW+VfuIOJ1PAkW957ZcdKedu6ZMYv2IJHpVy/bxPOoXoHJG7l/mOT8X2N02oe07NlRh
mCY8MLHL0rC3QUENCAzaLHbxRBm/cgyo9lAc2jiGvbueHVGgBp3yLvVJ3GOyY1bt4XJFVIQUD8qP
nXPQFY4JmUnCEdN9RCM5O8aEcSNH44RYDKAOCqQ56At1kDmWyi3RSgGYmnV0BJAHRccIHNPIjGTT
oEann8MDXFi/IMhK7V9R3oR/oAhekjpiYoll32AtaAt6A4fJ3wPa+SKpdEtQGn6BfNq+Go9i+LAd
fC/fkCC7fPr73SxQaWdwo0FJaXpDNYmNebi1DJRKoNiGC9XxecyVUHEO4TbR2XnoavWmH0DJGrwo
ZNfmjtje16kbqSoM/W7R2VrDbhTXILgJXgTWYq0fMjSMwJAPK4/XK3E+FZQL0NPrpZQRA9WJOkl+
kMf1rDE3M4TeYEgMVo0JPtcdxnFXLH5RzlMGMZ9XQwNJnOxgS25ieKKi+pbizd3L8r/QWBou/Ehp
sDt1QMM0cd3RXgSczIfKpQUT0bXt43ebdNJ3eQ7mDbQ0/PEVbPxP3qqPDOdCpEiIsAgNxMtxCFhM
OITPF1QD6SQ0iZBty48/FbDfTWAh/9f3YlOnKtXHjsI0l2H0hJeON1pa/YRASuH9ZxR6+psa+HlW
LjX1zL1w02WhLISSUDnALqQndkecpg51H8q01Z1yyqn9elWo3mSu5BcEMOixN76qDP6fIU8noW5y
r4JRshHEA0WPC3IJWv4ljOe+GjwGxf/grCKInyI0im0VnZ382543KTuMx2pCrdIYOwvJcYw9NDpM
ZKkgQ3oKW0QNUK3BARfRsIr0Ojsc2XnrqO8YwR17saYgxynHVRVqE9zisJXzBp3WimFZl9EIP4eL
CAM+PuiX7xeLqeDCYQ+DCjCAB96GQYbgReSB/C0eHNuFtz0a8iIBkFOzFnwIUEraRmOwZb1N5OMa
8oaGkmmRHy4Nq/Tp0qz5AnIeBuAhfJoEUvh6mKCOJyIekv1AdWIWc4nk/BvsWcKi9rrGA7ySo7Jq
rsVtH/Uz2gYPGMU/bc0zLdw0hctGx/0Bu20bVilWUGlUNb9daQ2vUkWaPQQ8vh0uF2+SbhQtix8s
09I0yE90J01EX1sKWQalZpaPfSVZzizKckMAsoT/pAqPga8+GA52L6A4WvCcOlssr03tIgptOipP
I9H/RLtagXO5TTDOboGD219OGmeYYKSIWllerYlD+xvGBmEZbSEOjmOv0WlH3n2ILJ8rk2VeDpIW
PepmjLGgfQQE8wtLqiOJh/WYLmupknsaTNSWjjSF6RkTM1h7jpzvjHBBlmqZMp7ApuA/sZZQGuXE
swX5hWb2FJWrytknQFpU/rceQhwIQ7eVF+wNd/EaeOVjBq0VsTk7AaJCFjp7aU9T7oJ82MCTn8hz
HjvHZNTmOwd+OJUwN/4hYly50211ErVQ93xAzTHlYpIbdyk+Ri2DNL0O0ek6ICTEslc2LVFY+L0N
ZKkvtlw2OvpMv0YDnu6L9XL5MREU8O1cRmX/Z9sQJdM/4FGEcdselJSE8FLkZOXUX/fvflhff2Kg
SSmNRy6GJQTU5gBQlnYDG1JRCw/YRUTh2USESiO8E3fbHStzvBzdCzwa3TrEbKc1UbdACv1BkBvS
7lnenady6S7po/NCymMWQs7vLoR7hRaD9E+b07fmA5HZ4OW0TTRxm7Yt28xZS6p9yq02YLfjMWgI
8YrudPsPZ+gMmndFWiiIODTWnlQ/hXLMQpfWb3l5mGYOjg+y8QPWwkKntaigyrDbqzPV6qhEcaMq
eOQDrsmb4gAU4UU9naSHkSTfU38D4/wA4tr7/9U3UfXxZCNOZr9HoFiCChd8SknRzYLT3xYhiutp
wJNCEkkH8MZQnt5BTqmQA7wJoJDpLYlFaPlWBr82FNcWzIWrIi59bNZA2qgB/QOweE6xnHBtzo2s
lf0l+8syaTXppcy8QK0sAn+k+q0DDojS032ARrbXAYsF1p1AoU/OCrt0G4FUHtoXV249mJOBBhAP
79OFPbDeO3NMhsnyj5dfkhwImc4B4I8WfnjnyynDMQAfzeOjwHUZBoxG/7fNwjaPNvRlU4VgErt/
svOeqvomO8u6pp1K+p0M5H6AXEYP897a/RajPgZvO+QXL3+FSZSe0cp+WLMVIGq1iIfc3ybHCY8l
Rw3z+XyVGF/Pvy6fJ8fTfaTU15NR9l8Tc972zu4spRgcakhZrNjM4XsaoZQL4xwbqz95O8ZFGPmj
tCkKNn4NWIZBvHi30IpWlPI/Y3JovqfreUeaOWzNFPYUMUf8QwpuNJxv1vlJ8gwiL/EZyiZnkIVs
RmGLe/a36YICi5UCJU2vDC7v8C5/Tdy1kYtF+SGCFtmkxqlrsgaS0EiOW5/L+JGr3ut1m0/ch8vl
mbyJWYcxRohhr69a7YHGc8x2IVMofKakltclNJgEOfQkOQY84Ew1EmyjNQvV49hu8AmAWov6H+v6
HT+FydNQUQ4lnR3RTxFwrSbg+HIaxDGp6gDyd4TZq6FoO8aYSNd3RMoGn9+yO8esQs2aLLVszC0u
KetjxySeeU0h3BfrBiW9mqPw16qOI24BUqoW2zPJ7qQ3F1C6n/sMT/oz/7y41W5BrIvL9XBkC4Hf
6ZH1EOOapvuCIgl3STlAyvUXYpgs/weGkNvRy1lJuR0MVKsRJ6GQXr3mc7XC821WxegFLX3WsuW6
R3gin50rHztu8gfb6ZuSSICk19MpQa1kssbS/YOFkOaYPi77scotJHUFF1c/9hQJrJGSNigG7unp
+oigk/MP6E1qCF2baBeFNj23nu6kQBc3nXKdgLPFruu6w1FeRUXbu+akEF7HetX4HZ0sfrr8Bnlj
QwhKfb3ih93NRrAFWnqSV6bGhu2xk3U+MR0/ujAWsulTQ2JY0bQfyiXjX5r2vPebuB4JAV6QuX18
KghoLlq2QMHo9maFU5Bbt7W/ZpWQpCQ2fEKzxIMk9+5mGeD3HIau3I3yvDjaVhHRdLnxOxfmDPTH
FayX0Y4ma0Wvs1Qh8TEBZKTFl7iQcYuSwIzqJqWzfJkQMuukuupTD5ngrLGyKGZU7VeRcnOa4M3h
bXoQ5enRb2jZNEpkP5Cno9/XXKRlGRqBhJyXLEmBm81Wxnifi9WptXnp31YNiErsk5Q/OQZ3CoGC
C6NImVyw7guadZIqpheQEQOq1BU9j4eaFl/9xLvIZpxZynP+peQOF24uSSTOzLw4YV44pkvQcUBq
lj2k5VL2wmsC+VXBHagi2ct2JRcKD0aw+T/Q0FNXMq5GF2f5698GseB2JoxIRHhjUzvfhXhCssYk
ouEJ8WfZ1RI/LOHgCzKFF0RgKZKCKKTW0UJVdsDECx34BcTZrrhcGiaJ0oefC+JwtkqE5n1TVx9h
Xcvb1KQIHUzm4XQNkP89RJw2t545YFHRtOR/78RWY7KJFRriPPYzwZskmeAZqi6UanlU2j8beM/I
awezK1KUSGZcpPPjlnukmatlHJ3FyvNeAe+Gsn2pXlqkD7xxLkpA6prqZiAUSRJzYwDdLHc5s+I6
ocFyu7nenXYiEb6hklVc/sLaign/Es6kjTX0FEe9egIGJj04B8PD8DdYsdYJzM7ATyoUdweDDsTu
eUd/znh/ePfWx8pMPP7VfuzoHeQsQMvkuQb36pBAmFius8Gl/n3vTvdeGbtr3i+Nme/dB0BrEtoh
4zfoyAWQ2jkY0bG9GkcuqN2aUbXbLheWE1Ma4qg8CpoXtX6e3cDHb2IEEbQIou1BjsM4sy4wZW5y
ps6942b3hqee6j/E2AbBVIO6vQh7s4Gz+pXfaYcAdvBMuHeV5TvylNh9FG9B0NN95wgwcX3VXmVn
A2LPqxP91XPIOAQuFdqlB5n1UI2htGxM4CppTumMytLW3McYPuhauxAbPqY8KbHrSHxhBWgERFgt
MY/Gl8GNhYIGyjUwuRcc7PIiL5MxPyWH6guIPKagaLHnmQjixcaDTccI8Klx45CfLMdMfH9hRfdD
a4EKzcgxr7oORmXvG/uNlmIcleEyO8PJRbaQxlbS87ORbrHy+tNlogAm34W8Ill9xM7eMDUTCUgf
RybLr8qMzoamyaNrr5gDy9N7dtKjRJ/YSZZb8ODVxIbWftNszCO/DUaLshMWHh5bVsSlMPD4vPH5
Agh3xwG0hEMPy/iEn5sjUTtnOTYA3NAni9T7s8BRVJObmisn1UD7znewPfWWh64X5E1PoLdzxlVr
mtTilZmV3pKYmoCpgB2iTIJL5LIzoyC3AsJRZ1IGQDD9WLghGj3tkepSvRd6lOcT0OK8jW/Fkn3j
/L3qz043xS7zcXJ2MI3sP3Glp9ntEsdPCyx1E078lkBqDW4xsv9BcrD9MoUGJDZcBi2DeedbCkge
9f9MspTvc5Mx5gL1Vh6UgituJfnNvzCSVz/pDO5XpZOIJgADbSCjTbRyHRCdS2MYBK2xRiUe2UaE
K6p9vMLghJhQD6238DVwPZOGAbMaMSCuZiyr9/X781KXwCMcNCENO8tndSUDrkBE0sQLw0IxjIXo
35824+D9o93w9W+kK6p3tm+zbqoYdCTqngddU0M2IZtGgMIaMHTZZCEkroo8Cfvd5M3suXnPn6kc
hCiNkxAa3qu0HirVGQ+ADex8S7nst9ZaN+ZJ6xFmv416xCoC+BLreiRikzEJmNwCVIEXJ7HeQ2ke
mUFm3nYOzquFB2choTlRXB6LmMzridVj9LxHlrJuaK7eEIVZR9nyFkZbMB3h9hVJFlceiDAvSb2i
FzynudHHXtgS/HrIAAGiNLlVECOWPn0DxYa630bZKVU9X5yMkZZPNjWfpjiNkYOZ9vJhRQMi6Yi2
Wi0OjVkbokNGezMSV88v15QVzsVGPONvUr8JLUhqP+G3/EmHFdFWGUXLFiOPChDA7QTIP6qsY/gY
G0C3Nh85sRSWrco8enJQdB5pzH0ok8gzBheEn2eGeQ+KsbxZM/w0q+PhQzbMFPOMTrxDe17YtumI
3NEQwvc+/xDwRHRj0AmCHeCEpNGvjyWvME84p01TrRbsUzcJzluIrG82zIS99q6FfxB3s6qIhVVi
h47r5+SomCk1cTXuTk4b8Q9gVAS8hQhC/g7izRUdyfOpqelqB78MoY3jG0CN3ECQwvHsnxQLeg+b
aGAPTYz8hSRE/eRHVtV0nX9PStkQYFdZ7prLrFkEAzzOA6rYkr6dnyk2CXUN2stZMlIXrgeQfL56
vPEF4iuYUAnJWo9NPtvY541+K3yLL7Xt+wKvrL9qfFVEQ9Fm3zq3aBH0iocqtAjR/RFC8KB5Ya7f
gs3os0LF0o5nF9kgAxuxnh5wstoSGzuNoRGhmqKKCBleO25hZ1OO0a609JEJTX81NLOg1ATVemtt
UIhp6GFMXq0N1VGhFfjfaQVNIMnF70fWiJU0UTmAVRpXmHhQ4Tsh36ldzFuzqbYGXYLsz5+d6pYJ
7J0/MuUFZDoWTyeE7CgqtWw7rFzsS7mepz7lTrHSILphaFw4UiGfA+ucSawbu5X7nLjQRNPX1/zy
Efl3B/2DBXzpiso4tkwXMjxMrK6mtmtxnoFThiV+BhohjH9hKjFCU5vyCqzjKCUzKFZH5wC/+ENO
VIZyFSlVxvbwnZ5pwsHFHg8W1r37S5Ftni4JGhNl41+K4pYH4OITyqHetldBVUW2i1skKEJ4A0P8
zwezI5xkZ7oWLEUenKTKxrqqcuGEtM/MKwHiupekZBq0wiC5YlgTY/lgRyiNHEkLmidOs8P5sks3
NOmoprzjIYRR7HpMCxrpb+zwONesvE/CWzUesXiMnl0SQaODMhFvLCVvyC1GG+5M5/tdeu0NbYjG
8djvbPJwKFExmEhA/yRbDIl0YBB/p6k5UPwnFlFplWxXSc0a520/sg4iL4brCMWB2XkeU4ri67hp
eiNjhCDiz76HFLxwpRrq3NpD9RL9GOMRBv32BhD6ea0o2ouNL9cWKSIUqexUhb6/kbdeIkflbMPb
oRJHKDbGumQWxC1ye5HaPlgMHqe60JU3L7sM51YBPOouD08ISvAYiSIcxvXedFiBbWUF/V5OY0Rm
8/o0JsEdghHHuDkVk3tNi9XpNZTVcqbmSleXWuyfuylOTDeEUZFA9l5IarpMkc5+FafNKtqGFpmP
xlUwrtHxlLKsKxqH/i8rNczxOE9iTd0E6jf1l5FNCb6v0tA/O0AR4e9TfJPKgblkN4K0QJNQUxWc
JEylMCqCs6w+DtQer6yUFp9XHLAzQPho3cNMql51nayeNccOuBVlv4HHZ8PovZ6sXACRPbzaQ2g1
5VYpaA+/XqX6c1QIYJ7UK39pZwmDM6laumOSCVIocL3B8HjBpOqOlB1Pylnedj/B78pM/dp1tnR1
N6d5k7+Ae5Pp4RmLelSm68GodAw00qO+ey1aYfzySQqr3jrBm8FalT9+6pFcPWi2Rxl4vBnc33K7
1yE2yRqQbG9Pbb6a7yEahtOZpjt0NZsfpXhiR4L+yH4WKb8zUZzY+4W72nUU2f1eXitBDX+gKgoD
ajRYjjUNZnbizsN/nyaGfkpbYxSCMJvY+wn1pvQKo4ZdYdBPOhzEtljsguXERARTEVQFIsqm52G9
ZWSr1LhMYpcAAyXqjQ1T0OpICQhI5h/cxwcEBvEZGNCWG5jv2DFy6wzXmoleGMCyTo0mRCcEahpq
WCoFr9jCCoCK5CP3pS9lmEHIw0bvsVTyUaGjBT4T0iq7qgYq1eudNA3Ymo6Xgly9Dv7ztYkROwy1
lu3PFvPASKst0xODojC9BShzVcP74JNkdtM1H7GElTklkUFlcyd1ExEr5ns4DeAZfAx4AC+wQNGh
SHX/gkplD3Y9G2OduB+x2WiHRRVWnKkQItJoVFIzGTvFmKTsAlufoWGaMgDIv7RTZHm4n6fBKL6H
0bkz/bxFD++UQnvshb8dIW7iSprwxLJ23i2tF9h0FTxVRiuSlSdPCxnsxIn+inUIwjjYzIWQQoc1
Y5F4jFSh8Mz+GswkOibppZQRFMbFcrH3wlW9Dz62WueYtPMfH5fXMlEpi2FIvCUPT5eR49rg7G8J
GK9czgLSLTUMru7irCNWKhsahNW5RcHY/SytCBYz7wO2hRoSelqpNDuez+5FE4k1s0hqTm19It1W
vbgyTEU+yeI7F7bDxcuFD9nD2cvLnUKWxeGIMpsXKslzULUeXPIZKn3pvt6H+q0df+fBvcdSyHVp
AWVfcH5UNaiJQHH3ycAJH/GvIot9Vt8VJajWEbFuAu7l5TPM2lnamWo+8Hwbj2P285F28K8hnq0o
sHy5Wkt1N2+c10VasYOn8g9o+MYFIxw/2dQ7Z67fBzje3hdF4wPlKvlHBg5PRnffN65obN2kSTNN
HVZMpBEVMmDOEPjp6RQIeo0wzhn7EyvC6zaP7F+uHsq2PTQ1+Rt5rs67JxHGSxZlgcXPQvC0oSmG
YPOzK9/qflcLTd8qEbDmd7ijkm0d4c1OCUtxUv71v0x2YRFCtaKblfRDL130i2EWAJmCZJj7+HIr
KYuoMYYD8FIimaaKZkjwn4+o5bp+MMxtAecw5e61lhx2VtdpZPU+irbYGGT3zwLFgL9zRzqhnrAB
VjKwXqFf6mYCx5KUbp/aol86s99ukUg2Tq5s9MotgHIWgWahPoJYKnKn0SVqjT8lzQczhzNAW/1Z
aeynIwmWbqGWv2zqQKmen8rSMvDqRsaXXGxYda5S9ywuWatkl+eSk9uOEkNe8U8BDIL23t08sG7I
WNSTQoXy5DJ/hkFIaH8b2LZTIpIsTLv1ytm0LaQtnwXtZMA4asNv+jlK/ALFGscCBDvu0JPYF7xI
K5+Bqxo1pIcl9JEaZYStdRM6qnI59jRFsUJkOlYON1OpI9IkrGcbfaGnu1gHRutlukm6baOPMb+4
8YWEGwGwfX9Zgi+fh15eF/o264Z2hZUiS9DriR3cPnyYX9v2C6e5ww8R6itQSsO8owziSsfMcIg0
eO9MJG7BKlAfx/UhdvHeftZhj1nzAXJvmVfqp6/1hibDydLwDPSNSkoPrcp6DN76Vk66NyiDK1EZ
+e4hXfTTvg7qPmm880sBR2FSGPLPNY4usfJ2TPJdWRYkP7Hc5NBpJ5avPxWrYJ6CX8YO9ObLq6h8
DFhQHPFjSMJp3WPkC6Oy4QYDkQlwSMTBtPUjXKls8Kdm2A1loPyhOrEdmRz6jmavpk5aIsmuFVI1
wPHhcWXi10T1Qc5Zf1vu/wzaddpS41CZ1uug/WCTgQ01Lmhr9lX/lOFy7J0pWX9MjG7HQKTzmp6S
5Ofq6pxhhGHZCBTIhiw5Vu1XVIH3UXccOWfRqdc1OQqlSarHF7U3j8u2BtntQX7Q+0s8iWuQdN7k
e6WLoAdOOAow/eAgv6dWBuMM1qCzwkpHN2OncuWnagXdb0x76/wBtcbWIienxHmFM/ppbZ2dT6cN
eFtb39Vx0XJ5T2cBRTDqy2ALCJ7paGS3oFSeskP1JAi2d7GwoWpVOeHUVleBZSvWP2rSVv7tfrh5
i90XLGOpAmQ9NfrWXnjNPp+l/Af4nMPjP6bVEZMB/JCjUnwQCF9YMsxjg0tZBZDsHFtRIMboLi5D
v0ooUKcY5yZz2Hz/w3YraQ2JYDJbqu0vHX4MJknpFSxE2tU+H8HmsHEIBr1Ol7h949HJ80uDH0vo
DPlEaVxItFmAyf7sbMADkylptBLByaz/axEK9epTVoDxNHKKmYmBEsn8x6KhLRb9ny93QXCm61y0
/RkZQByeBL0/D1lFqhnUoF4oP6eXgWFLJM+GZ5ZKsTQUxUmPwDVcSWBieZm65JPfu4FksnD2itzm
aZshRfsRg+p+82WNtfYsSwFPCgbf7L1X97qBM5AJEOithPXa4tAhDxLhkwULF2yOi+pNna4yspNZ
9XSkvfUrb7V+i9HdyuOxcDxM8WsIXgyAv9qRPU4vTO9476FdOc/Q5jaufMDBl0ke5jF1gCDj8iqF
oaiEZNophSk+w7g+HR7wgLMeTH7l6paysVkzz9O7xxvVvZF6X/iBheMVbWXGqfSXToZCJBR2SNti
3q2kCturaIR6oDV+eXbGS4RYvycKsM7CqPK+7jIFljlGPAnkX8nrmycAcgl5ZZsTcTFzabKqX5gr
nuv9j0E/xkpQ9s28Jvr8NB/4nq2Y9PfuQDhaSPbYMVsk7YsVu+IHe2Lb04dLti6uxF7Mp8iHEsXL
VED3zP9MdbSUCSpixuwSh3pIdvzB/6S+yO4jHKvsLfEAGc52pUdxrA3M7b2PnTtdPRTrzubF/1fV
Uxr9E0pz0U0IhwoQVMaCsnvKZuPsFkk7z3ZZyxZ57nYS7/fQMO30N+E9SAAzktl49VB5U/43UL2T
aky0Qvxc8SQQYZVA1BtnwEyjyF35/8+aEsRxNsxDQsHzx7cSKSmrJ9TUxba2kL74tCQ34020Vz3/
ZEzZnvsCvM+VXSxbaQlBG6N9KdlhaYpVlb48XgYUu4oEzvNhS9CODd8A8vDquQY1AXeHJjzxSzl4
4IZ1PJ8+S2OSi8FL3HzQDdF3bpNol/XE2pZJRQdt515DZxGRcqzl0LkMjdkIx8kCdsd/D9CbYJ7w
LyyjxV7LVDud3ihjZS6+UqWDlAyXPa3glKjdgk0vZ/HKblVzHCV/31lAyKcxtqsupdZylJ5tSiyt
J0WlxqKaO3G0FAIat4pgNiEL80XGkUypuQ62Hh+zMsYTSAW9Id1LAlbvtOMzQaFCFn+w/cT+zVcu
gBJ0Y8fNSWXESVAJemmKLz6QzUfLrNDqvl767i7BctBS+vs/z33ZXho9UayFuJyJvIKICpdGpBt4
El9ee6Kv6/Lu/5MYzzjzqZP7aFu+A0oPFRiEoPdX0k3HBXh8J9rU9+t6a5laU5pPzZXt8ovGE1ln
ekRzcwQX0Fkq3Ua4jGF/EL77QIkGs+9d+m2kn7I5Q+XMuDVj5eBYbISHpCvjF8IaLl75QsRh6ZgW
obMUvm7P35GQhQLISN8wAxwFme0WrNvtrjkQaeHOKLmZiuGL+gbgKucVh/KRDoWZDezs74ASSTlX
WNb6LBgXDE6HxUhztciu9Ahm/DiHc7utf4md3VuasSEdJ9vBGfxyj15SNpqV8y4W2VJ/e7Mmoo8E
mwefYMzT8uh4Prs=
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
