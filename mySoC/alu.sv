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
    parameter   DATAWIDTH = 32	
)(
    input  logic [DATAWIDTH - 1:0]  A           ,
    input  logic [DATAWIDTH - 1:0]  B           ,
    input  logic [3:0]              ctrl_ALU_output  ,
    output logic [DATAWIDTH - 1:0]  Result      ,
    output logic                    N           ,
    output logic                    Z           ,
    output logic                    V           ,
    output logic                    C           
);
    logic [DATAWIDTH - 1:0] res1;
    logic [DATAWIDTH - 1:0] res2;
    logic [DATAWIDTH - 1:0] res3;


    // 为实现移位功能，实例化移位器
    barrel_shifter_left left_shifter(
    .data_in(A),
    .shift_amount(B), // 向左移位位数
    .data_out(res1)
    );

    barrel_shifter_right right_logic_shifter(
    .data_in(A),
    .shift_amount(B), // 向右逻辑移位位数
    .shift_mode(1'b0), // 逻辑移位模式
    .data_out(res2)
    );

    barrel_shifter_right right_algorithm_shifter(
    .data_in(A),
    .shift_amount(B), // 向右算数移位位数
    .shift_mode(1'b1), // 算数移位模式
    .data_out(res3)
    );

    always_comb begin : alu // 计算结果Result和进位标志位C
        case (ctrl_ALU_output)
            4'b0000: begin // 计算加法
                {C, Result} = A + B;
            end
            4'b0001: begin // 计算减法
                {C, Result} = A - B;
            end
            4'b0010: begin // 计算按位与
                Result = A & B;
                C = 0;
            end
            4'b0011: begin // 计算按位或
                Result = A | B;
                C = 0;
            end
            4'b0100: begin // 计算按位异或
                Result = A ^ B;
                C = 0;
            end
            4'b0101: begin // 左移
                Result = res1;
                C = 0; // 此时不考虑进位
            end
            4'b0110: begin // 逻辑右移
                Result = res2;
                C = 0; // 此时不考虑进位
            end
            4'b0111: begin // 算数右移
                Result = res3;
                C = 0; // 此时不考虑进位
            end
            default: begin //
                Result = {DATAWIDTH{1'b0}};
                C = 0;
            end
        endcase
    end

    always_comb begin // 计算负结果标志位N，零结果标志位Z，溢出标志位V
        N = Result[DATAWIDTH - 1];
        Z = (Result == 0);
        
        if (ctrl_ALU_output == 2'b00) begin
            V = (A[DATAWIDTH - 1] == B[DATAWIDTH - 1]) && (A[DATAWIDTH - 1] != Result[DATAWIDTH - 1]);
        end else if (ctrl_ALU_output == 2'b01) begin
            V = (A[DATAWIDTH - 1] != B[DATAWIDTH - 1]) && (A[DATAWIDTH - 1] != Result[DATAWIDTH - 1]);
        end else begin
            V = 0;
        end
    end

endmodule
