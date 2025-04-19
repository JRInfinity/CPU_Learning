`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/18 14:49:12
// Design Name: 
// Module Name: NPC
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


module NPC#(
    parameter DATAWIDTH = 32
    )(
    input logic [DATAWIDTH - 1:0] pc,
    input logic [DATAWIDTH - 1:0] imm,
    input logic [DATAWIDTH - 1:0] result_ALU,
    
    input logic [2:0] ctrl_NPC,
    input logic [1:0] ctrl_from_ALU, // 0位为ALU的零标志位Z  1位为ALU的负标志位N

    output logic [DATAWIDTH - 1:0] npc,
    output logic [DATAWIDTH - 1:0] pc_add4

    );

    // mux的选择变量
    logic  sel_num1; // 决定num1来自哪个数据
    logic [1:0] sel_num2; // 决定num2来自哪个数据
    logic sel_alu_simple; // 决定alu_simple进行哪种运算 0:add 1:and
    
    // 传输过程中的中间变量
    logic [DATAWIDTH - 1:0] offset; // 如果执行跳转指令，跳转的偏置大小为offset
    logic [DATAWIDTH - 1:0] num1;
    logic [DATAWIDTH - 1:0] num2;

    // 确定sel_num1以及sel_alu_simple
    always_comb begin
        if (ctrl_NPC == 3'b011) begin // 如果这条指令是jalr
            sel_alu_simple = 1'b1; // 做and运算
            sel_num1 = 1'b1;
        end else begin
            sel_alu_simple = 1'b0; // 做add运算
            sel_num1 = 1'b0;
        end
    end

    // 确定sel_num2
    // 是顺序执行npc = pc + 4（sel_num2[0] == 0）还是跳转执行npc = pc + offset（sel_num2[0] == 1）
    // 以及
    // 如果跳转执行，那么偏置offset是来自立即数imm（sel_num2[1] == 0）还是来自ALU的计算结果result_ALU（sel_num2[1] == 1）
    always_comb begin
        case (ctrl_NPC[2])
            1'b1: begin
                sel_num2[1] = 1'b0; // 条件跳转的偏移地址一定来自立即数 offset == imm
                case (ctrl_NPC[1:0])
                    2'b00: sel_num2[0] = (ctrl_from_ALU[0] == 1) ? 1'b1 : 1'b0; // beq指令 
                    2'b01: sel_num2[0] = (ctrl_from_ALU[0] == 0) ? 1'b1 : 1'b0; // bnq指令 
                    2'b10: sel_num2[0] = (ctrl_from_ALU[1] == 1) ? 1'b1 : 1'b0; // blt指令 
                    2'b11: sel_num2[0] = (ctrl_from_ALU[1] == 0 && ctrl_from_ALU[0] == 0) ? 1'b1 : 1'b0; // bge指令 
                endcase
            end
            1'b0: begin
                case (ctrl_NPC[1])
                    1'b0: begin
                        sel_num2[0] = 1'b0; // 顺序执行下一条指令 pc = pc + 4
                        sel_num2[1] = 1'b0; // 不涉及到offset，但为了电路稳定随便赋一个值
                    end
                    1'b1: begin // 无条件跳转jarl jar
                        sel_num2[0] = 1'b1;
                        case (ctrl_NPC[0])
                            1'b0: sel_num2[1] = 1'b0; // jal指令 offset == imm
                            1'b1: sel_num2[1] = 1'b1; // jalr指令 offset == result_ALU
                        endcase 
                    end
                endcase
            end
        endcase
    end

    // 确定num1
    mux2to1 #(
    .WIDTH(32)
    )npc_num1_mux2to1(
        .A(pc)          ,
        .B(32'hffff_fffe)          ,
        .Control(sel_num1)    ,
        .Result(num1)
    );

    // 确定num2的第一步
    // 决定offset是直接来自立即数还是来自ALU的计算结果
    mux2to1 #(
    .WIDTH(32)
    )npc_offset_mux2to1(
        .A(imm)          ,
        .B(result_ALU)          ,
        .Control(sel_num2[1])    ,
        .Result(offset)
    );

    // 确定num2的第二步
    // 决定npc是pc+4还是pc+offset
    mux2to1 #(
    .WIDTH(32)
    )npc_num2_mux2to1(
        .A(32'd4)          ,
        .B(offset)          ,
        .Control(sel_num2[0])    ,
        .Result(num2)
    );

    // 简版alu确定最后输出使用什么运算
    alu_simple#(
    .DATAWIDTH (DATAWIDTH)
    )npc_alu_simple(
        .A(num1)          ,
        .B(num2)          ,
        .ALUControl(sel_alu_simple),
        .Result(npc)     
    ); 

endmodule