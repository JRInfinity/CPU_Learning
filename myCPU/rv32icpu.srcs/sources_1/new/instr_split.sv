module instr_split(
    input  logic [31:0] instr,
    output logic [6:0] opcode, 
    output logic [4:0] instr_part1,
    output logic [4:0] instr_part2,
    output logic [4:0] instr_part3,
    output logic [3:0] instr_part4,
    output logic [19:0] instr_part5,
    output logic [11:0] instr_part6
);

    always_comb begin
        opcode = instr[6:0]; //取出指令的opcode部分
        instr_part1 = instr[19:15]; // 一般来说，取出rd1寄存器编号
        instr_part2 = instr[24:20]; // 一般来说，取出rd2寄存器编号
        instr_part3 = instr[11:7]; // 一般来说，取出rd寄存器编号
        instr_part4 = {instr[30], instr[14:12]}; // 取出部分function部分funct == {funct7[6], funct3}
        instr_part5 = instr[31:12]; // lui指令，把指令高20位取出
        instr_part6 = instr[31:20]; // 取出I型指令的立即数部分
    end

endmodule