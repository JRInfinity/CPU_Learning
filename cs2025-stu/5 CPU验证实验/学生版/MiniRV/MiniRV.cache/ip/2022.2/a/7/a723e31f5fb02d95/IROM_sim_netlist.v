// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May 14 15:14:21 2024
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

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [12:3]NLW_U0_spo_UNCONNECTED;

  assign spo[31:13] = \^spo [31:13];
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10:7] = \^spo [10:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2:0] = \^spo [2:0];
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11296)
`pragma protect data_block
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
MEccIhjuvbBO+Q==
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
