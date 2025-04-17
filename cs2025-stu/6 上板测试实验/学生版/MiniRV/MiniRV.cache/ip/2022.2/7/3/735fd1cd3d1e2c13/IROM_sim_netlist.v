// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon May 13 17:32:03 2024
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
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
BWwfu698Vg==
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
