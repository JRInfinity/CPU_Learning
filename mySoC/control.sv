`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 16:18:52
// Design Name: 
// Module Name: control
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


module control(
    // 经过instr_split模块得到的指令的有关控制的码
    input  logic [6:0]  opcode           , // 指令中操作码部分
    input  logic [3:0]  funct            , // funct == {funct7[6], funct3}

    // 控前信号 input 控中信号 write 控后信号 output

    // ALU相关
    output logic        ctrl_ALU_input   , // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
    output logic [3:0]  ctrl_ALU_output  , // 控后信号，控制ALU的计算结果Result是由哪种运算得到的
    
    // DRAM相关
    output logic        ctrl_DRAM_write  , // 控中信号，控制是否写DM 0：不写 1：写

    // Reg相关
    output logic [1:0]  ctrl_Reg_input   , // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口 11：instr_split的立即数
    output logic        ctrl_Reg_write   , // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
    
    // NPC相关
    output logic [2:0]  ctrl_NPC_output    // 控后信号，控制NPC的输出应该是什么

);

    always_comb begin
        case (opcode)
            7'b001_0011: begin // I-type 立即数相关运算
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b00; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
                case (funct[2:0])
                    3'b000: ctrl_ALU_output =  4'b0000; // addi
                    3'b111: ctrl_ALU_output =  4'b0010; // andi
                    3'b110: ctrl_ALU_output =  4'b0011; // ori
                    3'b100: ctrl_ALU_output =  4'b0100; // xori
                    3'b001: ctrl_ALU_output =  4'b0101; // slli
                    3'b101: begin
                        case (funct[3])
                            1'b0: ctrl_ALU_output =  4'b0110; // srli
                            1'b1: ctrl_ALU_output =  4'b0111; // srai
                            default: ctrl_ALU_output =  4'b0110;
                        endcase
                    end // srli srai
                    default: ctrl_ALU_output =  4'b0000;
                endcase
            end

            7'b011_0011: begin // R-type 寄存器中数相关运算
                ctrl_ALU_input = 1'b1; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b00; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
                case (funct)
                    4'b0000: ctrl_ALU_output =  4'b0000; // add
                    4'b1000: ctrl_ALU_output =  4'b0001; // sub
                    4'b0111: ctrl_ALU_output =  4'b0010; // and
                    4'b0110: ctrl_ALU_output =  4'b0011; // or
                    4'b0100: ctrl_ALU_output =  4'b0100; // xor
                    4'b0001: ctrl_ALU_output =  4'b0101; // sll
                    4'b0101: ctrl_ALU_output =  4'b0110; // srl
                    4'b1101: ctrl_ALU_output =  4'b0101; // sra
                    default: ctrl_ALU_output =  4'b0000;
                endcase
            end

            7'b010_0011: begin // S-type sw
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（4'b0000加法）
                ctrl_DRAM_write = 1'b1; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b00; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口（不写寄存器，是什么值都无所谓）
                ctrl_Reg_write = 1'b0; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
            end

            7'b000_0011: begin // IL-type lw
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（4'b0000加法）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b01; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
            end

            7'b110_0011: begin // B-type
                ctrl_ALU_input = 1'b1; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_ALU_output = 4'b0001; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（4'b0001减法）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b01; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口
                ctrl_Reg_write = 1'b0; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                case (funct[2:0]) 
                    3'b000: ctrl_NPC_output = 3'b100; // beq
                    3'b001: ctrl_NPC_output = 3'b101; // bne
                    3'b100: ctrl_NPC_output = 3'b110; // blt
                    3'b101: ctrl_NPC_output = 3'b111; // bge
                    default: ctrl_NPC_output = 3'b100;
                endcase
                 // 控后信号，控制NPC的输出应该是什么
                
            end

            7'b110_1111: begin // J-type jal
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg（不使用ALU进行计算，是什么值都无所谓，使用NPC内部加法器alu_simple）
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（不使用ALU进行计算，是什么值都无所谓，使用NPC内部加法器alu_simple）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b10; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b010; // 控后信号，控制NPC的输出应该是什么
    
            end

            7'b110_0111: begin // IJ-type jalr
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（4'b0000加法）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b10; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口 11：instr_split的立即数
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b011; // 控后信号，控制NPC的输出应该是什么
    
            end

            7'b011_0111: begin // U-type lui
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg（不使用ALU进行计算，是什么值都无所谓）
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（不使用ALU进行计算，是什么值都无所谓）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b11; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口 11：instr_split的立即数
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
            end

            default: begin // 暂时无所谓
                ctrl_ALU_input = 1'b0; // 控前信号，控制进入ALU的B端口的数来自哪里 0：imm 1：Reg（不使用ALU进行计算，是什么值都无所谓）
                ctrl_ALU_output = 4'b0000; // 控后信号，控制ALU的计算结果Result是由哪种运算得到的（不使用ALU进行计算，是什么值都无所谓）
                ctrl_DRAM_write = 1'b0; // 控中信号，控制是否写DM 0：不写 1：写
                ctrl_Reg_input = 2'b11; // 控前信号，控制写入寄存器的值的来源 00：ALU 01：DM 10：NPC的pc_add4端口 11：instr_split的立即数
                ctrl_Reg_write = 1'b1; // 控中信号，控制是否写寄存器堆RF 0：不写 1：写
                ctrl_NPC_output = 3'b000; // 控后信号，控制NPC的输出应该是什么
            end
        endcase
    end

    
    


endmodule