`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/24 10:11:33
// Design Name: 
// Module Name: MiniRVCPU
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
`include "defines.vh"

module miniRV_SoC (
    input  logic         clk_in1_p,
    input  logic         clk_in1_n,

    input  logic [7:0]   KEY,
    input  logic [63:0]  SW,
    output logic [31:0]  LED,
    output logic [39:0]  SEG

`ifdef RUN_TRACE
    ,// Debug Interface
    output logic        debug_wb_have_inst, // 当前时钟周期是否有指令写回 (对单周期CPU，可在复位后恒置1)
    output logic [31:0] debug_wb_pc,        // 当前写回的指令的PC (若wb_have_inst=0，此项可为任意值)
    output logic        debug_wb_ena,       // 指令写回时，寄存器堆的写使能 (若wb_have_inst=0，此项可为任意值)
    output logic [ 4:0] debug_wb_reg,       // 指令写回时，写入的寄存器号 (若wb_ena或wb_have_inst=0，此项可为任意值)
    output logic [31:0] debug_wb_value      // 指令写回时，写入寄存器的值 (若wb_ena或wb_have_inst=0，此项可为任意值)
`endif   
);
    // TODO: 我们删掉了所有IP核的代码，你需要使用IP核，并补充PLL、IROM和DRAM的例化代码

    PLL pll_inst (
        // Clock out ports
        .clk_out1(),     // output clk_out1
        // Status and control signals
        .locked(),       // output locked
        // Clock in ports
        .clk_in1_p(),    // input clk_in1_p
        .clk_in1_n()    // input clk_in1_n
    );
    
    myCPU Core_cpu (
        .cpu_rst            (),
        .cpu_clk            ()

        // Interface to IROM
        

        // Interface to DRAM
        

    `ifdef RUN_TRACE
        ,// Debug Interface
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_ena       (debug_wb_ena),
        .debug_wb_reg       (debug_wb_reg),
        .debug_wb_value     (debug_wb_value)
    `endif
    );
    
    IROM Mem_IROM (
        .a          (),
        .spo        ()
    );

    logic         clk_to_dram       ;
    logic [13:0]  addr_to_dram      ;
    logic [31:0]  rdata_from_dram   ;
    logic         wen_to_dram       ;
    logic [31:0]  wdata_to_dram     ;

    logic         rst_to_dig        ;
    logic         clk_to_dig        ;
    logic [15:0]  addr_to_dig       ;
    logic [3:0]   rdata_from_dig    ;
    logic         wen_to_dig        ;
    logic [4:0]   wdata_to_dig      ;

    logic         rst_to_led        ;
    logic         clk_to_led        ;
    logic [15:0]  addr_to_led       ;
    logic [31:0]  rdata_from_led    ;
    logic         wen_to_led        ;
    logic [31:0]  wdata_to_led      ;

    logic [15:0]  addr_to_sw        ;
    logic [31:0]  rdata_from_sw     ;

    logic [15:0]  addr_to_key       ;
    logic [7:0]   rdata_from_key    ;

    DRAM Mem_DRAM (
        .clk        (),
        .a          (),
        .spo        (),
        .we         (),
        .d          ()
    );

    Bridge bridge_inst(
        // Interface to CPU
        .rst_from_cpu            (fpga_rst       ),
        .clk_from_cpu            (cpu_clk        ),
        .addr_from_cpu           (data_addr      ),
        .wen_from_cpu            (MemWrite       ),
        .wdata_from_cpu          (rR2_data       ),
        .rdata_to_cpu            (dout           ),
        
        .clk_to_dram             (clk_to_dram    ),
        .addr_to_dram            (addr_to_dram   ),
        .rdata_from_dram         (rdata_from_dram),
        .wen_to_dram             (wen_to_dram    ),
        .wdata_to_dram           (wdata_to_dram  ),
        
        .rst_to_dig              (rst_to_dig     ),
        .clk_to_dig              (clk_to_dig     ),
        .addr_to_dig             (addr_to_dig    ),
        .rdata_from_dig          (rdata_from_dig ), 
        .wen_to_dig              (wen_to_dig     ),
        .wdata_to_dig            (wdata_to_dig   ),

        .rst_to_led              (rst_to_led     ),
        .clk_to_led              (clk_to_led     ),
        .addr_to_led             (addr_to_led    ),
        .rdata_from_led          (rdata_from_led ),
        .wen_to_led              (wen_to_led     ),
        .wdata_to_led            (wdata_to_led   ),
        
        .addr_to_sw              (addr_to_sw     ),
        .rdata_from_sw           (rdata_from_sw  ),

        .addr_to_key             (addr_to_key    ),
        .rdata_from_key          (rdata_from_key )
    );

    // LED模块
    always @(posedge clk_to_led, posedge rst_to_led) begin
        if (rst_to_led) LED <= 32'b0;
        else if (wen_to_led) LED <= wdata_to_led;
        else LED <= LED;
    end
    
    assign rdata_from_led = LED;

    // SW模块
    always_comb begin
        case(addr_to_sw)
            16'hF000:   rdata_from_sw = SW[31:0];
            16'hF004:   rdata_from_sw = SW[63:32];
            default:    rdata_from_sw = 'hX;
        endcase
    end

    // KEY模块
    assign rdata_from_key = KEY;

    // SEG模块
    // TODO: 我们故意删掉了segment模块的读写驱动，你需要通过阅读基准测试汇编代码来完成设计
    // TODO: 这部分你在硬件编程基础的时候做过一部分，考验你理解能力的时候到了
    // 由于你自行设计了这部分硬件，引脚绑定也需要修改
endmodule
