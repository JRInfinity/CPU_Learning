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
    input  logic [1:0]              ALUControl  ,
    output logic [DATAWIDTH - 1:0]  Result      ,
    output logic                    N           ,
    output logic                    Z           ,
    output logic                    V           ,
    output logic                    C           
);

    always_comb begin : alu // 计算结果Result和进位标志位C
        case (ALUControl)
            2'b00: begin // 计算加法
                {C, Result} = A + B;
            end
            2'b01: begin // 计算减法
                {C, Result} = A - B;
            end
            2'b10: begin // 计算按位与
                Result = A & B;
                C = 0;
            end
            2'b11: begin // 计算按位或
                Result = A | B;
                C = 0;
            end
            default: begin
                Result = {DATAWIDTH{1'b0}};
                C = 0;
            end
        endcase
    end

    always_comb begin // 计算负结果标志位N，零结果标志位Z，溢出标志位V
        N = Result[DATAWIDTH - 1];
        Z = (Result == 0);
        
        if (ALUControl == 2'b00) begin
            V = (A[DATAWIDTH - 1] == B[DATAWIDTH - 1]) && (A[DATAWIDTH - 1] != Result[DATAWIDTH - 1]);
        end else if (ALUControl == 2'b01) begin
            V = (A[DATAWIDTH - 1] != B[DATAWIDTH - 1]) && (A[DATAWIDTH - 1] != Result[DATAWIDTH - 1]);
        end else begin
            V = 0;
        end
    end

endmodule
