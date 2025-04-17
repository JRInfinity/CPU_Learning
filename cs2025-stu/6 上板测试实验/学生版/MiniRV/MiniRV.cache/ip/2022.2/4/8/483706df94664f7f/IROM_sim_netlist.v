// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  9 15:04:05 2024
// Host        : CHINAMI-BNFJJKG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19216)
`pragma protect data_block
YzJoOJ2iBVmC23krjgeZox9Hi8IGoTqGAD0huKu+QoCgWYhMn7GxVBAG1ngrw1odI01cBc6+U6wv
hwTnyfzKkAKGWfj5HmfhxF5jij7PxHMn8MokoKWpTUvzKWNIWtSvi6La3nGqggKOnEagPgz97Tse
RK21lNFEPMa8OeyJpHtzBW7beYC5Ip3nfJFf5i/v6MJQYWbQuFYEGJvlBCmbNm2mnNlqSGHA6zMi
qGMxLzKiOrpMaZ56RXR2Oof6pZWZoRgnOwhPrltj6sVGNkl4OJR9gsqazUMFB1SRFNbZKblPShq3
eiRcUaDGO7g0wcp3HN+BwKYvz8k2UQKi7gnO6QlfQnJWY35oSbunYllZFTVsw3IUJeqhKl1TLmVb
Mgwr4avXLYljX5BdlRBI4l3POylqXxJReUnZdYIYhHbWt6exSXIsA/2U9CAri/p3qiVVKvDmwLSt
aO4FgWLJq/kg8yib0oZHljyH4oLabEkTySo5bB8uD556pqSC772xmFLxVXokoKH/6+JkuX037CU0
dNItxsN4y0Dog6hblSuljD6JJ4x27EYNIjyxEGupy2Yj00e9PvQcgQ5ZIIZkWVlEbTuy96cF1Dhf
+CCx+0M/Ws9U200W/V2k/QOmCo8hHYk3ROVs+04yxjq9N+dw0CCRxRONtUoqXFHrnn2LnuyD8kYA
6ApE06n5LjUPzRPOX7wtczdYJAPjff0HhpqnUs8N0aw96jEZDvWgF2VneAV06HD0Sarc5j26tsPv
FEJCpVvxdH9ecPoNJOCFE1IGk8SEX4YBRMyTAwKAb4bZytYYUohbGMbFga0xvsLkbRuq/Hb9BrEb
uQxOgbbZdAPjgB5+3herMtheFaJ/oTQcF+YwULgmShRwJVroQS2ekC60tvFNdeoS05ifw/OJ7SQz
DkLFqEAj+7OLcKRlEJzv2ITu/q+dT9MOn3mdGzBdTZbDVcTjhZrENwDOAEn0NbyyRBdPzXVyfoPA
630rC0eIa/qH94uf3jrtGeCY8loUp3ahQThydCCgw+C0YVYAfwVr8pJQRJE5+jBZZTn9S943jwL/
Wns9gD8XoSnDnUvIKpf4CXXTwRFxzPnr3s8dCfBjf3JIATErX3oC+16hBLOf9ygkCUW8UqV2rMMV
CufSVXTf/p7imxMSR6Q+FCwLjOVK/m9Caq+Ct8NjyPIM0IPSVd4W+Omw420eIEdJriH9dNyFI09h
Z543B4F8sTYB+sYgSC2C8DEAgepmzT1rrYmRyLArBGQp2Gr8GRSjHRhlYajCPR8FzOMtjiUtA4ly
QshE2a9+aqyo+Wwyc1bxeEv4GE5OpFe3GHgFCEgAyt0KAdTCTZJ0RVMmWari3Wr7QhM3qjbrbsHV
7/aTPETc/05wsbNqcuY2Kdjvu3ftMA+mm0eIATqJMjwROU9AzoBZ8CCAUBNAoN5wkainkGdgZ2q+
nxygMY70MP9osDzieSb5rA81pPgdln05BDWdjnuY5FOM1P66sQlp5uhBHfYkr4qb4IoWczyAj33W
oLQKqqjiZY1iZIrew3zrdt0XZas+JKzEiv09FCHTEZgHv6d+GziWrSkv7LkXlb2P1nxMhwFVbMu4
j9lcFsLdi77EgSzYg5DB83fEg1w20MxDspsCQyG4AJcIGzo5gpQkOFRhisOAczvOCU/rkiAswbYM
vDe4mkVkYyXLeuOu20dQpswhum5pmIly7Bk9+imfj2zM91ZD6rMSCjlqIrH4GcDLit4UpdW0VCwg
GbmeMgUj/KcOGyxELwHQBp4gaS4o/zdyxOzf1b2+A7QKGyhLoHjjmQufX8Ph2NyEzkXhzN2dbzt+
e4JM9XrQ81CkJKEFmk3JX+VdxjZ4Ci9bDrO/llE+8P37XZdoXCzzF9TrkaJRCYWmYocef6Lkq7GT
qcm3D1/Faa901hbXjpmeNE/hjj9YVZkXLk99HTE7HqWQkRSAWEU0BmT3zAzLqMigXIAdYTqEAkKE
GsfhHp8PXKsnuXB/kj1Eqs4nyrdA6gEkFMyNh0wVds2rr3sGTqr9TUnWo5kUxJbkJ6q6iEU7kXSX
82r3v3YO6s09NVZK/K0LDif7BnYZYRZKZMVlLHIO79hjfRnm7RFyx9Wv6QZhXxqBqCxHLfiUhwIn
UN0gv9nhaCfw5WRzQn+l2mzWkAr5qQ8RW+sYLaUc6csyifMNq2E/VgYhjFyMfI6IHz6Jy+gdkmBC
TGM+fCMGoNxU9WmdJNDmj3MKP/KytZg1bSzSYDmqD2xA+vL8PKMqZIHSZO6qh4ifzjVbgzOH0j6x
c9ukTEhnJlraS769mpe3EO4oMwZZ2wQDgVtccNrGQUL/PR5BFhPFeOFPs6lrVgaD9gotjNopJMs5
raY7TBoLIgkHRT4heOR7CMUQUbbP9a2kEtq8xWUjAB5gccbtyn/9hDV6e4iAAve/lF3bFhHr65WK
WZwLpJg6mRMYhowZCdV2s1eU/UOFYN0KaOw+KWpZavFHaSBZtchqLORdzHTj4qCvh0Z+6TY0MGdR
l5dJCWu9p+TeYM7/KnGxRIUYurFxNQLGQn1rPXxpbX699yYZcxcX2rmyebobCB+WK4DI6zC7+KF4
wOvRz5fKlCOcQ/9yxfpJorR5hAearPxCYSaT/pRWoewUTuaEagsCMvTZFEeOqezVzdZHSw66Adr+
Zkj9ACWVDgCYacCf2NRdXYndDI8X2pJJvEpWOSmCqf0jtZpyOGvWzqqiswNuOuPH6+SRmgqx+DdE
u+MUZwtxb2ydmm+o4nQnM3joyiAg6rAb+S96DAl85XgjWyXoIw9LWA+tWGkt3NXqJQFSgntiqEKi
4ps7F1jnOafLv6GSetPOtU53NQhe/9UI8d3lxuX8KIG3lEKeQX8+iwehWbvIRyiKZpzYkmAjhNJW
2ZEI5wu79/Z0TFUsF3ApnBlPfnYx8JoGfrO2hnJGQT7p/lFUSmjmcInJNOR5crgixQOk6EG0dj0r
aO0CIVtNQ0WFPT0AhM8uN7TdIeeZx7IvclSzeEdeBDFqnraIrNeP65DMR6CGKlUEAF6rrzj5FmIt
9PHE5faSFI9k3UZaMzWnWaGztOketDjMhrxoqASoyzxObB/XE6/Lko8dBbuUECIaK4dWrWviWChU
jUYQEL3YmecDqkFjtkRdsUn3J96+/LGjGgdwW5YySJ700kVitzq1QMJOpC1Zt/q3Y2kYZbP1SMo0
ulG/KQoIRHyBF45dycIT3TXI1rTEdSSX5CLyJl2qekgSwEEIKNRa4WDrExQzU0dOBwTMUFe5ADOb
bEnVdypGrQuC+li7eLLT0Hq5I95wjetYsTEbTPGmueLMpHPr2xiPBak4Ljit+h7koenkqGmCbcbU
4XWcgQ9iYV/F3+wQMgtTP5Zb0Cb7VT33pWeKonryPkRxZVPji2qWZxiSWoDvFLPOeGXsPXxkz+TB
lARnA4A4VYciYwQlAh1kAAsq53yA2DLSaiP8oLZKGA550uQ0gpxqNXU2x/Mm67mkZrKKhv6Cj5mE
/HZgdgx8B8bTBRrMxhz+inMZnHuoAXxAyIEnk7s+t/Feo2MziS5BmhZkF6ImxGYaqmSyheZr6zfs
cmrBJe3aVKOSiPmwjcUG47LaqxlIw3k2OtUGCO9p05MRxISAEMB+BDXvrmZf4qCEq5pFOoVWK2an
ago9ZBnFKO0Y9x7DLdRrzTY5slz2WSeGEZIqg6qJAUVRWsqgMUmMzIZkV7XRgaMSBAbA7yxiQahQ
fXUYHzwPcMmp9bQb9D95fGCpALtnbFkCK5mred8xyj0RJJtGdGMrLW6U0Vy4kCua7hZb64xElKSp
mcSXVpPckvC7os5fsnSqOAMyuDk5WzqMMCZt+Y96bRfRDfPcrVX4uWXVmmXhyVd0jVW8jLSgbUhO
FqY8qqPEHhPrP6hFX2nLyqGakBKIXMpcKT+GxoDVqX27Qq7YLR1TuwoYL/qduUbBqPoTTSWMbci7
ww7nxBVNwHer8FeANRkbPu5sgpOaCvXkt+gcum3ZmbXPenRiaGaA8klpR+8V2hR8oTBqhZKtS22u
7lxghG7Me78Ksm4+nyZFJ1qX+7AkH+Fg5E0Hyu/DLOu3jmvRbiZBCtMj48beu6OikqSlUto5lozN
XAG0kOH1KZ1S8BadVyazvuSnK57ofSbwCp2wRjjPYpwSYjJTlt5PHAl1gLTFaxVLfb0jbvBBwEG3
CNnAbuXlLIzzuduOD1OMVZddWe+BHqMnWtM1XWhWM+Pek+7HazeLu8x0oDxihKPCYwSRNv2SKUPs
ph4q9Su6+r7FLuE7e6QfwR2Xnco8v7OnsCxln6VxI67602VlHZJikxxiITHwWfLYiFfN+9t6VV22
HAX8u4hLVdt7SzuUermESESK3R4v0VpbgXP80V6DstQI04JI7I4Y6FquP4EVdWLdmHQp7VvaLN43
w41xvFh97LmAYwUNoRKEvVH0NRdtoi2BEz0e6USOWRrxT0WcLpKOxU6JyzYwqx8uuZ/0z7vlU8H6
n24h4k6S8oTbdzRw7AaAbHpa7OcDwo5cQ5b8An4j/f3C6g+QGzdshNKxIx8EBCg8aTsgLTDcwvaQ
avQSGJV/wELPkk5zot+yGqtRv7sNTuvnUJeQpSGbTGOHE1zuFevyes6c4tJTWkYZi0j5oUIiVo3D
Hh3uTTMEQs667KHMabYYvfP8fwRfqBOFOLpjY/uMdYi//21oAxHyV4pzQJKFdqd/zMFlLmqv5vPy
Bxy3qj/umm1zDdnWkZLHIyouegkLuiwbdaF76VWqCD+PQSjFaX6uPRauZf8C/4Zk0Sa0D0ATtTZ7
UALvUkM4UUD8fP5LPxuVfi7y2d6CebWekAM6vidVGc6pNtmA/7mOWmotUSkhjGEKCB7DLWDvMz8c
Y8dJe0xPcxpqoFFFNuApI2Yqo5aR7E5AcwaYyJEP3725fulI13p+azMAHGCDLQPjwGFJUc0rkkOB
A5WDPrQk0IbMZ0k++4vw0dM7ErYOZL0H3o3trY4yBeAWlB1AIXUoETrM5ztmyQe6DR5fdx0vS2ek
Bvma1Eo/SFL5GCUz8eTetim0PeCDxx4wV7BCcYTIbUOMsW+ava8aWhR1855VpMHp/+1ml5YVnMiA
jsDx8JRtX5mHKIf4dzGeboMsPafcUuJ/bmHhUL4rbM+HOCkwS+n0tpz1FJtzXH7wHvpa2a3A5kn7
TdzONTNNVqk3Wcj4aJxPk5xRhptSDqVx0Q5IaFmbHx82f7kY9y5PTfg+bUwaI0Vsrzuo1egPmpCE
dcJ0Fz3FLvXP37//z4IuDVbcdyI0SO/Lj6hp33bxiwsRuykMuDE/+kYPjC+mxK5qWh1WRKkwr8TS
biT1oMBmITAbF8S5I6njLSSSETooed9MHx70CgBaoxSIwH2vMuWlmvGzCE8C8NtQP6GuMmFDUOTf
yKd62l7KUB5e69r6C96D07XN2QhvBs2ljFCpP/3MNYiWppuvecSAVEG0yG5uRHl4uUw+YufJH8d6
X7XAN1QdGqZsEyg0ojPZQz+gNcqAbgvJjjGCJFtbR5/gH+tbrR5PyEPLHWKi9Vy5raSCFcbjoHgN
yvCou3w9UZ51MPxqZ1YBiQZcDMiclBJBlxMjERzTh35zfb95M/MuaLWAj5xunf46lmCOnkYltazz
d2B18uaZPK1N1IPK8ovw9Cug+RJnDZoczH5lZHDdnwm7J5zPAn5CY8rhdWmjOSycQ4CsZ2AczDOb
WhimUVXme70/qI4+enobSHgogYB/By8e9RZWUuYY+I8pp94Hpqz/BwHVcOOOfZ8L6N1aOmgJ/xry
CfQUGEdEpkrtG0Qp6vcpTLazBrah/Lj275ZbgHqlYD2jpccugt+wQq4hfbNHGruM+bRCOBmXk3q5
PXMJdJb1UrEg5oZvPP6P0LG84Wv5QKEZSQNG00B2Rmdi/Zeahyo43icjXv2IGwAkgr2qfMgNLQfh
23t7uTE8pi24kCTzrYf7xv5hpUj+PLdAEELkAzedxvlR0pwrh1xFEkvmZTsHIzQYJ6gdnUdIVrbj
a6NylXJGZpGHsCOK/NWpXPgjxTefbP+q6sDyLCJJRTw3Wjn8XLcA2Qs9RNwfqDx8YbMdBYb8075c
EFPxxflUb4Li+Wkg+kV0xxDNLe5Fr+7eDMi+2TMzjT48gIeRk0CRla7Oe6/+CozFG8EPoIfpLCZr
WI2ZFtIWMTwtyNw/McCJ8hWa1rIgwjDYHmnDJIi7RZgdIjgCiHDTuzf9BT/l1LVABC+stJ2D+oI/
KFyigEID0M/em/GBb2NTMKmB5azW7BGbMl2doY1rgrGQxllqnoZ9eP0rbb7vDZIviD21u4t8gOfj
eNv15YBxvMRjC5uUClR9L4a91egPZDDsqgtiu2VwIdhTcvuIPE+0XhQw3gmYkpeUpFkADy2N3ukg
QU90P2QzSBhLRtqTZcE7TP2HVT84hm13Od+IjKlNXcUpye7TxuDTbnqeREYQgQcDK3L5pf4JQKM7
soOQoN2T1r7iuGC+IZZ31ammUczdZu6a9JiEre+GEVqwef57jleJshkjdCn66Y/5C2oDZmyEm43f
odq/TzK8cLO+7RdSkQZr/zeAVAhhFSpauWCfTsbNtbG9eZ7gGjm78eWcwq0Aib4vhm+RA5Q0IU1c
GxQcJrN5vvri+6DyhyjtoJ3x18euVTp6LfK0P0z7XoJ1ag72wyKQsTanqItLheWfGj6Nw/+fLRip
0dJ0S9WzkbZaI2E29yd8a5RmD7fKvffNz+JcCv8yjAAU/nQa1eeZ1MQjM3vJ7szsIW09QAnK75B9
eNhA3FHG+Vf9UQN6NnDWd9x+Y0e1dg0DLginY7JYrUAjxMasPEZPZAqFKSP4OKg3TiFnilG7srN5
Bv38ZN5t6UYZi6eGqbOTDTwhhSRV1fghHoCOWurxAnkLyG7YU4BgFZ1f1ZrGOlmeDMC1wS/pKOxa
j3otJwD75EMfzdnypgdvLKK3VHBju0WBsFa1pq2KVGQXSsTzyQjCPxFZZhF3ZdNECbBgPyH7XZRe
sBipa8MIrB5Et/Uydvg6x4v7cWyyD1IwbiSaHIK+0WAYBUWihK+tFj7gF+pGnM0LUrSYubjnTL4g
02CziKZ07NnKk1qcDr09+np8BFV0Nmcka8Sl86K7JWNaHRy+JQa7qqFEYACWJhgmd3ZFgpEWg7lr
deaDpeJQGWGbzI5LN8Hy41p3wIVM5gsKNbzpc6TGveuvwS86NWIt3dZbtK5+0GzvOFy/+FgVrmNv
X2N/BsPxh1BQ8z2IP0EfhwM8tjVGNXiqsgYv/NiSpVlVJunQRyOjt//7sXTbmTkvYj0oMgZqWgYO
Uucm6VWka0F1USrvloaUm9aRewAbCyUUpPaNVmGy2FQLf/adwWl4YPt5X3aPtCGKgY4BP+PFAPax
XPzMdQ+CP8VRTkR/e7cBJb15tOH7zeJ09mViJAZ+QfTHOhbzrTT+hz8KRQL0FvBd44msnxToQDXX
HeKiPCgpw553j1od0APzQgbFZcVnlbJe+xPwo0dzg7q8zHPVevWa2ZLLtdpV8j3RM46MDvlML+5X
E/8Apg3GLwhNhYe+laO4ug25FBmXm3r6GuUe1HxkjVrcAFbn7fkjzRMYRA4rNmJG535kFwQdbwqY
EGnyFGSaN+ndas2TcNM59biqni44ipQ39oQZI6+42kE4ipAF0SpKAuso6Y9X34/CnPGSk3nnStDc
hh6B9QVO11n81qdKu9wibOpEfW9YgbgSqJBdYjC9Ida9uYpNPLrZiN81GGsDmJt7tL9RwV7MRLk4
dWaBd2PW90q5Gepbn58wm+I6gDiq4+FEgrLeWO8RLoWCtz4vRjXHyM46zRem+mOolAExmJv8H0yt
HPwklBNnUdnXWuPK2brXZz22MSXvXoHJEf7x2jx8MGk39XUVy4YPTKp6XbduOWgwueZxCHLrarN7
ipwJFBK/LiFTVxA8G0Ko6ofmSw26M5LG20NYqw0xTIqVH/m1d9IBLQfXHKDOtQ278euG93TerrCf
oGJI2Qh6o2uRSAyFbjDIwp+aMf0+KZegruwke0HsfJpSFzGBTZySJC1OOgjEAyMp5dP3ldDmhDNp
pPhJPlT0wv5Q79GzMz/16UPU7PslgBu2iOXF93wtw81/+2bhmaUGf1S9qVXqVQ5f+FbrNX2rIjrt
5d7octMCFPvJJbT/0kSkbowZGh+GlzyGOxdoZ9sxEtfzrtJUB7xCu2wH7jQAyPQ2AKOvCXWABg7H
QSdjv9xbcmHiL7WxZugDA4twL9YxuOjl2iySodNGKPY9v4BZat7flHqkFruWQ1frl0fSCVfFquVy
CJAMiBtmbpKiO/gyyueHlohv3VuwNI3LHmmaPYEn58+4YyCuS50WL9JvJ+U30hiCsWZCn9thl+ZW
xDzUrtC20cr6bKjMi+YH9kikb8QmvHn1dttbSc2M5LZ2nSGB5wlmXzaNYQ2HKMV7a7Onpz2coSFO
IG7DW8Gwr4nsOj3KURMRgKB1EKyxf0/clw1kyoCB5EwDleOwPRsmbsU7RqWSdWVT1Fnw2KY/BZeA
AUU4kqOEfh4lyYY/7E/wDeVKpk7IiBC9tnXjHcTHdCEcCGRUtvBW55n8UNuKPcznPqRFInKwE7RR
P2FyGPrMkzux0j4Vi/Cfc0GHddIhT/cAdOGMXyotlne7DXGxYvLcliU+tkYLYCXoNb4yZC6s1faV
ObbX+iQpQFrAgED/1sg6ugd9Mte3jQ5qIHOnfHQLdwEdrw4bSBHfp53ZZjbF3o2G42bmWoA7HJ03
45H9MxWc+JBONzusbxgsjterXbJb8vdswIdp3kjgOB4tCwOYHrxh6WJbamqAqK3ME8WLDE6nku9Z
o2yKpDA3XEKSvbAerIgWdo+2fIVFibH8CyA/FWW5u856zWkHk85F2Om69mqGCctjD1F4oIhFEmdL
JCuhfYqA2ADh92exyzwYh6aSyL3bJzl7r+a1jugbSo9zNaqqD1s2CI684Y0xIThL0oyqp8QHPtrW
v/SQHBEvZ8a/07KDbQPDFLn8L6dJdKJY7xGPfPAvc3qnJ1vfr2DJTwN1g4oGpEyu4EdhGWjqiRzw
rpB3ZFcWsmpVCOlxAZq8Dt//bICBt6tVR0Y3+FsvslfHEkw8QeG9P5MRL/UT4nCUKncFQ0dQmqb0
k6//qjHwyZGjg9sxw96741uMslxDsV1+4K/Mn89VyzMXWtsR9KcvJPJ9rNKMcOyvTpgN0re7MSJB
M/YXkeJ546/XypKuvRv+v5EPyhUglpPw9MGzkC3s8PdOLEtXGIWdEyRkH39lgHJ5zDlGUsKYVHvx
7YNESkokBTEeyQ4s2zyAHbH8tQFQk8Som/wmSj+Qr1HbnlIFarOFXlGvY+PttYQwRmd+sz3I/9WY
WxVRiymtL1WkpfH11RLgBeZKiFeQ4uD3DMEibkAE0gyxW4w7kf5cYNOUDpZjcDOBtDonGx3o3vB7
yA9mp/aj8XFIdnPQrAhcw6+p7rSaRJqJe08ob+i/ku6oTkOQ6ATzmtVqf+LbEDHkhlJM3uqkQBnr
sqSi/MZ//9MPITybClbIGJvtOwLzrni3RaLOZC9SZbPNfcAL14TW6zTcGljF8KAdXNQh8KzDJQbR
kcfS9X3n7VhEOXX7HqGAYhMrZvoj+c7pr8XXN0sYq1znk2nLWH6jtkKvyXgfeL2+kBsfV4JcL8h7
5Lp7ocpS3V8WtvYVgTtk11i7+z+ZJcC9TbUAyP0MErsBOHgBCpXOENs8s6vlYboufy4xBeZuFzhU
noK+h0LmaH/B4NRFi0Ke7jsJ97xbWhgb/7KK1SgewQ6d16oowAF+5zozoGdPMUZ7r4DgU64pZW+j
CCRXM+RuiA75yc9a7kbpblgE1l0pmI8JqgAg+b6b9ri5fhU+3pCvg/SBHpFU3NLjItQOWrbB+5Ua
poZutc96MLfycq39AXxNIkkY4yCf3pAKic06oChiQGlCDWzpdq8u8Mr2G1k03HiOG3MbEVW4BB1c
x/VqXaxVpmA3F3EUAR1i1xYKkH5ZXd28BQ2bwvTHNJQSbM9NqelR3xuUXLheHE5DUzyiKmvl4kqa
r6E2j6MP6scMmIOfFH2hETkVocpH5Q2lNjbTAUnoTlhjMzpLqPELIUTC5i7DYm04m0qziFOrAv3c
fqXBBM5tNxjtWE2jMyDGjHkCOA7z9IHTFUW4OE+ydgEXf8kQJIJsGg4gnTPyt80cUJe7oXdA5Gll
+jaH3lVuSuH4vcU7bfgBQmPOitCk5lUJVlmAt6hbLBBM77AxkMMwDJ8VGDF3mtFe+CvezBEmP6Y6
wbEgz1u4/lm4VTEeyB9w7wSCHq9yNG2iU04wLUh07TIMJImZL83lFqG9NsQIdX12aorKAB/sX10a
lrnRcuWWGjaddvk6p47HlUGf66IBprjzZiF5Cqfj0WZRqzpUvhGGvD03SbMEt7yJQ7vUR+ohJLYs
B/RN+7IC3ROAnpzFsGGTWVvjUg9YSoNt9jJuhU0prMHujQpbRCqbsbkx8lGZrEQrnEyg07978Nwo
ECGqHYAVyHUrQTZRvSUwNdEnNS00y5LgGtHFpaENnwQrUN6LxflyJQ/6akbGpjZKneKfF5XgVKbT
9HqAbvTqu6nZ2rBE5T7JEJ00pzByxiqeS0ODV8lSmZCUM+scFEePPgt50xr1UmQ7OhZYjvJwsq7r
ov1GiL6DozUNEb6qSwlAU7Drcn9q5j61+0MWlwr+nR/Ye7Kse81HjzZO6WEJjqm2uz9e/+6n0453
qTNeJ56JjPBE/Q47PxKAattsQQlIuxfi4d1AUfqtRuHYGbMlPqNZdN2dMjXnGYYbEffp/y1LHgpT
A9I1jel1xPDCBY6NJQJGVX+cA8UKHzpxaMr85hwjHXp0vw18EJcJDrSxK2ZhcRzk4qxIyCMpAxPG
tg+FymR3nb4LlcFIAM7Ns3nCmlZSLtIrO3NydhTNVEhlwPsImCEyA8hI5hVVcnfVSwJjR627ONE7
+gsh4Ve7wXtPDc77RvxiQmY5z18/T7O8XLl4odn3AQRNMBCF785PYRFpAgqdJiFlq4H7fjgUlTxe
hYz73K8sKACjTNIBcVV8jCPX17NxHlZ5sk82LO29CaWrAnlb4DrL3MFZloLteMpncbEzMtpVQzxk
yG0jzjK6JXZYazkV80Bqt8vPQ2DM9TvWJZkYdviEm90k35JSiTrqKlIvc7eOi5O8cakP5zIn6yFh
9PUEsFxqh4TbMPkg/mdHgKc3f/znoHzdwUyY7BNu+fzJ0SK1h3a/vCdpeoUT8M7sUMriaRx4IF6t
ie5VjRVdnOcGpdphBIiI9S5N5NOLQ3bBvTfYRt9MKXWmu5CCAmy6wmN/1uWZyIRQfVu/atCJENDy
voQQrPfvD8U0I6cnzA7XFllwuNE3M64D/tVlDH1Upc3EaY7W7fBztHxuwzr4irAd0SAI2R1XNiYA
p2pen9csu/tSNi95iIAYh35G1UL4GOUDrx6z+OB3oemkPHeoBt2HImoGRkJDpOGA5UjmSsr1x5XX
vu4he5g6/DVYrYhbSqGYZtKqQZ0wCeNvenna4qy/KI5PHR6zCiGCoa6UTY03X7Wjl5Uk5Ckf/dE3
PPSeWJVNXwTi8+sNtX38sS9JoO1Ex6npEJkaPIWrA9GB/o2paXQubu5+DqsXjgiKIJm7IxM9cecY
W7s4lBtIlx21uvh9GZPXTWFOshWUSmnZfAn+AHdd/ope3/bgMPXLbNeeWNHrwnM8C6zuVOWh8VOx
sZ9fuO3g3XMal7NfEZEHgxnL9uAdaiar6EpBccH5Yl64KXVWxeABV5kegfQ0VWGngTwXModgxfXo
Z4DA0aoEmZvmzBH9ny39f91t4zg+/FSrGVLKXa6P7p02/VoK+pmDG0xQPkKe1npNR3iBRQuYrNAJ
hl6cgtSUtEE3KFImYUdMBKPz2+rRaT6JmQR/s0bTsTG2StJohjzzV4HdcSb+R1lq9dc1X7qbKk0/
CWCcq0TpuxVGDEbitIJVo+1KhqvPwPxPDiiDS2UFHz0+K+Rubm4JxomCpIvZfVUIJtO0SDSaliQT
n1CAUfkTPpwb/2dPVuy+xrDXBhCCWymfK8MJGvX4F6/dL/ZlvKz+z0kasPQGuLsCeQ2ucQADn9dF
nqhbZzChmZD273etMP5XXAZkCip+RiynljWXJhiMNH5We10JQAP6vaUYNJeF683bzt4xc4tIOFIG
BReulG3rM/ZBuj0zeoSty/MVsLDb9UAZjU6cEVixuRKECuyZ/jMkP8KvtuWkmJoVyoiWfpySHQaS
2IZtb3y0t/Aui0BwM6LsukKTbrhAdBRyiR8Q1V1tJS2WI3dEIs60lQLPL7dTni4FYddRRpK9l2wC
Coha7XBUnROuets4YMiEnTlUA4xFpsqdarKtnyEeAyU0n1J0gOunF3kSD5oHfcplJGdc8Snb3U6x
T3lNYcE6J5VklBL+UYoc/hCZ1fzdgwqlDvvTdsjjVQfVW+t/HKwBWucRDZpohrY87227l7N+Jz/C
iVaLyGm2gwOLVErAOsVka4waLTjS6VxWO+m2w3f0hfhDYd86dBQecsi1ixKfeIX7R2mRfvfr4+u3
0wBpUtIWgySHL8peJwtE+9VC2yPerLFdeY9GrqUi2FQDfReDxQKRS9UFoHu4A68fC8+u1ynuXGLr
c24WAi0Jr/jJ6GmRQn6U5u4EBqVAyWMSkBnBVOFDmNx54gDr/rtgNO7PAkxs9A81P/aUHsMRr/hA
pl6+Liq3+CknJFHJNBzn3CCz+fNuHhl64ZTeMze+X6W0oWb+3QjS8lTWr59/USreUI8l6ArNj7g5
1+tqPAdCyB+09uCay9x78LIlnHrnek6jf53x2Ris5ULsIBZpmqxqP01A5q9uIHXG3amvq+lBVmPJ
LeErtqkoGg+wo/l8VnEV/KhLHhiob79hwm1pIfRxumGChWuaQR28BJHa+xTCyypjVUaMvmPPTLyr
tGXdrUiMfbhajaMC/Tz5btQxjAnVrAxNJTUECrW1BS0Wui+I0urgD0HUn+BWZkqHLKYTDgbWnWsd
oboU0nqZWr/yZroQiJBJJh2+QYsQmSFqnsOGhRQqFKn01PKRHQyvMS65eKo1A6I2o2fe7Dm/FBmO
dyhU2XC/5gFma3XwzmFm4BRk+Hemuy5S2xD4R9Vo1YYy0lXsOExWf11Mc019vlwYtp5CYWDVjUGZ
l0Uhqv+AuE8ER26l0wagPGhFRpWsukZwkAj5ArAQbrPLiuw7PmFMOiUBuG9NfIKwKp6W6UA5xlvm
tpHOc1B6MM/n1DfALZpledhKgOMjK9QChVQj4btYTL+QvM/HSrgQvwfuT0d2DhBhkzPuMFJDnAbI
2Bh2tj4cviM9q8KePXcrLy6vGdFeCOrExP4PhdPIjupU55I+fEp39I+FyZXlvHvWM1Dco06c4lYy
wnD8SghrsJxA1xyvym93SRICkNjqwY9LDlMTaEvoxYY/2q0GjE8NViVXXndqgGBgP8VHEXO34vLr
nvsTyiD8B4JOYt2mVXMCYTyH8EyayK66bAFhObQ92VPyRRV5VS8EfzVjV9ZQlSocaUeKG453CcPX
0t/cVqiNiJOil1hxef0qnFFwVkIjZZ6wKCUnLt3/ddhcRGc+j4vm9g8poRfpxdQ7X1+k76SQeWWt
8zw8fcb2HhjKJJetHq7LjJkPmTTf5/Jt6FhLWklRlK1tGi3Zzn/qAN/oUE6K2lNN4P/G3OkoT5YS
iyS/U0XlEVyj5PGJnDeeYelj9c7jsahW52I5Xfq2RL9BiSVC1wMdwPzrtbfPG3nw4Rr7rWG4dhmA
qXOGmYM0z7lUaCr/aTGxXpQH6TjRUMboE9bXdTnbSD6NpWihSjrogR2zlIJhTt+NsnI4zsBU6ZTU
JeRvQxYiXisNXpA42oErDDb24sja9Q4fl0N7C7GyGfVg1CAazBRncsmIL2UQrN3Uq4IzZtIWfTGc
Fl51eCmiurmVmHmW/w9KNkEYu/XhiJPgtIlvVEW1+wtkgSvBi8bPdXrpVJPhFgEdBvmSp2pIPhHC
cppDUTIFfsdpq4ZxHs9ygPFS4kc2Ez7goOxQngHl/+QEvVb0s5Tfr9eR+Q719gmkquBuIjnorUmD
nhWjMIKIQFtOBD/LjIEW7KNEaUEid8LagvzkEzh6gJlD1jYlIjqH/Yy7vz4oppYCqxm0OAw1K6UD
I9p2k98kLiZak7jYT8/02Oj2zZTPNWJFj55hZ+qjU6IefH8lTQaReouanfa+hOO1JDoRZ0/PUQ/I
P8rVJKw3L7B1LY/wrkK1G1RadYk//7dfPFhPtBt8bUWvQZCBWMsHdv3d6dU2ohxuYxouSjEk3DSE
lujAjHyS9KgBMefnm/r55FWULt8zCXgzFHYWlT6T6/QByqILSv6uaPfSNg4KQFOSvoCrVarbeJLA
Krd9cM8+jQKI3wHHTtVHpsUv/d+XH8TYGIi8TuSVA55FTGvkZWOOpbNqB2ocyobccCUdzYnyKMrT
Mp6t47YHZezZy7urpMIXtDvuJq3cofMFBuz0IGFYIsY7jjfRrNNlmIes2HKsEcyfaD/yGx4xYVEb
4DCJCFgZ8GZYZ2m8aeOwTUsuFqqW4tuhRCUeR6/zgxvr7Ty3GlbnrNLWYfH7X/z+Gfh13ION8cey
RYLtjfqB8SCZprVk0pdQOnV0hjUFvkKfVpBa34O+iuufalwC2PnB/zmcJrDrj57NETWaJCdckd98
UjYnFNEY3VrF/MFZEQcNE8wi0vKd5IAuPklezPkkMD5JsWQ6eXSfgCS4+TWfnjo3f/o7F43Ixgib
jonOUmFbwj5RSnxLAjV0Gpx1hCxwAYEmF3sYrvrUF2qMNfSvWXVEnMKyYzVh6v6u8JwLYlIdoN7G
MZh3yPvqCxrKZLLYEpTbglXPUMXm5AGBjm5odCHDRODIXJgwY9YTHdjW/p0xHJXfpgUIB3hdLkTA
RLr5HO4THyzLGJ+4ee4HBZxin3yA7TBptBM5mzhTkhWtVyncXzNin7zdOPaTlIvGxFYAwxtv5UF+
SdlJBy32OCkuH3id26vfDEXwsHaH4gjiFAk7rRJY2efF89UjRonvhIvyMk55oKgYbTCRNWIPlff+
cM3Hqv+VRastQXmmlglxxGiWU/rlvzXitr8HNncloHxL0TrNLDl1cgasNCe5IQSd2nP39Xn0dHNj
+71aDbxj9IrSc8gtMoieE9djebfy36/O4lnexsmACzvlOv6FFqtvDh1o6KQeSEsrPnrKb97n6GMq
Z0ZIOd6h9laLnxwYATRHRXIWBtWClhU/DyxMSeYAXSf+wH1FlJGsMAS2Ed3qv7pAtCycM3uo8H9W
rTopdKeHGz8naGFMGbaAA7WeWZD5vAdvmvf+azmTaery246figJq5c9AlzkPNtUC/evhR7bfZPDq
Zeoyo2o2aUbJSZuAMXsKOlk/8I6chep9RnbwTtCDyL4q27h3TmUYrb4wG+YGyKGdihDXNdhIOliw
gNPGva8tvQAQNdIUzlaV8PJMlC32cghI75P2HR/QzsDB5hTMMUgazY2zDhDO3KXlgD0iOEIt+GdM
mjyWjGGtrhKjPFqRZaZY67pwnmiaup6PDZdLoNIlt9emP2GUgVXiYO85MoCDgzET0vqDWATjYO6Y
s1sMZW5YD0OOtJSh1H1Y/v+yMY0ZqET1qZYjqt4CiiohtDdu4rxyGpnJjCL3gOd0RlBz5jKX7fuI
uIKDor1AkEhB39Kg3A85Awo+Dfq7Tx4ZDQEenTQzBo2ABxzOX89t+Lc2Unn7oUYOGgrfOjb8mnjm
3aD18/hAEXt6AvvvQr96IPjb0oONaDDsis0JuaPtJapiX8BnBADpih+tsyxOFvEJY++Af9FVWO38
q0NRs9cigsm2t3aGxnHjyN17mYp3tF97XQKUPPQCYU3T0ySBr2VCR5elTDJjzQA5meth6OyQG85v
KEquPC0dxDx1d3Hk0jxBSk7yBRgsIyGZTMsmXft67X6WrD8rzghP8eVMPiUBFzIkcAd84s0B+wF+
y0ruzbor9srx3NGo+eprSzQa2KPLqZaP29saiB648DFRR8FeeUHKs0Y9rPJcvTWe8gn3FiFTECVh
qPd5M/lBIsyAJKrvdkqXN/VXpi2NegN/rcDntLP62oLhRDsz56Bf/Q6BcKP6kSv736hLZ9Ge8LGt
K44ZD7R7iwwR0mjyjNdEGzF6ByeTb6QG6Wkz+oIm9wblcp8xSK0Uy/dUL93m6JPDJYvENKONKkFO
zpEoJAZyK8pc3kcJHB06e0/ygJxaJYIrZOw+fpT9c3bXJE7WDFJGRfjovM9fxPpiIreyX1jJHjBy
5h/fNZ5CLpVjdjwafOKEtfBzLPmHxrdzRd3CxkqY6JjD1hgcHMHVx+4x/ncDZjlhAniTI+aM1byl
Xbjyd6aw7PqGGJTUiSgpTaDbEnoX8shs5tFgnm0fpEsNBu3c8ECAq+sticNYAx8fsdMnzQ2eKgp0
XfWONMOIvkSwkquR0t772S2TObhXaAETpL/eSPTQZSunPubOCfQS2htZlv1Hdt20UT9Owoyn6Dmw
SkcV4AgyFWFaYh3cr/HwCFmeWfsn0r1L02TbcDLszb3t516WDPCsiBdnAnER5lApcFn14oS0Td2g
Nax7VE1icu64X6p33hYbd9nc7Uz8m/1TPIDdzk3GiRDOp1DdXlSsFU8JJl7B+FfgRdCKWQ7gnAmq
8ObuDcE6mONUJ25xJKLK8jFeBOkjaUI/h5aYR4ADKWx1+l2+llkekwCw7ao69tsluyJYpqppFnNR
Hf8hhPu5kpPAujqfnTgL+xsQCY5cXWKrFkqLBwsFyVrvQmUhOQIC1oWIUlXb+ydAhElT6howKVfw
PFr39eLpxNRS+LNKvY8msvci1pn9KxAgminUPcTGCzceDzpM9Y6GF5pBSgZzhpHtSopoIa0/o+H2
aSnb/5kiauZ66JmKaABfXCQ+HRqwe/ce7JTBrmFGhkZ+UEb1nUgMbdVolKe210eQXNoNYe8KLkgP
bnnmFjINZZ2KfoNxJFo495uot+RL090jZ22eAaPfOS98SDOoX3ZwD/6OCqP7Ai44zVG+COrgNYpu
4MVZk1myN7YOHg+0V7r1s31NheIdwvL3yIjyLS+KhdOd815fePF7h8WMrb1BjbQP/HFINq/W37CH
EZ+aPApJFuz4y2RtUVKukfqGNOCUtUrFqK8TbzW41hbLWJSpuNORDXdUqn62TI6/ov4i03huO5+5
flQVpoVxB+fxDJUfRBOPRtvUpTaD4rGAyb91aprlXAnm/hgl/+/mQCZSJgB9cU8qWmKEGB1sJEAG
oCsoRCNwBmIbZDBdlj5Qbf3R8RnlbemqqqjiGYZJoiyZ8zYD0GwwQQIVxMtjCSU+uBwEOzaUjZGU
bVP/pJlSj5COflBejBkmEmpSzlRHOkuedzIleVNZcDLOvkYhkr9w8/m5jBV+v5IcrZGBncAZ6dLF
4hFxJMHooqwXKzC2bgxBRXCDy7cOoSW6x1/9HB288mNxyOrf//bQFqs8cqAHY0IUa2UfXVp35+VQ
QlSIRjh1mbIrHjhxTZZ+MObh1BtRl/9PI+c4Cu91EWZDGvmsiMAld34FKpRKpV6VnTDDhxNyCvdr
bW80du0jkpeH4Z9KmKG2t9zK5y9vhfaxW6aSu8KBTiJ1kspyIVz+uMYN+7dajHbjpRuW41A3M8hh
1hZzxPYhZFQPxhPru+yjO03DCSXqInML+rzrjrYvGbvS/jUOYwUndvKnJ2fdBro+jfrkWkQV2tZB
XztOF262lhy3HcFTbQR23WH7/w4Ypu+a71A/F1cZyozK0NOtzxdGS0/vLvCodX1HOKUFKgK1dguA
UFNeyS8NgmZ6a72H0P8m2bRpXjF1ixn+qhqmgkrzUcZ+p4g+H8U31iduQVsHhIXpL0MvyTkxYD6W
WIkyNGPaefhkMGeeGyxWAuO4gq+g0kfwWbERUE20kNfXOnmtWxRTWsacooxrsVpfSdxFwEpXItAk
LYnyFeSfL465nzI+zeR5CC75rjyoYS1KfdJixPdZw6pyOQtQ/EgXAzZcagNv24K7T5WU6f3zR4Qt
p1tfJaLdPx2YzS/yBRxRtmvODC0MMir45dkda2httMGXZSOG1mBccjzVfDcuoCkobuo3QfuzTWUP
IBBRYj5U2oGMftGDzvVtGbeA+Tesw5FkcIKobUgBcmYVv6SkS5E+FMoElcqApt6St3ik/XrZ6kH+
8oLWazkErlIvYqmeXwGiM8URwg3k5I0jVZuL1dBVRPJmLZk8u04KOogsSxJlgRERsbkU4XbKL1v3
qRiBuSqYnlyfFKItkY+pmX+eNjwrJBU9JMAMvKIv3a6JevowVrD1MJaeuRKeCTgpy0hlmjzsE+eT
OXOnPAHBdkrMHExcpr2G9R4jzQNJyu+1FAYInaw4cm/kJZm27/OOoEVcxbn7mpDZdlRPk5mbd0oL
m2rNCXOqU36LySqX9sJfX/NrpTC8BhU2xdyn7WzKoSEN8eGfXHBYitq/KM0KgQsg3Dc5xb4FSyT+
mL/WqR6rv4BbIHgFkJAHn+TmZ2AjWg8MBDt5+7qoaQQVIAokkDhZal9T4BW/7KwT7xKA8J2AfEjV
nYmHPOE/HeJripM0bbFBhvBr6Y+mOB41KdZDkMDa7nGBNu3bLF+xxMhSvysGMtiQ3lQEoxMxv+iL
cQLkpkP9EgLGCqgOZQJs7IehhP1qxAF1j8wEn01KemaMKz2kW53SLyEYw3G1+ineE7bxsAxKV9nJ
hduRK++IOl4k7DSp0dRpz9Da1W85/AUMigYxJw7lBmMK+vH8FbloJnhB6ncgQ7T/+0VjgqvH+bXz
8/hxEC/+WqShS+qGBhx3jT4v/2VB9fk2bfFzVf4RQZDZjHpmu559ri68tNUvkZ58+IB7pNv6eC8c
MMROcfkicQYbrdrMtbMxZCMjIfo0/6SikuPtarOPLE3vU4dhSGml6dWcPfVec2lGGxFdbPZki5wp
HXv/jxcHtSDgQSlCDM16fYrbLQhTrAt5ncMQyxMhu/sOErsMeFZsDcWjkaaK58qRgRliRYwb2V3k
S4g9haYlyBpJtJvCwIgVj+OolUQB4OQEp9gnIqN9fVTf3XH7BT3t8VBh91VM93sjptMbO0doZyYN
Ai5iSsV3AMpO8Aj1A8WE/4CqI5fgkTg8deOMF93+DbG7wRhO7ed+whWf7xV3BhB67sUJsiVR+MMB
OBpFyNcEX5G+GBuCp45U842dKpVi8IKwU3ZSZyLkXqdxf8vZPNVl0zKthicZUCPgipoUE31SFS0d
5gDfi6gpE/Fogk3SZSYGPQWRjsK2AiZnCO9f7BUva1kUFZQsPCyycpbgDKo8Z2mAUgh3bg762oET
HfcR8odmz7VJA2+h9BZX2m4CbdmXYDLBzRD/NlMmnYA672PR73ox/ecr34sH3zH6uVTUrQDS0WzD
GIUBHb/AiC31qjmZRp0wN8T2CBIEO05zpvOCufVqnPyOvIvfPEBbZ8QY0DC4IT+CkcjgRFEIYthL
ojSO7TJFV0plY+Vkfm2vpCz/PaKZ4mPTW8q21Lh49n67i8ludpMC9oUVSp/t0dRAfBR+U4KwVwax
lmftL28ebLaMo4ioL9EJ2It0mA6/dQlPs9IAYGRg82M7xuEckWnwoylXURur29278rghVGjIv52Z
dlRzK8VkXM1fJe38vkG2aXTbrHvNS65V4vM8zAkfQPbQHnJsn4dtFQkirYwT9hErhROW0FbFHz2B
xcJkm+sBKlu8rw6d3Z8kL12CTHfVPcjQsptT5LnUgLiEgYNnjzQTbe/K+I8go6XiOEv4N/5sJpKj
42HRBntsdnGOTOlCkm+6qKS6j7UyVj1TzffX6+YifcEsIsAmldnGohsKmPS7acUD9Wk1J44sDqrF
dkxA4pMKYkgpCxTfm5PSle2tFMbx246ek++SM5GsdfFmebArdvUJ3DYjhGM4KYGrfn8u9Qvc9z9H
CpY8aarXfwMyhvNeDv6SJkBY6ZJS0lNi48vyJbdKM6ms7StRhkKGmmP51AgevMk4X+f6BUUyN49p
RdmotvQAARSF+v1czYAfFbjTMDwv7r0N9av17+/OaXsHPqhXYLfE3qdPDV+VYJ8lFtPMHIl1VkD/
SBrlDW0wujmuGZkh0oLjG9M5pGREqS3Qz3J3rmS9We7M6srg8UtXC2Z2UdHeWOBLEcmyuC1i5pkS
jggJIxdXxW0YGbT/jndhbCrUJlizRAaNzEXfPmKqPl58tL598DsOdkXbyAvuPga24SRuSZTQVoc2
JLAb5VYOkzO52NLVTmvUa3Qi67UBZ6uXZS5u3oFcNwx5phfQUBYgPIsK/wfacYFZL0+RQQsgZyzb
Yp145hZWyVwdh+c1aiMsTnwaEAk7Ve7Tarshu2GRb6nPUm1MKV5cfxT1vPWGcO7oVx1+uefBvywW
ZXBVAvFtnj0M4mBctWutrYOJ9aGESxjgng4SFSO+Gxk7IB+L3uDquRb82yFZDyGBU9t5Xy0xacKG
KjQwTV4jQbXUEA2NKE2t02XPwlRT6pQ9eQiylUN9kEHL5uDhxojbQo2rPRFf2gsIfm27A6jrSPSi
lZOyV7tZ0YGb5BJ2JIfU3JfUV2RxhyHUiM4SfQdFWO5OJXebiLlBZ/sPiAYf34KBoZD8bXe/2DE1
ziN8Zhs92eECUZktCD+lItPvxfGTSHjLV+ThDO76fTlzSfQdOux90DLCVLJ3nRaRvbahuQ6WGUkn
eOkKgh4xalmx2rNWMdz0K6cFJ2AHB7O3XKAvwpH468PQNKpJtha6zujTKLLPN7QyM2vmRxEq8KyW
bZ1gq2lhcxOpuX0DTtJYx0hrHp3dmheaUzj6oV2Y+Z4BD9WzjufRuDh+5a/G8goK54LMF5rPqMLz
DdwT0ylaChsMLKKUfnQtCEZCKZXrA4HgH1vS0TjX4AqGmGjAR6LQrWYaqp5/kGmKtkh3ZNU7DzPr
akCMGqDcgmn69hcQgebrJDIhq8iXLccNguY7Uv8rPW1n4WthvnZkNVMgYvglLmdwA9oN1ZIQe2dV
wLwLR1gaxVbsh2B34hxYGnWcJFCqtbyL+JmjTVUlbDUJjIUa9kGTEl3/gpEhMXNU3ocKz92q46j9
uBJ53jhVQQI9SLaeMSOMII1VOtVGHjGEFtXdLyNKBhuFHHZFl3Er29DvzgndqXukHesBN/EIjodQ
2F/8+tRmUyb01p7YllpHOjTW68N8yk+f+em3unPrs2CsbSaeQ1Y7psCBfpw0Xi8chAtTbBrMYDAa
Dj7NxAoAZaIsvi29h3G8zLawitEs7iZ/oQMVjULtyskPLPl7V8ZJ3tMVZipJo0xhb68S9XKK+xQP
gPPHRvlnCvjKioK/aha1EXH5Pzgwm2xUysxFsDi/Xeiq+0PW9lavOdxecBMC8U6HKnYBhNwpKQf8
O4ZJhz7mNWs7GMQZ86aACsAnKGTY1OrvWwpcpQ2iFWELCkPPeiLFxZv6KcRkwnGhL2/inKEL6UF0
YKRmjgJuVfBOiAXp9svtZcV29p+DQKBEHnZpxCGCBWP3WrWqvNn5zgXinLXQYA0k3BToqj1qAVuQ
PmG5SS+llUew9crLjTMm61L6j0dtBVjZUrrOYFWD8F+cHU2xIa5s92rfUaj/RLVIbpWdYd6mSIrV
icWgkjWsQacaB5+NYKQtCyd6d11qFNPq7iqueeI4yaprpGWzeQwdDIzVZkBD7uOBRZ3Id2U3+wL0
/pkI0hNOktiNLhrlq9lNzR8LgBuvr+MbjfXLG7mdDJldPWrFbpzJFkV2I/aYhzQBOGWJq47CkGfQ
YVag/v0qBOqtGupCmVN+USTwCbpayqDS6D/qjjvrW5nooOQpaVFYbHzRxmDOswTkIdB7jfqC24+G
Bl3V9JaA36ea38BBc9qRAS1OVc204bjGlKaBf81iqvWGz78LNBXlMp3QL7YTBe9qYSMHrv5b7hed
11+JmrSZEFl/dW1gUPEskuHGkHEDeKRmoI807Zt1L04x3aHnL1blcEY0Eg924RfL2W14IKjjNlV9
1FGBhn8HDxuO26xSh5nNddKnf26SSfuBkYLgX14SvIDNjmMEqKgIybdtKn4Jp4EtpfWiyqM/grh2
HAkd7D/3Q7DIfvRBtsR4Mj80SG/8iQG8cq6o6wG4wEBZoJCxNZf6UL/gchgju5EeyLI/+c9JF6Ui
AvoQYshRI+E+ihvcyR7HFfirOxA7u4o8dz0Nvce00gh8ltxhtpMfS5AV79DMGAkhWpZpOYchpABf
L72xHRoaQCxo+xlm6ny6ed7tJeDgL7Rp98YqF9VSfcw8T9KAEzMk6KcMYt8qghJQ+yNvgq17I4XE
3aonpAP66GD+F6ebD/uajx8gP/g7nTRXfztoAqdKgp2o2BIpwnC3+7zTOsJknuqargSymlgFlmKi
5iN1nSuqcT+X2dqnAsw9DDazbkKo5nF/WzOHVyaKdkb5C8UvSuUP96pxwfuap3+keQwxf6TPZfBR
hin0PpK2/mJd9cyxl3HZ5NgIjtTc3+ViuNAnUDWJIXNX6LwO9Sz1eDHNjtTEpT1bHOSbrYEsUZMJ
iMNss5O5MCaQDJ/YPgRvm80LthSPE8VkCQknJCeP2npsYmmN2aNNkVLHvh/Dqc2VBISuVIfdS1IR
C+3QY4AyFA4fjoXnuimtOd4DWECdujPGvjad0mXnSUTo2OWjpBkUp4Zcruu+UiwK6NopeUD+LFtK
642jSKEZOiEaUFklMLfaAyFCvnKATCmMRCnV9E61LChVEs/haGMJrg+vmIKS/zxrwPjG5sS+FjoB
Ys+LWZBHuiqLY81lz/0vUD0yS49wv8kWTjHimI4GyjWJUOyDAiyNS48mNCx8YfUprv0VtwA3UsGW
GS00fR2zoyplgifPY+iaRdgxG9AgN0Nbjqb/jtSp3FPVr8h3TC/wCId472O0mKS0JR+MJjUp4nLF
CEtGu3A+Ay0st9ik2njSM4xe/H5ic/asbEhY5Qhv2Uh4PtwCMq3sAY9TTshWXUVL1qQ8Fs+GGhHA
7yu8+wFyoYwj7JyNal1zeXWD1zfTzFpx+AFCCUUP4ZNN27dEv/Z4qrGlZjKJHD7fFgH4ZYswbKB1
i2kd9rwEfQQ5yHHPoxGddCWPeWqoJkiGhLRngHApwbpdosrfxLRO5lOqOPkUqhPO7dmeKAHO2Mu/
eHgUzQowkrDYpIvIS8JXJ+H2Nz4x/+KONIzF3IYL8/jkLm/neWb284SurnbYazpvfRGp7Njz7hwB
O3LblanfCeeuh0qXCHl2PWc/AHdm2atyJHoJZZHlPPLsPsuJETPGfBUn1xKn8sy6Rf2bukBByJ/n
yxS8LEaBmubbszRpfBNs46VX17KmAJp+6EICFd7fK/QmsBduWuSE9YZKxI5mVV8fCIPTyiNqetml
Q4BafWI5qpIv7bSA8k82XHLVKhfxv/oOJ+w4F8fsK5BpQFpuU5JzQGn04c/Kw63i1D5feOFVqPMZ
XO326zga2dG0bF2sc+oTQ0FLcdvB5lbujA9yYYw/4nkKnrCRv8bF939sWmyuRLATGA/8t94Z/yyn
Rl9u424iAeU+8ZympyeZU6MHtJOYgA2MzLEgfX4H9Ms+lCkMgdh5XxE8X4KgbkLomUemKSxvBjVK
hzmjnXgtNME6rboN0oFkgiyWqs63XxcJHlT40+/lJc3uEnGtHtLWffFgApEbagZ+BeK8KC6eolKS
A0ck60bXilRMVTaspnhzomRYxjdLD6+zy/+S5TLL5NSEulGR3k/YRd4t+X2PuY3ldMyGJFyFaMAk
AylucRun48paenAf4RUMjgu8GMIuoFJZjvzwRpWsIBj2N1SmNpKSRIc2SyPZC4bksBzdbeXA/4IM
c7mRpHQUbGgm0tD3+kj4eg2OVhr4DPU/mQWHGpGjUrtC1Fb4UtNSQI8e+wUKDaVJ1wtG+80lL/8s
Bt9AK7n/HfziPSLxZmlqHKeC01yJDqgEPtp6yE0dCcWeEVREsbr7n6Bhclgij6Va1JInUYsuvS7x
n3ZZe/X3hzfTNE3A6sQ5uOknCtShk+OxBpAN1uvCZBxx+Kd1Wy4zZygeSy1br2/phJDOzMSbhHKl
Obk/2izUqWPp3mKkQgvwRqufwq0H5bEF8B5fpTYMAAN6SS2/CBh07EQ1gvydGI50jy6NlJv4inNp
jxisKqdyL0HgDAbAWagF85uec0jf8gHcqT8h449JLhoESJHr9L25WZdkppRiBvZCpAoK1T/6PTFd
/Y94nArH1kKQUocst/xsBeCiyJ04Vr2PUTgj638ffEifAnJMm3azaJK8ZCVnZLvIXr/VZPgHeAE5
wPksnKv7uTD83Tlu54xevetWbzV9nCu2WzLy0VjRsLZelx8ip90VA65ibxk/Zl6jSXU0hw7a/2Ci
QLIU3UUB7XJA7/RU//dYl++6a9T85t6/L2LbPZ+Kv9d58TDRO4ja6sEPmDgI1kj2D9JGU0Fr/Jau
44Q17FB+TEpgetXMaK8b+FxC5fR8OxRTGFxfrTuyEBt7SGj+cocXXdI12/9Uln95fwNyTSb+J2fg
ksD5wByEFbFBzDyUiGX++nqN3VZxBfcwVLLjesSn0XKOF2Sitxxa74Zf896kM6bFUS0xXWoQ/6gc
BezNDYB9r2zS9nuudxdrOb0M5HhoTSnpYjgQzyu18N68PMzrx3YvUdTV5vkShlKBn3U2I1eNEUlH
UuZgKsPUN+L0664Kei3klkTPxr8UPHmWTGhf92zTbKNjNegN/b1sZFViKiphAw4Vp4wpm8YHNJkj
FqDMc/Yr0AQnhGYD7mNl1+BVEa69Bz8cNBU8bG7M7slJzEHGJShVxqnMAJtfbIKy3cRkWQDZXQ56
Uizi0eIpBjtSquycKCU8wfjnhmUGBqOi8i2I42Vmwohfp0HKzzNCdf558cqQntciVNW76TzlEe3K
Bn+DyEuku115vFgS+66MqL7dbN80K2Q5imrDvy8/93SjHE0LJ2lOOStJRmi6qRnNOduBIz10U7Ci
yv9+eb5xHYVk4Egdjt9aoNuiwDuljKuKimGQXva9g/7wXG6ZxJtj4WylvLFcJXZqxqv/E6eqkEcE
h6aV5yhxAZG+GTGdts758BE1smmjHxKU0wbabMT5F4kWuMnYroVV/a+RIoHcTkuD67C8riFMppFn
c/cEH2LrFMPApkJTzScb0+k08r187K9rZhpXzHJSKhynxayIlhweJm+Vpw+KAfHdqrVLbaXtIUxn
bpp9AymrYGc/YnCJHuSPgDeYetWRJ0LBCdtZ3ziNavuZS5OAxSv+sC1R39c7NLWtCqDFYFRos5xi
PlMTmBaSwtg6GinG9SNfHK2gDL0td32iY8Qm1VWf0q/8aQ4UfXzYsUScca0mXikc1qptt3zh5jhy
ZWI3FNmJ40DZmLYoeVnLExPdvQvCGSVviVkfwDF7I8rbZ211Y9+f2utldDFKmwFBEXF12EXKcJS1
M5IHsQDsveM1bxuEVMkupymAJpcjzmWRPgScJbdvBDNc2WIOJuPICK9IcCBkDTEAmXkyvYmd+uFK
ugRgbgY2DW54GCIEpPPGTNmKDolLjvcrG/Y6D5NHYM9NfdlVpj7mqsdPODIJwC5CZGdgj2tvP+Ui
z0qOB4Gw5vj7TXNxeQeg3/QE8TlkVhreJbkefseLr/mBoWEIM/UWVCOCvqyGxHbHhunFdG2xVkJp
nqFeMkDSew==
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
