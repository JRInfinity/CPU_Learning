`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 15:48:39
// Design Name: 
// Module Name: ALU_controller
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


module ALU_controller(
    input  logic [3:0] funct        ,
    input  logic [1:0] ALUOP        ,
    output logic [1:0] ALUControl    
);

// funct = {funct7[5], funct3}   原本有funct7[6:0]  funct3[2:0]

    always_comb begin
        case (ALUOP)
            2'b00: begin
                ALUControl = 2'b00;
            end
            2'b01: begin
                ALUControl = 2'b01;
            end
            2'b10: begin
                case (funct)
                    4'b0000: begin
                        ALUControl = 2'b00;
                    end
                    4'b1000: begin
                        ALUControl = 2'b01;
                    end
                    4'b0111: begin
                        ALUControl = 2'b10;
                    end
                    4'b0110: begin
                        ALUControl = 2'b11;
                    end
                    default: begin
                        ALUControl = 2'b00;
                    end
                endcase
            end
            default: begin
                ALUControl = 2'b00;
            end
        endcase
    end

endmodule
