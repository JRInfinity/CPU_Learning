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
    input  logic [6:0]  opcode      , // 指令中操作码部分
    output logic        Branch      , // 指令是否为跳转指令（不管是否跳转成功）
    output logic        MemToReg    , // 写回寄存器的值的来源 0：ALU 1：DM
    output logic        MemWrite    , // 是否写DM 0：不写 1：写
    output logic [1:0]  ALUOP       , // 对ALU的控制进行分级控制
    output logic        ALUSrc      , // ALU第二个操作数来源 0：来源于寄存器堆RF 1：来源于立即数生成器imm_gen
    output logic        RegWrite      // 是否写寄存器堆RF 0：不写 1：写
);

    always_comb begin
        case (opcode)
            7'b000_0011: begin // I-type lw
                Branch = 1'b0;
                MemToReg = 1'b1;
                MemWrite = 1'b0;
                ALUOP =  2'b0;
                ALUSrc = 1'b1;
                RegWrite = 1'b1;
            end
            7'b010_0011: begin // S-type sw
                Branch = 1'b0;
                MemToReg = 1'b0; // 不关心
                MemWrite = 1'b1;
                ALUOP =  2'b0;
                ALUSrc = 1'b1;
                RegWrite = 1'b0;
            end
            7'b011_0011: begin // R-type add sub and or
                Branch = 1'b0;
                MemToReg = 1'b0;
                MemWrite = 1'b0;
                ALUOP =  2'b10;
                ALUSrc = 1'b0;
                RegWrite = 1'b1;
            end
            7'b110_0011: begin // B-type beq
                Branch = 1'b1;
                MemToReg = 1'b0; //不关心
                MemWrite = 1'b0;
                ALUOP =  2'b1;
                ALUSrc = 1'b0;
                RegWrite = 1'b0;
            end
            default: begin // 暂时无所谓
                Branch = 1'b0;
                MemToReg = 1'b1;
                MemWrite = 1'b0;
                ALUOP =  2'b0;
                ALUSrc = 1'b1;
                RegWrite = 1'b1;
            end
        endcase
    end

    
    


endmodule
