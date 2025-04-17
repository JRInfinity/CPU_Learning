// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed May 22 11:45:24 2024
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
  wire [10:2]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:0]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10:2] = \^spo [10:2];
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
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
        .spo({NLW_U0_spo_UNCONNECTED[31:11],\^spo ,NLW_U0_spo_UNCONNECTED[1:0]}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8832)
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
