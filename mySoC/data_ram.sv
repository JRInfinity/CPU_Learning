`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/13 09:59:48
// Design Name: 
// Module Name: data_ram
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


module data_ram #(
    parameter   DATAWIDTH   =   32
)(
    input  logic                   clk      ,
    input  logic                   rst      ,
    input  logic                   ena      ,
    input  logic                   wen      ,
    input  logic [DATAWIDTH - 1:0] din      ,
    input  logic [DATAWIDTH - 1:0] daddr    ,
    output logic [DATAWIDTH - 1:0] dout     
);
    logic [DATAWIDTH - 1:0] daddr_prep;
    logic [DATAWIDTH - 1:0] din_prep;
    logic [DATAWIDTH - 1:0] dout_prep;

    DRAM DRAM_inst (
        .a(daddr_prep[13:0]),      // input wire [13 : 0] a
        .d(din_prep),      // input wire [31 : 0] d
        .clk(clk),  // input wire clk
        .we(wen),    // input wire we
        .spo(dout_prep)  // output wire [31 : 0] spo
    );

    // ena == 1, wen == 1 写
    // ena == 1, wen == 0 读

    // 写DM
    always_ff @ (posedge clk) begin
       if (ena && wen) begin // 采用高地址存高位的原则
            daddr_prep = daddr;
            din_prep = din;
        end
    end

    // 读DM
    always_comb begin
        if (ena) begin
            dout = dout_prep;
        end else begin
            dout = {DATAWIDTH{1'b0}};
        end
    end


endmodule
