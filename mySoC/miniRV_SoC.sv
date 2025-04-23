module miniRV_SoC (
    input  logic         fpga_rst,   // High active
    input  logic         fpga_clk,

    output logic         debug_wb_have_inst, // 当前时钟周期是否有指令写回 (对单周期CPU，可在复位后恒置1)
    output logic [31:0]  debug_wb_pc,        // 当前写回的指令的PC (若wb_have_inst=0，此项可为任意值)
    output               debug_wb_ena,       // 指令写回时，寄存器堆的写使能 (若wb_have_inst=0，此项可为任意值)
    output logic [ 4:0]  debug_wb_reg,       // 指令写回时，写入的寄存器号 (若wb_ena或wb_have_inst=0，此项可为任意值)
    output logic [31:0]  debug_wb_value      // 指令写回时，写入寄存器的值 (若wb_ena或wb_have_inst=0，此项可为任意值)

);
    parameter DATAWIDTH = 32;

    logic cpu_clk = fpga_clk;

    logic [31:0] pc_output;
    logic [31:0] full_instr;

    logic clk_DRAM;
    logic [31:0] result_ALU;
    logic [31:0] reg_out_data2;
    logic ctrl_DRAM_write;
    logic [31:0] data_DM_out;
    
    myCPU Core_cpu (
        .cpu_rst            (fpga_rst),
        .cpu_clk            (cpu_clk),
        // Interface to IROM
        .pc_output_port    (pc_output),
        .full_instr_port    (full_instr),
        // Interface to DRAM
        .data_DM_out_port(data_DM_out),
        .clk_DRAM_port(clk_DRAM),
        .reg_out_data2_port(reg_out_data2),
        .ctrl_DRAM_write_port(ctrl_DRAM_write),
        .result_ALU_port(result_ALU),
        // Debug Interface
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_ena       (debug_wb_ena),
        .debug_wb_reg       (debug_wb_reg),
        .debug_wb_value     (debug_wb_value) 
    );
    
    // 下面两个模块，只需要实例化代码和连线代码，不需要创建IP核
    IROM Mem_IROM (
        .a          (pc_output[13:0]),
        .spo        (full_instr)
    );

    DRAM Mem_DRAM (
        .clk        (clk_DRAM),
        .a          (result_ALU[13:0]),
        .spo        (data_DM_out),
        .we         (ctrl_DRAM_write),
        .d          (reg_out_data2)
    );

endmodule