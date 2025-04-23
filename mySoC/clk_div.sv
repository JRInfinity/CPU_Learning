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
    output logic [1:0] clk_div
    );

    logic flag;

    always_ff @ (posedge clk or negedge clk or posedge rst) begin
        // if (rst) begin
        //     clk_div <= 3'b000;
        // end else 
        // if (clk_div[1:0] == 2'b00) begin
        //     clk_div <= 3'b001;
        // end else if (clk_div == 3'b001) begin
        //     clk_div <= 3'b010;
        // end else if (clk_div == 3'b010) begin
        //     clk_div <= 3'b100;
        // end else begin
        //     clk_div <= 3'b000;
        // end
        // if (rst) begin
        //     flag <= 1'b0;
        // end else 
        if (flag == 1'b0) begin
            clk_div[0] <= 1'b1;
            clk_div[1] <= 1'b0;
            flag <= 1'b1;
        end else if (flag == 1'b1) begin
            clk_div[0] <= 1'b0;
            clk_div[1] <= 1'b1;
            flag <= 1'b0;
        end
    end
    
endmodule
