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
    output logic [DATAWIDTH - 1:0]  pc_out ,
    output logic [31:0] look_ram,
    output logic [31:0] look_rom    
);
// TODO: 提供了一些器件的例化，有可能有缺失，同学们需要自行补全完整

    logic [DATAWIDTH - 1:0] pc_output;
    logic [DATAWIDTH - 1:0] npc;
    logic [DATAWIDTH - 1:0] npc1;
    logic [DATAWIDTH - 1:0] npc2;
    logic [DATAWIDTH - 1:0] full_instr;
    logic [DATAWIDTH - 1:0] reg_out_data1;
    logic [DATAWIDTH - 1:0] reg_out_data2;
    logic [DATAWIDTH - 1:0] write_reg_data;
    logic [DATAWIDTH - 1:0] Result_ALU;
    logic [DATAWIDTH - 1:0] data_DM_out;
    logic [DATAWIDTH - 1:0] input2_ALU;
    logic [DATAWIDTH - 1:0] imm;

    logic [6:0] opcode;
    logic [4:0] instr_part1;
    logic [4:0] instr_part2;
    logic [4:0] instr_part3;
    logic [3:0] instr_part4;

    logic Branch;     
    logic MemToReg;   
    logic MemWrite;  
    logic [1:0] ALUOP;      
    logic ALUSrc;    
    logic RegWrite;

    logic flag_ALU_N;
    logic flag_ALU_Z;
    logic flag_ALU_V;
    logic flag_ALU_C;

    // ALU的选择控制端
    logic [1:0] ALUControl;
    // 确定npc的来源的选择信号
    logic PcSrc;

    logic [2:0] clk_div;

    always_comb begin
        PcSrc = Branch & flag_ALU_Z;
        pc_out = pc_output;
    end

    clk_div clk_div_inst(
    .clk(clk),
    .rst(rst),
    .clk_div(clk_div)
    );

    adder #(
        .DATAWIDTH  (DATAWIDTH)
    ) adder_fix_inst(
        .A          (pc_output),
        .B          (32'b100),
        .Result     (npc1)
    );

    adder #(
        .DATAWIDTH  (DATAWIDTH)
    ) adder_offset_inst(
        .A          (pc_output),
        .B          (imm),
        .Result     (npc2)
    );

    pc #(
        .DATAWIDTH  (DATAWIDTH)
    ) pc_inst(
        .clk        (clk_div[0]),
        .rst        (rst),
        .npc        (npc),
        .pc_out     (pc_output)
    );

    instr_rom #(
    .DATAWIDTH   (DATAWIDTH)  ,
    .RAMWIDTH    (8)          ,
    .RAMDEPTH    (8)  
    ) instr_rom_inst (
        .ena      (1'b1),
        .daddr    (pc_output),
        .dout     (full_instr),

        .look_rom (look_rom)
    );

    reg_file #(
        .ADDR_WIDTH (5),
        .DATAWIDTH  (DATAWIDTH)
    )reg_file_inst (
        .clk             (clk_div[2]),
        .rst             (rst),
        .wr_reg_en       (RegWrite),
        .wr_reg_addr     (instr_part3),
        .wr_wdata        (write_reg_data),
        .rs_reg1_addr    (instr_part1),
        .rs_reg2_addr    (instr_part2),
        .rs_reg1_rdata   (reg_out_data1),
        .rs_reg2_rdata   (reg_out_data2)
    );

    imm_gen #(
        .DATAWIDTH  (32)	
    )imm_gen_inst (
        .instr   (full_instr),
        .imm     (imm)  
    );

    control control_inst (
        .opcode      (opcode),
        .Branch      (Branch),
        .MemToReg    (MemToReg),
        .MemWrite    (MemWrite),
        .ALUOP       (ALUOP),
        .ALUSrc      (ALUSrc),
        .RegWrite    (RegWrite)
    );

    ALU_controller ALU_controller_inst(
        .funct        (instr_part4),
        .ALUOP        (ALUOP),
        .ALUControl   (ALUControl) 
    );

    alu# (
        .DATAWIDTH  (DATAWIDTH)	
    ) alu_inst (
        .A           (reg_out_data1),
        .B           (input2_ALU),
        .ALUControl  (ALUControl),
        .Result      (Result_ALU),
        .N           (flag_ALU_N),
        .Z           (flag_ALU_Z),
        .V           (flag_ALU_V),
        .C           (flag_ALU_C)
    );

    data_ram #(
        .DATAWIDTH   (DATAWIDTH)  ,
        .RAMWIDTH    (8)         ,
        .RAMDEPTH    (8)  
    )data_ram_inst(
        .clk      (clk_div[1]),
        .rst      (rst),
        .ena      (1'b1),
        .wen      (MemWrite),
        .din      (reg_out_data2),
        .daddr    (Result_ALU),
        .dout     (data_DM_out),

        .look_ram (look_ram)
    );

    mux #(
        .WIDTH      (DATAWIDTH)
    ) mux_npc_inst(
        .A          (npc1),
        .B          (npc2),
        .Control    (PcSrc),
        .Result     (npc)
    );

    mux #(
        .WIDTH      (DATAWIDTH)
    ) mux_if_imm_inst(
        .A          (reg_out_data2),
        .B          (imm),
        .Control    (ALUSrc),
        .Result     (input2_ALU)
    );

    mux #(
        .WIDTH      (DATAWIDTH)
    ) mux_RFtype_inst(
        .A          (Result_ALU),
        .B          (data_DM_out),
        .Control    (MemToReg),
        .Result     (write_reg_data)
    );

    instr_split instr_split_inst(
        .instr          (full_instr),
        .opcode         (opcode),
        .instr_part1    (instr_part1),
        .instr_part2    (instr_part2),
        .instr_part3    (instr_part3),
        .instr_part4    (instr_part4)
    );

endmodule
