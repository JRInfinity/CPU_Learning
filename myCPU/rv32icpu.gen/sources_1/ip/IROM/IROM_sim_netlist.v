// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 17 19:10:20 2025
// Host        : DESKTOP-082C81I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/huawei/Documents/GitHub/CPU_Learning/myCPU/rv32icpu.gen/sources_1/ip/IROM/IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module IROM
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [30:22]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:23] = \^spo [29:23];
  assign spo[22] = \<const0> ;
  assign spo[21:0] = \^spo [21:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  IROM_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9696)
`pragma protect data_block
7Ud5WniGolWyoH+DQdaj6nALhLbANWOgoNZBO0p3jWni+Bhb1RQ2fgKtNebMUvjfxRrYVs41+r5I
2ptSAa40L9YiPIH6dXpV7phHpxRNDUOc+mlT0l2qMNFPI2xZWq1qUfhdxZAkkIZpl9YSFu5OtEHl
6zZAFEngWhyvazhYz2jDBv7tecNNzzD9s1ki3zE/Gpaf7+AykTSvk8XZC1T45Hxfl/zf4/dMjgpo
Vq9Gc+PYq0U4qfQGAqW4TX/KG2loCydZxPx2t4XmSNg/a4q8wo9E0sis4Hk257m9odRySm8szGUt
L6bZpnGRJrGvRwBrlGfKkdwNz4sgxQMIgXqQkXzb9UuT1/cWQt0G4954HNTVGhN2a/O/lQ+KqcgT
oR1PI17JyQ0dXQ7SvXswxi01nH/KdMoq3bjxyA3/6AaF4n+o//XHG+ReABmiD/aLmqLUZpbMTDxF
nEVL/EH8bnLPAPP2SK6nAKAsDBr/D51QiHio9MA9J1rKUs+oFkAFhqNhzqdsVyf2Cpr6DnZI4XUh
Y+KVEKd4cDMQUDveM4EbDN61PiwhcQMt9Awt34eqZhlBBrmWMOEKUSvj+MduOWEE4QVhLSTjIsf/
mT45H/pN/gHE8plG6Dn8ylhRgyruQBpde0Z4PWoJRLdr1KS+TMD7611yca7y7IPrVL1FxFe7zizp
BgFBpIHEwHvRoXDbbPSbPSjR8+2gSxQ6sgf6ec7dgFYKybuz9FyxHJGkUaV1tcGV16m7FRJbwiqt
02Aa0MSKcYe4YgZ8ggafs6dApEKBIEV/dLU2FGqLl8qeyhhDE5HB1hv/HxePzpDDY+B/sSQkgHoX
nkJ/kTc67WGnNReprsl+mBFkpKCH9pdCUWom8yu//PGcW0SKA8Xdcs/2pLnS5f5L1TurMldId+dA
JaX7Uj9jFFJkcSU1KMQw5F9dnTsgkau9vMe2YNHLlORkHeNC3j+YWa+Usy1XEms8TYF1J09i5X+7
uJzCYLB7PB0kRC/wssFup4bQ255exolCwH+gWac6qt2CpgKh0yMpqOe/DiH2xTahwnoxRoYc9GxI
/OBP5mnmRWrj1hlUJTLIbWzxT48La4IuR5xDFg2RHiGNOSt45eguNhS3+yLBY1G2c5KWnkOhJwXn
EKORWw9Fid9pTt8Dd+IqCahVCeWZFquGMrkw24xKhnNCWf5qBPW0UGTzCqtMyKKlibonNu6HvyCV
x7gEuN1U178Gja8BnpVmngA+G/tGAy/tHTnDNW0JA9O+imokCLPgqvfi1w2t/btwx9CYedrpn9gp
OFnSkS6iC3tx9txjf7D+GgYXVt8bSJbC9Kpd1gCNyrV5aUhlfQIqLj3Np4xE9881NjVG4Px8Pl/m
clRD1kU1/MrWgq6P401QwaWx0UK6Sgofrxm4g8FVlrPJEdd6wRfxlHWaRK+twLaW/3igFRkXllBU
I//9UG5nqC0A6srLwpNtDV5TsjlfDz+AZr90ZlidjrWaZ7SRPhhIdSh+ApKu5DgvJWzwGoI71oyW
by7w99Kkrle3TSRvh4CGEu0HBMbcBJnilnNJCGsxkwYzBTg4ce25cAGlvQ5AqfWID9VOHU9DYKVn
WKlP6Ayoo7zRW4tbRKhj/VZh0yQyPUZn22SoCSlaqOP9BzNSiIpNI5UwpyX2Vp2QMgMaOjLgO1T6
+PgSwJJDOny2PwHu+ynEpzeGaQlGdqYiSleKFDmNsOfwTtwulbjTZNivjU+c4zTU73VwOw7uJMTN
ijMjEj1nKwVAazwAbERobVsyFk4LXqmKZhzCEHyXNaMp5p0UTos7HbNATuW4bLHW6FGq7e7dJPqq
cEVrM6cZJMNFD1EcDzLtiTMw2UZ0RM51viy71qN/mgRjNEWpu3lWSRw9xrZrKk3FZoaL3X+nrPEN
rpvwgtQ0dM7XfbbWibEtWYD8L73SHAXz+8zX3iOIWx/QFXh7B66qcqSy5YJypd2Hd3bRdAYxytbx
lbvcU0DVWD4Cy0u6QZKhbJiiF0EC8jN0EEUaWKLtJQEOEdMAlb1pihxJcucGsG7O7H8zATzUiIK0
sJO3Wew+cVqLlus8pnaOJySTsrSylnSZbaJZh4PWQ3/FOOEg6LdJt3a3p+/gCWct/mKi9GV4UCOw
H8vaIV6889ylDbmWzpRSDYmQ4Zjji7o0+1POmh28j3HhdTHHYQD35n3V94O1ObSkR8efaOPUPvQD
t84A/UriWTpnQolH2RRUCARJ5pk0hCbkncVNS1AtDcm3CcoQ4XS2cIDqGXufC9IsHE9XffVLiRli
f88P0OARpRwf1rsOvn8wXnRj8zMx89T4UExI6cyCSJnN54DV7U5OSsjOA0O6UGQ7qnSfHQC/3qJ3
kc3YQFPpMW9WI6Ls72scqkhGwqqSBAzkvhy9vIJEJYPNTY2Dc2DjK8Jrep1UMy6+lDD1BZONkb2B
mtn3sJlh2jISPowdzlD2vnbjcnQFKl4a+QyHv46ppPM9zA6GQSDcJkvCpCgCceZRiGa/PmSrxcVN
/jJqVWE27RxWVnJ0vhVh9dTlIWbBUFfq4DwsLlLyK+OH75v6gmSaUL0vggSFBIVK2RD8VfYZ+X2y
p0EnmFKLILQGuK03L1/x8VvVcqaown+l0K1p/r+EnpgcmidLgWcLKmEoginMaTnTsD78Dvs9AXju
czVpobSt6lhOW+GRdb2DLTRDAmvwA0euxjL7KhMxP7t2k7Bfq/1GLqF5sFJ6TWL0sFzBeGTmv0VY
iRkWbhuxkhj+c0XvxWhHoZaVtKj0MW5H66HN/DMUq/QbnxMf04dJPsCDIsHk7DJVpEz3XKpFyWod
clvc07ynA45Uma3DrBACRuHXcB42bUloDFs2aF2HUKa4pWjejgxl9bvcFIabUX8rfCizmhVjrfCv
VtbDD0RiWbnWxoWLV1NR2elQoV7Ce3ynZ08BzstbRs2xk0EXq0r62SXROAyn3t2XUlYo9lbGL0TN
bYLrv+EXf+BCNiO/rQnxuUAMotHNWuFnIISVr+RO2iZDriNBohFW3UESSVA0/8v3aaOxyv6tqtMV
i4bbDFJJEF/xNK9qOkvlZAF2l0S27tTkzebCoytmWwRo6fJ+goTCQaf4UfZ0VFq0PN3zp5X/9tUM
LbLhcCXyQi6ogDUlM2iz3KvERqb3QJbjjX1AOoDmrtCsl6NMb5FIr6MFs/yG8RRE61O1NoHsdx6B
SgynzaAkOd0HnWhFcJjXOHOiG1zO4HbikdhjsHBik5oCsE7tUFwdYYFiYu+WHvNL+vvsYUTVY9DN
6s93QctLwzMXbkmScGeRPgSDZQmiRL4JJYL1qTAM3IzEu/tZlYE99kyyvzoQI/s2sMplbc9b6sY8
UOJX82bGi9OBFX3HsX4xfenubbkzZhNTWcYMNq64LHP5+FB2CG5q92MzrsupndvBquNo1JIyHm2f
7psigubwft18Q2SqgDbF8anBwgCykgoVKFmr7VaegcZwAhxM6SR+SaUDI/d9rPzxtvR1XTlifpCf
jEJhXqRk1C/FA9UrAPpCFzed/kTK+fAceCvaHQZqVM2+QuzGcnFTdzxSG2ox0z2La1kWX7K+r6s+
l9kUaYB3yTb5H+LC/PfqGjvh26Yi82xspf8ewnN90qTlmFAy6kmnC49t3I+NM/BPEpAOCZ1+T/uj
Bt1UJ3xyZy1UYNi3N5EwbeD+Pp9jjEOyPS4z77c+XK61+VOYD/pT3nOQatRrpJwt9Cepn3S1iHo7
yfMGkpH0wfc/DQdp2czm2A9UbsSO3fF+Fi1PXIzOra7Ts9IVsrwaVRxu/EaTwAEnrgQLk7oXiT9D
AKW5wzWJ5K8VhQmd6hSBDu6Wl3DkMYkVYSxHoGs00wRjj3lJQ1U40H9ZW54QnpVw3Tik2c2s3LkE
+ngHQi+b99XWGnQxzBaSbzqmXutrE4F0k0E1jXreAps/QRBiI20sS9ISlqAW93rrRYcCeS1f/G2l
CRZnxQ9292CNwOQlMKbIjKDl7e9zXye9Dw6JB/JEEHEhKAhrML+10SfJuttpop4wS3VITI1pnqmn
QwWVDnQKwDVq7egevvJtYzKLI8FcGSOmW5eei6q5OisI1fCrGdfmJA1ze6qM7VHyqPgUZSr4mP2J
rXuIVaduPm6AvuQjO4Unm+gejDi1LuGnaP9oGWQD8ZGx4C7YPQuAieLj/EBnIgC7uekoHisVGOsY
zw2nhhPduQH9WZO8oqqSRo30vq9A5EB29LMwnd695ibbI02nGNTV0dRTL3gEMAbb7X/0FqFS9SX/
wYsMHgf39vTwNd2rxJsVe2Ev7umJN8E278mFVzEYqlMUNKZ5xQ8pCQU74Qjmgba7oMFR2qFqgPjq
73lgvOjWTipA+S7RsB9+D3uW5OTuGlGA5Epf1zdDhSEZSFmsqxGZjaqZ0vS7BumbBxTS7dzX9/Hi
ySzU6CuSRxDKz7G5wh10REwQ1/9eu80t8hOiwxUNtxKtVLF2YrsIQqw42yaQ2P70wEFngVrdG9qh
T4EQgaVk0XodAnEafvDpC8poGnVsRqKp+Lacf9/JIHbFGMY2Lm5Karqf1b7jfL3hGy5E/wZ4kA3v
jULf70e7v5pAQBl1yNbVPxOEQ+cT29MHN0om5odvFmMOc2HU+8F3GuaBx1ZugG0k/811LiutlRUx
IKI1dREssKLo1+SHNa7ifgO48es9vSQlCVu4L87dp1kBT5dmRmrvIJh8YEakzhOtVrY58W7IrGba
Jj1nZXIzxtRvch7Da8ctXmTEM2wU4d0dZxaigbVH001XKOVYSZ/M2XFIElahKxiJCYO/OyS/IN0b
aQwqbov1ZC33fL47rk8eyoqx6Uc+B3TBNu2obLZ2slk3wRTCMTnoMljh9/2LtNZSWPw5sxXTUR49
ojMCmWGvmVzGIfQDZ7i6nYFtBBAzFBauPP+Yo7Szu1sOwcUUBzXPA5Yh9iLoHI2Y+jQG8V1PxdEE
VOJolv7dHLcZnKlRHTNsSeMTNL0Dzgj4WoBGU5PsAQ3qD1l00tJwhTHZgFZa7Ub9JsRKJYEHYoaP
xTEkJxq7TCb6wnTCLNaIOdSabzN4ahShkdS3sJFu0pgtbl9iOa5KPzxNumS5WC+YcqYuKmYlzzz2
OHOjrYALuONUI0JroRxXvoIK0TWK/vHijQMhAIhlB/pZcx2+271+aXNrLwi0bnXailaRhAVnMU4Q
k2bshIkeXLGFGRLl6vIgZa7DhImURKGEbZ82NeGfDY6C+yXu0GlJ5v64TSOv3Ko9oqiiwKGeg5Wu
zoe7axZsz/jVGiSaMx8PXXhKXP344jdwlqQ8kPfxlFJUXV9dRKZ9ZqXetnuL7lNw8wUKWmt7Y7/2
/xsIndib2Z3gi9nQ+EvGp/hmcV4JH3WylIlVa3GZH3l7NabDKIlAXTYT+9bpLoyrqvSgzGwGlSZg
kiDjZJfYvjjXkwieBLp6uJo8q2notO60UAjH/fLLDqOAmnopfOzpLft854seb2k+uOshRESCqUAj
LrjPmIxq/uEZwB3AUDyMlAxcui+uPVcSXC/Lbg+DLaNPors8ML4pYkuiLLpdpUDEITrl1MFvyLYG
y3skRh6xedjf/FMnvPnsz796p/vHYswO3vnZhpMxYr0YGOM/OnPnYIW7DFOz+7tCgH7vDLe3a8ch
BrIIbwLgm8k3P0lMQJ/ECVN6DQzO+5z9lC1/eIPGs221zLskFwXn+9nMSvEPNnSt54pfiWXBKYMk
IVYdlK9jWA4HPP9rW8wgX6EBbjRtqGURWocdKFVMAqKjyQQMV6WLXbDBqyTcxKPZuOwSm7jbfWtr
HYSeRluonrbdSUnKcH66nz9vRdmO/C4oGIxLkrUzMIYsjSf65Z3VFHgslZwYJYdFY18oeSmSQdZS
+RcRgx238L14UziJMa1q5k1QQFDviSYN9dy4tka5dI/84SPeMW+1T382dYgJ1IiRXr9PJ/UxGSyy
SQP2caMIM+S4ipQGajWdtJ7pLYaBfW72QQ7gSG49lEBZRCOm/mrtd2PCdaDtVHbJ8u/Sz2CIxrVQ
8xp9z8C6usHFwJf2+h0uP7/uahMpTqt34CwRwxBGj0EyOXVH4g4dSGKfdohptx0HFmhvThBbS9SR
5WMURyJYY/9d77jQDwe9uIoy64c756kG/qzqakmy77tKCUX+SlzxqjoxZiYbi5HUmDLZJ1yC5rMA
woxHtgP8tkTKOguEH6Du2lo7PYrCamu14FvdCzqhvNwXQadmfqTWMASb53htaqBgpi86Ie8NeWQN
fPc/PWRLKvXWBq7fNgT23CrDXVU4PHhYoWnDogqcGyu1QqTcjKlOf3Sn/sP0RREvM5w0EwNCS6Iz
1iQZcciGKYNthK4RJZLwwE/JLh8ohHQE8PJ7p+Og+rLLH1pzXsyUrhVRVNMjhOHt8cpk06mN/TTR
NabveeNFmUd4wmoQoNTPxU4FwXXXGpjFEkdwQlzYVVepZFNXS6vL0XEQ36DostXN9ZOG4sXMYeWc
KGXsqMyiRD0fDqktfgmF5c5XBqOc7QGbq1agHxdZxEP16KiS7aTp+ERXIoedUxW3bIwDlmBelg+1
qWec9zAZ4Jqz4oX6gqu0Y4/IqkwPG+arHimdl34wyM/Y5aAIPeV/SK3Otkxk70psbSjfJcsbbZgg
fTfiD87VXc2CuOBrFTz4WEfIzXH21beUwSxK2AzqDz99etfmY03RNjJKi7fs1MLVgDHWEQKuZ2AM
es5t5DxjUC9GUXiFf8pNR2TetAaAkLG0///VD6iJpZo0LVR+sF7xKjyv9X72zS1EIhG1hSGeYGdu
Lzafjrk0TCj5urjI2OLQOgHnsH9YA5Py5rklSNS6pYqgHr7Nc3GybRWkMeZPW4r03idR02Q34Edc
f0oVdhgSivRymnlR1+sd52ZyPn62mVy2mqLLS8bMFeF1ahUMVqB2mrXK10KZT32atfp5ydECdyVL
5JE61D/Qw4WuFOev00QT9e0NoBM/V+irHHx+/q140hshzgThOmm0qgQ/kCkH5oggT0LCUwTclm5V
MOIBiagr7iYW5vKYWTY+1B3oXAh7cugxJiOTRUauNDMPPgJXyVOBphvGA4FdABacvy5tTSKW29qD
f5b6wPKeGk2XYIwAkDlWD0Apv28v7pLBthKj9kZnHayjKuEVgSkigapXG8onZ5teVYVLvdH6zQCw
WKGI7OI4QgPEbmRR7DFIwiNsMq9xEnz8O6z2rmUBeEa0yH+39hpzybfeB87oRtgUp2mwnmc8rr8D
odfCDmVDv9R/6DE1Cj1iDJ4hYk2YNBqvc4cTY9js7dPDfSYKNFhppsNHyf8FyvgldoHGxkDRnZR7
kikZ0YunzfokBeYv08NPk384GWd8NsIFqTWyqw+oiC6RsOSM5JrC5Y6r3TzhPjCCdy0Gow/VdW/R
KSRZ18/bAcwlQBM2h5QM1l0x5r8TCT/JN9oCjQ54ltaJfQX2m3bkIbyQPJePpgDILlx+OkxvWJDt
Z+Kf02g0fKfxOIpI+byLe3uiF9NkosCV3kaKjbkMyPRrTJqvvnPqoUkKhb+vj1k1KhLpj0S0UhG6
sJl9bJFIELXEyJeZ71Jv1+4qfVPCNyE7+CBojleQNRCe1aVl3dSPv7Ju6HgC6+BukyXpsJCRIKgR
gRVcFlIy8sWj/iC8ndZ0MSDxn2ikWxYZmKg1+K2/EtUQt6Y3Bxz8OXsNbsuI12eRd48NwopA4VD8
efUfICIkuzzRbXBXN4awRBgkXZZKwkWQ7LwRGQG8RRHV6tohMlZx6Apgl34kXCibGMU2zaQALwuM
vIA0T8Ck5yNzZDrLx1EbtgfZKjUNsVDk+4m/sSzj+3L73UT8qZzRmwfnBhniJ5KAGsdmxWq3CTbL
R8ebXiT8t0UZ59GxA8PA33QHboCsdL/3+EyPYuBZsuo9PEAUmBBIhqBQMr/vDem24RENQ0tfPtPB
S7Fn6ObzlShmttEG3oRsi/QvViy7WR/YPucpITUorzlj+ySKXcvnfA6RoNgNaey/Zv1syoI7oMI0
LJl5y03duPiiXn2vkxqtHnAcdNakH3R2vc3sN4NVA/v5cndnF4SxhTqpvFTnDyqlrhUp+sTNNGPk
LMnPL6jEfjGbotPtq1mnr0GUAEYDhpLoZB3z+EOThj8VCtgN5RC0AYVsDRuT5M3EPS8u0r9RT6bq
up4MMgQFfQp7URyw+JIdgl4cHYwgpALeJSBLL3oospDfJL3woPuPeqnwHIRrwqjHcy5Zk/b4nNXj
o20rF1S1f5NZRJ+pPPFG3/8/RFk02CPD5duobmfAr0or3kQz0buliX0mjizVmZsxhcxo9RSaxFFp
8lp96w8+oBhs5iyziiG1OZ1jff3lXBXrDyeowMYTjf5Js9vTnAI03ISxQWcJ2IRVlHydVDrURT/0
FxGSonrN01y+xjhlrKq0BFUug9f+wBSryYespQuhUz1njyKIcnIRh1eHltQZ4p+lQ/I8hlUQ2sVi
2fgui1lC68hXqdZuXxjzKyjFazikC9AjJs6wUZCGEm1ouC3N1relZgo7mhDeavCNT6XtMHTPdhxh
5PL2NqFGpZa3Rdz86kjkyKv8aWqcb1PYJPCzbfasvoghA5VuBoFiLol4ewrX4zAKvC0QLqzdkWf1
Kr3D65zdajHXFbgP2oMHQX1ONGzUMrLzOMOXaTPDM8BnWZF5VR50THgNngdwcigeh4xFustuHyuc
DXwJt1/g0K2nY8r4Zw/Wydc+yjiSS7wTTp1utFnJmyshj3QoLeJSpKkntIrngTQ0kAmW3SECHTZr
+5WagERYmd8ZJTcITrl567x0zxCoQbn5jNxri6wcC3YNOhb+xX+FFk+kKC5dysu4hLmMUvLGKJfM
cEpEszADtXXcGAjjGvhw6gdLGc3wLYteqEMjeloW1SxkrXuTAnpoDU5mDuiW3O9mLsS6E7vTG8mG
+mw5aAGT+tXWTD09NQQoFc8V1Nshsm8ih1/KKBqQoHTx6u9RgD5NIQi+6FF3+qjaoODETIWcpfq3
N28EeZel7F2lNaVeD6IpWigKA4w5O5HDp0T7w9HGlwRoWYLxM097GGaK2bIzgAD6Axofq8CWcEmW
A0qQ1QEhSLmAri22Rf/8/IGKYbZqQYoj8yZnHuUfgm3t7gQg22iFrLibfKSIPdA0xQzY6XW3f/uH
Jr2kSYuCMB/FIb1avQg3fs4jAuiOLjFdFlddd4wL/Ru0oS8CgOLcU8kH+XR4TtncGm2WVK15UO43
VYjZ9EDBlgqiuSMsfQrUYPkiw5N3ExjgSdv+EucBZ6KZUoeM7oUhYzIp8OHScpphIsVajtQhsgQn
IID7lVjc1HCyZIQ4cSt9kdgDB6YRsGmZI7uShMaU4KlElWFDO3XaFaG0laFlK522ft1XdlNtjq6n
n7j7XpppZDgRRPS/kz2a0v/OLWe+iqUYbhRZ53quUdXx1KMK2yigjmUBb+K7GtTBgKBCPzRLAaNk
WYKkrqrG5kfTBXPK1u3aeMjgdJlmB2qTkM5XgpfYSpI+1wcq+rSTKGTqTFKY5SGvu+jK8Q+iWZeT
bQO0fY3lxXEaKw3YLWHeI7ch9M82i4JdmqZXLIZsuvT9MGieeoo9WpMXrm+DeU1Ptf62wPXXQTfw
FjG36+FDjJdvU0WMq+q2PV49UlV0xlgHyL9R6J3qpM/r3NaRSBZ4MExDWm08TCejudoU1OEdSltz
g74G6PqY+RVl6sqQ5CwOH5KwlZ83EmetUDlbU0335v8kaS1O37QkPsiFBqtL5stVxhMV/mOM8In0
/zZcdjdk0mZ/Ix5p57sv9HDT1iUc4osdpSXCvMXTanx7xzzDu42zlNTBaThNSK2wtitWiAYQEkBh
Ro8ncEHdPKCYb9CWk8TpQpg44uaLlcjiLfI5phXXzf1bzWQZ1OM5NJsN2605EGyU8lYzPB1nWTnh
0xCdIbxt7wkmATzvzhfOUfQ5dhBn4O3zYX9KBuvrlZYUJA0SHs2c/4buuayUiZgEPCpA0KhNrmMu
8G7ta7hhWMRjPdRJvI8usAaMGSFLL4UABGokxq0/oLE69jZJ4wR3KA1sB/z+kY8tFXf7K6wA9ANR
tOm2SHLWY6TYzWEb98BsEyKG5rcsj8+SaZXoHwPiYhDFmc6RWZ0vRlMNAbaJFzgZswoAvHq3YSs+
xYuAsI54fCkQdN98EZqJxH/+NeEbGggJTORmNKvKVOCEl/RTj4+G3GCrmc31PTE+Hh+jEnRWVy5z
aMIldBkrgOhC9dLMkuwk98DIv/PUJCm13oJgui3LwBH0N1LjocCbOp7fRkx6J15nkzYzompB77EY
TiTVw+iAXHWPpuUNEEtbU3lVyolOxD/9VLuiC+sq4sej/uL92BRg1mhIa8s1ERZVAsVq481Kk+9S
MHSZDJRj5UT1WsuckR8Z62YISxkwmUJ5XmjdiG9XTL/VK25IznsGsUqLMvL74fvJiNUbo7VdT9WS
979JbWFhAzy9g6zIk0evuO2pZemHj2oHMwFF/evi5dAISC1B/RysUs1rgJMGSZwDqJIVEzgJ7+8E
KbAb1+aqDrzLrHIJIV2VvA4xwlWZCfgERem1TcUif2v8uTXo53TlOFc2yBoj9aRG8Wx258agJIBa
Tn04lM7X7A2QxfSKSQHVdP2H4Uo1utNbTSfhTnNhVKMBrrK2NBEuf13ch1/+4jeHcFeFaUfpDxWS
JHmkWK9yAzYwMrtXUcYPC29HZGkwb/5dY4HreadnciJ8+n7JWPa7UnmqsinOokurQDGhpatTS320
hDaANV8M6JJAJiEQxDvTxDJRPZZhpvneQQ5i0BCZ9LbGvFM6SfDYz7ovVS3oZwBoou7SAbwt3faX
Uu/DIoSr3YG3p5lDa70arphUZf7ly2YFuDnK4buYDPmE3FfWJYhxD4lM2vJmXQLgq5bq9eH7KW16
sMsRZmMygC2+xUBak2ciKLp7EkjkcRWvt1o3GfGgZlgapj4ik0+zTAlzfk/N0LeNam2oD1JJnh43
F80noe7py4H3+Dps5EoAJKzDH4XVlDISR4z6nhxPefFhmdAWc5/Nwfifo83R5FaHKT0+YwMuFHUB
8vZy7gD6ctd5+UavfZJvajExOtL66s7g9GQKb0PwI4nx81MaA3aolLKDWR514OCId1oNzyoQ37+6
yA/ssm+XTVqD19k9ohvx8iNolsu2Hx85PjLJ30yyDR9gIQ0A4/gnfqmRIqyFvxvmhgq8WjPHQD17
fCy0/pY9V6FfkWFPlIwHXxrAD2pczSzJKpSevkCEAV5+mKxBVKg1DCOO3c8evyVMOBYnNyseDhU4
zckrEOeV/HmVpWpL/iSF1rwNwgJhpvgbsVRCRGEToYliEtiRUjFLvDd+7NcYiC4341zTooyMM7ff
+r2rc6+TqYQy/P+6n69UoPIh8BtihxfLrqwnlhTiZEUx2Ary2+E/nbmQ5S544aoOp7bmLHBjbrh8
iJ4sIKJ9Jnes0VHrEXbkYiqKVZSzVellK0gSnDUcPcRitTb3r1V9WuS5xAHUHsDi1eF4ucxWLzmF
ozcfc1sdwgTvYEWGDnZsDDbxfqjtSHNkjkGWafnukaXG3G/cLzCm0oYHWrtrRjUuyUJjiOzyT0Rn
r8h4N+72mrDWkvXPBqy7dyys/IKyzNbnSZEbnuMvp1vLcWhjb2NP5v8n7qKIxICW+R9lcrfayJ+4
HFYK0HJPrG1oHs9cZQOKmUgR21FO6u/V/d65ALdu14jHsckg3K/+1IOBfAR3xKENx+VbH7soaQe/
zENPPYiQCNd+Imdjo468Gf9WCg+lMjePaaCBUS1v+jA44LyQEyNRLpjRlrrz5UoCxTiN+8lA0jIx
PN/D8otyfQrtxQaxywDShOvCEfuiAp+FmsagCfs6pi++3H7wxx1p0BAon3f3j0A812d5831a9Q68
V0Z3um8IevplyYRAAaMiWSVbTtmmeYhcOZo0VqjoUMNYhnkl0wweE4cF+tQVGnFkc0TkmJv4eQM7
NdyT4EM/Cb8HZgQLgLpa2DaysGBj1cwlXAgIYRgQlsqdQzxcstqLDqTWBMj4x5Uw/s+qui/tVMio
iaHIrJYeIygxd32PBktO2k2EC7eXG3TUecTdpy1gl4j3lYG8ohM9c8F5yKL6r+j7cGy+NtMXxdtp
HDAN0TbBoIm9sZmu47KC9g6gQwx3U2liyeTnl0A5tlYXc8zZTlXfoCSARnMigJmpGBmu3o9kfKqm
wjaAvMAeLNVhXaNf/33NcCLca3Hjv474PKiZlKSrQ02Mw/KKIHMLSwdbBrnP5WL9bT2i58T5Wuok
V2Tazf0kA6j+gA4/ZzekdBGYt2AMohET8Yj6flnUoXG24fuch6p3jatUxFj45+szm0eDnTnpBTgD
GBkfIm15xHsc5vvGw2+g/ipuE8lDBPogrcNYYtYDnQh9MHM/aKqwRVXgyM6Nsbw1OCuojqHLGdAj
d4i+N8Ef+it5esIkQUKGV3QUDXv64wXKJCEc0atHyKjBlLMA3nzw11ndugCpuVyzW8YjG+cDP/Bf
5vKmBdwiOGx2rDIL7TZHy1mE/TK5Ri/7JpdG/xGLyotEOR0oKcdMgls1KL2o5Q9zO1dadNZkra95
uz9EVs7iCb9YIrlSW+Y6XaoXQY1x1kBPesMalxj9blk9xtrIsmO2LcuP1YvWIPt5Nr7eGzLTnMN1
lu+ZldVv9v0/pRSWI5YmdRQViqj5xCXYdn69ekxUc/i2b3oAYIHn3p5SCfF+khp4vJxCMIWiwUlN
T0wyLrnuEh136aPocNWRb2QnHHHFqBoH9LxhNjpBGwrU8kqzN3LVocyQ7MyN2zwbAnAGmrd/zRw0
pvnDDhqv1AsheVofd17qO8RIui97JLnyB7d9SkEm1elvaF0UUX10d93B3YLAoceTs2GIl6FEefI0
/YJg3+ro7Wkyngid4dvfi+YH2ptJrGvt8yIeLz7/3cbLM24XAvOkKKlU/2wNKzLTwB9GchqbD7d0
Nfy+EWpq
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
