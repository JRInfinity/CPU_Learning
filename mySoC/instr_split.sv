module instr_split(
    input  logic [31:0] instr,
    output logic [6:0] instr_part1_opcode, // 取出指令的opcode部分
    output logic [4:0] instr_part2_rs1, // 一般来说，取出rs1寄存器编号
    output logic [4:0] instr_part3_rs2, // 一般来说，取出rs2寄存器编号
    output logic [4:0] instr_part4_rd, // 一般来说，取出rd寄存器编号
    output logic [3:0] instr_part5_funct, // 取出部分function部分funct == {funct7[6], funct3}
    output logic [31:0] instr_part6_imm // 取出指令中的立即数部分，具体多少根据指令而定
);

    always_comb begin
        instr_part1_opcode = instr[6:0]; 
        instr_part2_rs1 = instr[19:15]; 
        instr_part3_rs2 = instr[24:20]; 
        instr_part4_rd = instr[11:7]; 
        instr_part5_funct = {instr[30], instr[14:12]}; 

        case (instr[6:0])
            // I-type addi andi ori xori slli srli srai
            7'b001_0011: begin
                instr_part6_imm = {{20{instr[31]}}, instr[31:20]};
            end
            // IL-type lw
            7'b000_0011: begin
                instr_part6_imm = {{20{instr[31]}}, instr[31:20]};
            end
            // S-type sw
            7'b010_0011: begin
                instr_part6_imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
            end
            // B-type beq bne blt bge
            7'b110_0011: begin
                instr_part6_imm = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
            end
            // U-type lui
            7'b011_0111: begin
                instr_part6_imm = {instr[31:12], 12'b0};
            end
            // J-type jal
            7'b110_1111: begin
                instr_part6_imm = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};
            end
            // IJ-type jalr
            7'b110_0111: begin
                instr_part6_imm = {{20{instr[31]}}, instr[31:20]};
            end
            default: begin
                instr_part6_imm = 32'b0;
            end
        endcase
    end

endmodule