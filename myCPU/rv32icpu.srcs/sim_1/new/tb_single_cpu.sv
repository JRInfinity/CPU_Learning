`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 11:13:58
// Design Name: 
// Module Name: tb_single_cpu
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


module tb_single_cpu();

parameter DATAWIDTH = 32;
parameter   RAMWIDTH    =   8   ;
parameter   RAMDEPTH    =   8 ;

logic clk;   
logic rst;
logic [DATAWIDTH - 1:0]  pc     ;

// logic [RAMWIDTH - 1:0] ram [2**(RAMDEPTH) - 1:0];
// logic [RAMWIDTH - 1:0] rom [2**(RAMDEPTH) - 1:0];
 logic [31:0] ram ;
 logic [31:0] rom ;

always #5 clk = ~clk;


single_cpu #(
    .DATAWIDTH (32)    
)single_cpu_inst (
    .clk       (clk)    ,
    .rst       (rst)    ,
    .pc_out    (pc)     ,
    .look_ram  (ram)    ,
    .look_rom  (rom)    
);

initial begin
    clk = 0;
    rst = 0;
    #5 rst = 1;
    // rst后，加载data_ram中的数据
    #5 rst = 0;
    //$readmemh("D:/JingYeDaICCompetition/cs2025_stu_self/4_rv32icpu/rv32icpu.srcs/sources_1/new/reg_file.txt", reg_bank);
 //   $readmemh("/home/ketted/Desktop/cs2022_2/rv32icpu/rv32icpu.srcs/sources_1/new/rom_data.txt", single_cpu_inst.instr_rom_inst.rom, 0);
 //   $readmemh("/home/ketted/Desktop/cs2022_2/rv32icpu/rv32icpu.srcs/sources_1/new/ram_data.txt", single_cpu_inst.data_ram_inst.ram, 32);
    $readmemh("D:/JingYeDaICCompetition/cs2025_stu_self/4_rv32icpu/rv32icpu.srcs/sources_1/new/rom_data.txt", single_cpu_inst.instr_rom_inst.rom, 0);
    $readmemh("D:/JingYeDaICCompetition/cs2025_stu_self/4_rv32icpu/rv32icpu.srcs/sources_1/new/ram_data.txt", single_cpu_inst.data_ram_inst.ram, 32);
    // data ram 0x20:ffffffff(-1), 0x24:00000001(1), 0x28:00000015(21)
    #60;
    // 验证第1个lw指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[1] == 32'hffffffff) else $fatal("Result Error: load word {ffffffff} to x1, but x1 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[1]);
    #30;
    // 验证第2个lw指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[2] == 32'h00000001) else $fatal("Result Error: load word {00000001} to x2, but x2 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[2]);
    #30;
    // 验证第3个lw指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[3] == 32'h00000015) else $fatal("Result Error: load word {00000015} to x3, but x3 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[3]);
    #30;
    // 验证sub指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[1] == 32'hfffffffe) else $fatal("Result Error: x1 - x2 = {fffffffe} to x1, but x1 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[1]);
    #30;
    // 验证and指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[4] == 32'h0) else $fatal("Result Error: x1 & x2 = {00000000} to x4, but x4 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[4]);
    #30;
    // 验证and指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[5] == 32'h00000014) else $fatal("Result Error: x1 & x3 = {00000014} to x5, but x5 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[5]);
    #30;
    // 验证sw指令的正确性
    assert(single_cpu_inst.data_ram_inst.ram[36] == 8'hfe) else $fatal("Result Error: store x1=0xfffffffe  to MEM[0x28:0x24], expected MEM[0x24] = fe, but MEM[0x24] is  {%x}.", single_cpu_inst.data_ram_inst.ram[36]);
    assert(single_cpu_inst.data_ram_inst.ram[37] == 8'hff) else $fatal("Result Error: store x1=0xfffffffe  to MEM[0x28:0x24], expected MEM[0x25] = ff, but MEM[0x25] is  {%x}.", single_cpu_inst.data_ram_inst.ram[37]);
    assert(single_cpu_inst.data_ram_inst.ram[38] == 8'hff) else $fatal("Result Error: store x1=0xfffffffe  to MEM[0x28:0x24], expected MEM[0x26] = ff, but MEM[0x26] is  {%x}.", single_cpu_inst.data_ram_inst.ram[38]);
    assert(single_cpu_inst.data_ram_inst.ram[39] == 8'hff) else $fatal("Result Error: store x1=0xfffffffe  to MEM[0x28:0x24], expected MEM[0x27] = ff, but MEM[0x27] is  {%x}.", single_cpu_inst.data_ram_inst.ram[39]);
    #30;
    // 验证sw指令的正确
    assert(single_cpu_inst.data_ram_inst.ram[32] == 8'h0) else $fatal("Result Error: store x4=0x0  to MEM[0x24:0x20], expected MEM[0x20] = 00, but MEM[0x20] is  {%x}.", single_cpu_inst.data_ram_inst.ram[32]);
    assert(single_cpu_inst.data_ram_inst.ram[33] == 8'h0) else $fatal("Result Error: store x4=0x0  to MEM[0x24:0x20], expected MEM[0x21] = 00, but MEM[0x21] is  {%x}.", single_cpu_inst.data_ram_inst.ram[33]);
    assert(single_cpu_inst.data_ram_inst.ram[34] == 8'h0) else $fatal("Result Error: store x4=0x0  to MEM[0x24:0x20], expected MEM[0x22] = 00, but MEM[0x22] is  {%x}.", single_cpu_inst.data_ram_inst.ram[34]);
    assert(single_cpu_inst.data_ram_inst.ram[35] == 8'h0) else $fatal("Result Error: store x4=0x0  to MEM[0x24:0x20], expected MEM[0x23] = 00, but MEM[0x23] is  {%x}.", single_cpu_inst.data_ram_inst.ram[35]);
    #30;
    // 验证or指令的正确性
    assert(single_cpu_inst.reg_file_inst.reg_bank[6] == 32'h00000014) else $fatal("Result Error: x4 | x5 = {00000014} to x6, but x4 is  {%x}.", single_cpu_inst.reg_file_inst.reg_bank[6]);
    #30;
    // 验证beq指令的正确性
    assert(single_cpu_inst.pc_inst.pc_out == 32'h0) else $fatal("Result Error: beq change pc to = {0x00000000}, but pc is  {%x}.", single_cpu_inst.pc_inst.pc_out);
    $finish;
end    
endmodule
