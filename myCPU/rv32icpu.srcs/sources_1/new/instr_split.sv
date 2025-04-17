module instr_split(
    input  logic [31:0] instr,
    output logic [6:0] opcode, 
    output logic [4:0] instr_part1,
    output logic [4:0] instr_part2,
    output logic [4:0] instr_part3,
    output logic [3:0] instr_part4
);

    always_comb begin
        opcode = instr[6:0];
        instr_part1 = instr[19:15];
        instr_part2 = instr[24:20];
        instr_part3 = instr[11:7];
        instr_part4 = {instr[30], instr[14:12]};
    end

endmodule