`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/05 13:26:52
// Design Name: 
// Module Name: alu
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


module alu#(
    parameter   DATAWIDTH = 32   // 数据位宽，默认为32
)(
    input  logic [DATAWIDTH - 1:0]  A,           // 输入A
    input  logic [DATAWIDTH - 1:0]  B,           // 输入B
    input  logic [1:0]              ALUControl,  // ALU控制信号
    output logic [DATAWIDTH - 1:0]  Result,      // 计算结果
    output logic                    N,           // 负标志位
    output logic                    Z,           // 零标志位
    output logic                    V,           // 溢出标志位
    output logic                    C            // 进位标志位
);

    // ALU操作定义
    always_comb begin
        case (ALUControl)
            2'b00: begin  // Add
                {C, Result} = A + B;  // 加法操作，包含进位
            end
            2'b01: begin  // Sub
                {C, Result} = A - B;  // 减法操作，包含进位
            end
            2'b10: begin  // And
                Result = A & B;  // 按位与操作
                C = 0;  // 按位与没有进位
            end
            2'b11: begin  // Or
                Result = A | B;  // 按位或操作
                C = 0;  // 按位或没有进位
            end
            default: begin
                Result = {DATAWIDTH{1'b0}};  // 默认情况下，输出为零
                C = 0;  // 默认没有进位
            end
        endcase
    end

    // 标志位更新
    always_comb begin
        // 负标志位：检查结果是否为负数
        N = Result[DATAWIDTH - 1];

        // 零标志位：检查结果是否为零
        Z = (Result == 0);

        // 溢出标志位：加法和减法溢出检测
        V = (ALUControl == 2'b00 || ALUControl == 2'b01) && (A[DATAWIDTH - 1] == B[DATAWIDTH - 1]) && (Result[DATAWIDTH - 1] != A[DATAWIDTH - 1]);

        // 进位标志位：由加法和减法操作产生的进位
        // C的值已经通过加法或减法操作中的`{C, Result}`获得
    end

endmodule
