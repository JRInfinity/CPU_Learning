// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May 14 15:37:09 2024
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
8UPP/LqZyQ==
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
