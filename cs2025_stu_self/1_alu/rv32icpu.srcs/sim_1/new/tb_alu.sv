`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/05 13:39:43
// Design Name: 
// Module Name: tb_alu
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


module test_alu;
    // �ź�����
    logic [31:0] A, B;
    logic [1:0] ALUControl;
    logic [31:0] Result;
    logic N, Z, V, C;

    // ʵ����ALUģ��
    alu #(.DATAWIDTH(32)) my_alu (
        .A(A),
        .B(B),
        .ALUControl(ALUControl),
        .Result(Result),
        .N(N),
        .Z(Z),
        .V(V),
        .C(C)
    );

    initial begin
        // ����1: �ӷ� A = 5, B = 3
        A = 32'd2147483648;
        B = 32'd2147483648;
        ALUControl = 2'b00;  // Add
        #10;
        $display("Add: A = %d, B = %d, Result = %d, N = %b, Z = %b, V = %b, C = %b", A, B, Result, N, Z, V, C);

        // ����2: ���� A = 5, B = 3
        A = 32'd5;
        B = 32'd3;
        ALUControl = 2'b01;  // Sub
        #10;
        $display("Sub: A = %d, B = %d, Result = %d, N = %b, Z = %b, V = %b, C = %b", A, B, Result, N, Z, V, C);

        // ����3: ��λ�� A = 5, B = 3
        A = 32'd5;
        B = 32'd3;
        ALUControl = 2'b10;  // And
        #10;
        $display("And: A = %d, B = %d, Result = %d, N = %b, Z = %b, V = %b, C = %b", A, B, Result, N, Z, V, C);

        // ����4: ��λ�� A = 5, B = 3
        A = 32'd5;
        B = 32'd3;
        ALUControl = 2'b11;  // Or
        #10;
        $display("Or: A = %d, B = %d, Result = %d, N = %b, Z = %b, V = %b, C = %b", A, B, Result, N, Z, V, C);
    $finish;
    end
endmodule
