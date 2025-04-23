`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/09 09:49:24
// Design Name: 
// Module Name: reg_file
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


module reg_file #(
    parameter   ADDR_WIDTH = 5  ,
    parameter   DATAWIDTH  = 32
)(
    input  logic                    clk            ,
    input  logic                    rst            ,
    // Write rd                   
    input  logic                    wr_reg_en      ,
    input  logic [ADDR_WIDTH - 1:0] wr_reg_addr    ,
    input  logic [DATAWIDTH - 1:0]  wr_wdata       ,
    // Read  rs1 rs2
    input  logic [ADDR_WIDTH - 1:0] rs_reg1_addr   ,
    input  logic [ADDR_WIDTH - 1:0] rs_reg2_addr   ,

    output logic [DATAWIDTH - 1:0]  rs_reg1_rdata  ,
    output logic [DATAWIDTH - 1:0]  rs_reg2_rdata
);
    logic [DATAWIDTH - 1:0] reg_bank [31:0];

    // 写寄存器（时序逻辑，时钟有效沿来临时才能写）
    always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin
            for (int i = 0; i<32 ; i++) begin
                reg_bank[i] <= {DATAWIDTH{1'b0}};
            end
        end else if (wr_reg_en && (wr_reg_addr != 5'b0)) begin
            reg_bank[wr_reg_addr] <= wr_wdata;
        end else if (wr_reg_en && (wr_reg_addr == 5'b0)) begin
            reg_bank[wr_reg_addr] <= {DATAWIDTH{1'b0}};
        end
    end

    // 读寄存器（组合逻辑，随时可读）
    always_comb begin
        rs_reg1_rdata = reg_bank[rs_reg1_addr];
        rs_reg2_rdata = reg_bank[rs_reg2_addr];
    end
endmodule
