`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/17 10:23:14
// Design Name: 
// Module Name: clk_div
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


module clk_div(
    input logic clk,
    input logic rst,
    output logic [2:0] clk_div
    );

    always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin
            clk_div <= 3'b000;
        end else if (clk_div[1:0] == 2'b00) begin
            clk_div <= 3'b001;
        end else if (clk_div == 3'b001) begin
            clk_div <= 3'b010;
        end else if (clk_div == 3'b010) begin
            clk_div <= 3'b100;
        end else begin
            clk_div <= 3'b000;
        end
    end
    
endmodule
