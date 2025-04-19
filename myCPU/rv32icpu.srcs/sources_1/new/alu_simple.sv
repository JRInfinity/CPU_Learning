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


module alu_simple#(
    parameter   DATAWIDTH = 32	
)(
    input  logic [DATAWIDTH - 1:0]  A           ,
    input  logic [DATAWIDTH - 1:0]  B           ,
    input  logic                    ALUControl  , // 0:add 1:and
    output logic [DATAWIDTH - 1:0]  Result       
);

    always_comb begin // 计算结果Result和进位标志位C
        case (ALUControl)
            1'b0: begin // 计算加法
                Result = A + B;
            end
            1'b1: begin // 计算位与
                Result = A & B;
            end
            default: begin
                Result = {DATAWIDTH{1'b0}};
            end
        endcase
    end

endmodule
