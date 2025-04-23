`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 15:58:46
// Design Name: 
// Module Name: single_cpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module single_cpu#(
    parameter DATAWIDTH = 32    
)(
    input  logic                    clk    ,
    input  logic                    rst    ,
    output logic [DATAWIDTH - 1:0]  pc_out    
);
// TODO: 提供了一些器件的例化，有可能有缺失，同学们需要自行补全完整

    logic [DATAWIDTH - 1:0] pc_output;
    logic [DATAWIDTH - 1:0] npc;
    logic [DATAWIDTH - 1:0] pc_add4;
    logic [DATAWIDTH - 1:0] full_instr;
    logic [DATAWIDTH - 1:0] reg_out_data1;
    logic [DATAWIDTH - 1:0] reg_out_data2;
    logic [DATAWIDTH - 1:0] write_reg_data;
    logic [DATAWIDTH - 1:0] result_ALU;
    logic [DATAWIDTH - 1:0] data_DM_out;
    logic [DATAWIDTH - 1:0] input2_ALU;
    logic [DATAWIDTH - 1:0] imm;

    logic [6:0] instr_part1_opcode;
    logic [4:0] instr_part2_rs1;
    logic [4:0] instr_part3_rs2;
    logic [4:0] instr_part4_rd;
    logic [3:0] instr_part5_funct;
    logic [31:0] instr_part6_imm;

    logic ctrl_ALU_input;
    logic [3:0] ctrl_ALU_output;
    logic ctrl_DRAM_write;
    logic [1:0]  ctrl_Reg_input;
    logic        ctrl_Reg_write;
    logic [2:0]  ctrl_NPC_output;

    logic flag_ALU_N;
    logic flag_ALU_Z;
    logic flag_ALU_V;
    logic flag_ALU_C;

    logic [2:0] clk_div;

    always_comb begin
        pc_out = pc_output;
    end

    clk_div clk_div_inst(
    .clk(clk),
    .rst(rst),
    .clk_div(clk_div)
    );


    pc #(
        .DATAWIDTH  (DATAWIDTH)
    ) pc_inst(
        .clk        (clk_div[0]),
        .rst        (rst),
        .npc        (npc),
        .pc_out     (pc_output)
    );

    NPC #(
        .DATAWIDTH  (DATAWIDTH)
    ) NPC_inst(
        .pc        (pc_output),
        .imm       (instr_part6_imm),
        .result_ALU (result_ALU),
        .ctrl_NPC (ctrl_NPC_output),
        .ctrl_from_ALU ({flag_ALU_N, flag_ALU_Z}),
        .npc       (npc),
        .pc_add4   (pc_add4)
    );


    instr_rom #(
    .DATAWIDTH   (DATAWIDTH)  ,
    .RAMWIDTH    (8)          ,
    .RAMDEPTH    (8)  
    ) instr_rom_inst (
        .ena      (1'b1),
        .daddr    (pc_output),
        .dout     (full_instr)
    );

    reg_file #(
        .ADDR_WIDTH (5),
        .DATAWIDTH  (DATAWIDTH)
    )reg_file_inst (
        .clk             (clk_div[2]),
        .rst             (rst),
        .wr_reg_en       (ctrl_Reg_write),
        .wr_reg_addr     (instr_part4_rd),
        .wr_wdata        (write_reg_data),
        .rs_reg1_addr    (instr_part2_rs1),
        .rs_reg2_addr    (instr_part3_rs2),
        .rs_reg1_rdata   (reg_out_data1),
        .rs_reg2_rdata   (reg_out_data2)
    );

    control control_inst (
        .opcode      (opcode),
        .funct      (Branch),
        .ctrl_ALU_input    (ctrl_ALU_input),
        .ctrl_ALU_output    (ctrl_ALU_output),
        .ctrl_DRAM_write       (ctrl_DRAM_write),
        .ctrl_Reg_input      (ctrl_Reg_input),
        .ctrl_Reg_write    (ctrl_Reg_write),
        .ctrl_NPC_output   (ctrl_NPC_output)
    );

    alu# (
        .DATAWIDTH  (DATAWIDTH)	
    ) alu_inst (
        .A           (reg_out_data1),
        .B           (input2_ALU),
        .ctrl_ALU_ouput  (ctrl_ALU_ouput),
        .Result      (result_ALU),
        .N           (flag_ALU_N),
        .Z           (flag_ALU_Z),
        .V           (flag_ALU_V),
        .C           (flag_ALU_C)
    );

    data_ram #(
        .DATAWIDTH   (DATAWIDTH)
    )data_ram_inst(
        .clk      (clk_div[1]),
        .rst      (rst),
        .ena      (1'b1),
        .wen      (ctrl_DRAM_write),
        .din      (reg_out_data2),
        .daddr    (result_ALU),
        .dout     (data_DM_out)
        
    );

    mux2to1 #(
        .WIDTH      (DATAWIDTH)
    ) mux_if_imm_inst(
        .A          (reg_out_data2),
        .B          (imm),
        .Control    (ctrl_ALU_input),
        .Result     (input2_ALU)
    );

    mux4to1 #(
        .WIDTH      (DATAWIDTH)
    ) mux_RFtype_inst(
        .A          (result_ALU),
        .B          (data_DM_out),
        .C          (pc_add4),
        .D          (instr_part6_imm),
        .Control    (ctrl_Reg_input),
        .Result     (write_reg_data)
    );

    instr_split instr_split_inst(
        .instr          (full_instr),
        .opcode         (opcode),
        .instr_part1_opcode    (instr_part1_opcode),
        .instr_part2_rs1    (instr_part2_rs1),
        .instr_part3_rs2    (instr_part3_rs2),
        .instr_part4_rd    (instr_part4_rd),
        .instr_part5_funct    (instr_part5_funct),
        .instr_part6_imm    (instr_part6_imm)
    );

endmodule
