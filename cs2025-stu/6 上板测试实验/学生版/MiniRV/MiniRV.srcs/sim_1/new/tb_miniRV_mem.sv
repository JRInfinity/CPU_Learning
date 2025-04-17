`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 15:00:02
// Design Name: 
// Module Name: tb_miniRV_mem
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


module tb_miniRV_mem;

logic clk_in1_p      ;
logic clk_in1_n      ;

logic [31:0]  LED   ;
logic [63:0]  SW    ;
logic [7:0]   KEY   ;
logic [39:0]  SEG   ;

initial begin
    clk_in1_p = 0;
    KEY = 8'hFF;
    KEY[0] = 0;
    #10000 KEY[0] = 1;
    #1000 KEY[4] = 0;
    #3000 KEY[4] = 1;
    
    // &运算测试
    SW[31:0] = 32'h81007FFF;
    SW[63:32] = 32'h60000000;
    // SW[63:32] = 32'h25000001;
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
