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
    parameter   DATAWIDTH = 32   // ����λ��Ĭ��Ϊ32
)(
    input  logic [DATAWIDTH - 1:0]  A,           // ����A
    input  logic [DATAWIDTH - 1:0]  B,           // ����B
    input  logic [1:0]              ALUControl,  // ALU�����ź�
    output logic [DATAWIDTH - 1:0]  Result,      // ������
    output logic                    N,           // ����־λ
    output logic                    Z,           // ���־λ
    output logic                    V,           // �����־λ
    output logic                    C            // ��λ��־λ
);

    // ALU��������
    always_comb begin
        case (ALUControl)
            2'b00: begin  // Add
                {C, Result} = A + B;  // �ӷ�������������λ
            end
            2'b01: begin  // Sub
                {C, Result} = A - B;  // ����������������λ
            end
            2'b10: begin  // And
                Result = A & B;  // ��λ�����
                C = 0;  // ��λ��û�н�λ
            end
            2'b11: begin  // Or
                Result = A | B;  // ��λ�����
                C = 0;  // ��λ��û�н�λ
            end
            default: begin
                Result = {DATAWIDTH{1'b0}};  // Ĭ������£����Ϊ��
                C = 0;  // Ĭ��û�н�λ
            end
        endcase
    end

    // ��־λ����
    always_comb begin
        // ����־λ��������Ƿ�Ϊ����
        N = Result[DATAWIDTH - 1];

        // ���־λ��������Ƿ�Ϊ��
        Z = (Result == 0);

        // �����־λ���ӷ��ͼ���������
        V = (ALUControl == 2'b00 || ALUControl == 2'b01) && (A[DATAWIDTH - 1] == B[DATAWIDTH - 1]) && (Result[DATAWIDTH - 1] != A[DATAWIDTH - 1]);

        // ��λ��־λ���ɼӷ��ͼ������������Ľ�λ
        // C��ֵ�Ѿ�ͨ���ӷ�����������е�`{C, Result}`���
    end

endmodule
