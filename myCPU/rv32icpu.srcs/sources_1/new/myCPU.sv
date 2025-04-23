module myCPU (
    input  logic         cpu_rst,
    input  logic         cpu_clk,

    // Interface to IROM
    output logic [31:0] pc_output_port,
    input logic [31:0] full_instr_port,
    // Interface to DRAM
    input logic [31:0] data_DM_out_port,
    output logic clk_DRAM_port,
    output logic [31:0] reg_out_data2_port,
    output logic ctrl_DRAM_write_port,
    output logic [31:0] result_ALU_port,


    output wire        debug_wb_have_inst,   // WB阶段是否有指令 (对单周期CPU，可在复位后恒为1)
    output wire [31:0] debug_wb_pc,          // WB阶段的PC (若wb_have_inst=0，此项可为任意值)
    output wire        debug_wb_ena,         // WB阶段的寄存器写使能 (若wb_have_inst=0，此项可为任意值)
    output wire [ 4:0] debug_wb_reg,         // WB阶段写入的寄存器号 (若wb_ena或wb_have_inst=0，此项可为任意值)
    output wire [31:0] debug_wb_value        // WB阶段写入寄存器的值 (若wb_ena或wb_have_inst=0，此项可为任意值)
);
    parameter DATAWIDTH = 32;

    // TODO: 完成你自己的单周期CPU设计
    
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
    clk_div clk_div_inst(
    .clk(cpu_clk),
    .rst(cpu_rst),
    .clk_div(clk_div)
    );

    // Interface to IROM
    assign full_instr = full_instr_port; // 对于CPU来说是input
    assign pc_output_port = pc_output; // 对于CPU来说是output
    
    // Interface to DRAM
    assign data_DM_out = data_DM_out_port; // 对于CPU来说是input
    assign clk_DRAM_port = clk_div[1]; // 对于CPU来说是output
    assign reg_out_data2_port = reg_out_data2; // 对于CPU来说是output
    assign ctrl_DRAM_write_port = ctrl_DRAM_write; // 对于CPU来说是output
    assign result_ALU_port = result_ALU; // 对于CPU来说是output

    // Debug Interface
    assign debug_wb_have_inst = ~cpu_rst;
    assign debug_wb_pc        = pc_output;
    assign debug_wb_ena       = ctrl_Reg_write;
    assign debug_wb_reg       = instr_part4_rd;
    assign debug_wb_value     = write_reg_data;

    


    pc #(
        .DATAWIDTH  (DATAWIDTH)
    ) pc_inst(
        .clk        (clk_div[0]),
        .rst        (cpu_rst),
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

    reg_file #(
        .ADDR_WIDTH (5),
        .DATAWIDTH  (DATAWIDTH)
    )reg_file_inst (
        .clk             (clk_div[2]),
        .rst             (cpu_rst),
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
        .instr_part1_opcode    (instr_part1_opcode),
        .instr_part2_rs1    (instr_part2_rs1),
        .instr_part3_rs2    (instr_part3_rs2),
        .instr_part4_rd    (instr_part4_rd),
        .instr_part5_funct    (instr_part5_funct),
        .instr_part6_imm    (instr_part6_imm)
    );
endmodule