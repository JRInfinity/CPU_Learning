// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr 17 19:10:20 2025
// Host        : DESKTOP-082C81I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9760)
`pragma protect data_block
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
GLi5XJbefGlzMry1uw==
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
