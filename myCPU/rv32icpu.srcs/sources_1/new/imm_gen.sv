`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 10:39:54
// Design Name: 
// Module Name: imm_gen
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


module imm_gen#(
    parameter   DATAWIDTH = 32	
)(
    input  logic [31:0]            instr   ,
    output logic [DATAWIDTH - 1:0] imm       
);

    always_comb begin
        case (instr[6:0])
            // I-type
            7'b000_0011: begin
                imm = {{20{instr[31]}}, instr[31:20]};
            end
            // S-type
            7'b010_0011: begin
                imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
            end
            // B-type
            7'b110_0011: begin
                imm = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
            end
            // U-type
            7'b011_0111: begin
                imm = {instr[31:12], 12'b0};
            end
            // J-type
            7'b110_1111: begin
                imm = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};
            end
            default: begin
                imm = 32'b0;
            end
        endcase
    end

endmodule
