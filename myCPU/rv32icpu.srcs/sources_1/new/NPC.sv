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
    
    input logic [1:0] ctrl_NPC,
    input logic [1:0] ctrl_from_ALU, // 0位为ALU的零标志位Z  1位为ALU的负标志位N

    output logic [DATAWIDTH - 1:0] npc,
    output logic [DATAWIDTH - 1:0] pc_add4

    );

    // 真正决定NPC模块内adder让哪个数据参加加法运算
    logic [1:0] ctrl_signal;
    
    // 如果执行跳转指令，跳转的偏置大小为offset
    logic [DATAWIDTH - 1:0] offset;

    // 最终，npc = pc + pc_add
    logic [DATAWIDTH - 1:0] pc_add;

    // 确定npc
    // 是顺序执行npc = pc + 4（ctrl_signal[0] == 0）还是跳转执行npc = pc + offset（ctrl_signal[0] == 1）
    // 以及
    // 如果跳转执行，那么偏置offset是来自立即数imm（ctrl_signal[1] == 0）还是来自ALU的计算结果result_ALU（ctrl_signal[1] == 1）
    always_comb begin
        case (ctrl_NPC[2])
            1'b1: begin
                ctrl_signal[1] = 1'b0; // 条件跳转的偏移地址一定来自立即数 offset == imm
                case (ctrl_NPC[1:0])
                    2'b00: ctrl_signal[0] = (ctrl_from_ALU[0] == 1) ? 1'b1 : 1'b0; // beq指令 
                    2'b01: ctrl_signal[0] = (ctrl_from_ALU[0] == 0) ? 1'b1 : 1'b0; // bnq指令 
                    2'b10: ctrl_signal[0] = (ctrl_from_ALU[1] == 1) ? 1'b1 : 1'b0; // blt指令 
                    2'b11: ctrl_signal[0] = (ctrl_from_ALU[1] == 0 && ctrl_from_ALU[0] == 0) ? 1'b1 : 1'b0; // bge指令 
                endcase
            end
            1'b0: begin
                case (ctrl_NPC[1])
                    1'b0: ctrl_signal[0] = 1'b0; // 顺序执行下一条指令 pc = pc + 4
                    1'b1: begin // 无条件跳转jarl jar
                        ctrl_signal[0] = 1'b1;
                        case (ctrl_NPC[0])
                            1'b0: ctrl_signal[1] = 1'b0; // jal指令 offset == imm
                            1'b1: ctrl_signal[1] = 1'b1; // jalr指令 offset == result_ALU
                        endcase 
                    end
            endcase
            end
        endcase
    end

    // 决定offset是直接来自立即数还是来自ALU的计算结果
    mux2to1 #(
    .WIDTH(32)
    )npc_offset_mux2to1(
        .A(imm)          ,
        .B(result_ALU)          ,
        .Control(ctrl_NPC[1])    ,
        .Result(offset)
    );

    // 决定npc是pc+4还是pc+offset
    mux2to1 #(
    .WIDTH(32)
    )npc_mux2to1(
        .A(32'd4)          ,
        .B(offset)          ,
        .Control(ctrl_signal[0])    ,
        .Result(pc_add)
    );

    adder#(
    .DATAWIDTH (DATAWIDTH)
    )npc_adder(
        .A(pc)          ,
        .B(pc_add)          ,
        .Result(npc)     
    ); 

endmodule