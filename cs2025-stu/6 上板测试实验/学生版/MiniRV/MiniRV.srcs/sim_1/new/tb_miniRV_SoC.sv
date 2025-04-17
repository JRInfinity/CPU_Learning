`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 15:05:50
// Design Name: 
// Module Name: tb_miniRV_SoC
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

// 外设——LED测试
module tb_miniRV_SoC;

logic clk_in1_p      ;
logic clk_in1_n      ;

logic [31:0]  LED   ;
logic [63:0]  SW    ;
logic [7:0]   KEY   ;
logic [39:0]  SEG   ;

initial begin
    clk_in1_p = 0;
    KEY = 8'hFF;
    #10000 KEY[0] = 1;
    #1000 KEY[2] = 0;
    #3000 KEY[2] = 1;
    
    // &运算测试
    SW[7:0] = 8'b0000_0001;
    SW[15:8] = 8'b1111_1110;
    SW[23:16] = 8'b000_11111;
    #1000;
    // |运算测试
    SW[7:0] = 8'b0000_0001;
    SW[15:8] = 8'b1111_1110;
    SW[23:16] = 8'b001_11111;
    #1000;
    // ^运算测试
    SW[15:8] = 8'b0110_0001;
    SW[7:0] = 8'b1111_1110;
    SW[23:16] = 8'b010_11111;
    #1000;
    // <<运算测试
    SW[15:8] = 8'b0110_0101;
    SW[7:0] = 8'b0000_0011;
    SW[23:16] = 8'b011_11111;
    #1000;
    // >>s运算测试1
    SW[15:8] = 8'b1110_0101;
    SW[7:0] = 8'b0000_0011;
    SW[23:16] = 8'b100_11111;
    #1000;
    // >>s运算测试2
    SW[15:8] = 8'b0100_1101;
    SW[7:0] = 8'b0000_0011;
    SW[23:16] = 8'b100_11111;
    #1000;
    // 补码运算测试1
    SW[15:8] = 8'b0100_0001;
    SW[7:0] = 8'b1111_1110;
    SW[23:16] = 8'b101_11111;
    #2000;
    // 补码运算测试2
    SW[15:8] = 8'b0100_0001;
    SW[7:0] = 8'b0111_1110;
    SW[23:16] = 8'b101_11111;
    #2000;
    // 补码运算测试3
    SW[15:8] = 8'b0000_0000;
    SW[7:0] = 8'b0111_1000;
    SW[23:16] = 8'b101_11111;
    #4000;
    $finish;
end 

always #10 clk_in1_p = ~clk_in1_p;
assign clk_in1_n = ~clk_in1_p;

miniRV_SoC tb_cpu (
    .clk_in1_p              (clk_in1_p),
    .clk_in1_n              (clk_in1_n),
    .KEY                    (KEY),
    .LED                    (LED),
    .SW                     (SW ),
    .SEG                    (SEG)
);

endmodule
