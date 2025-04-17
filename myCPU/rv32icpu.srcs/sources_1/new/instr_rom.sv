`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/13 10:15:31
// Design Name: 
// Module Name: instr_rom
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


module instr_rom #(
    parameter   DATAWIDTH   =   32  ,
    parameter   RAMWIDTH    =   8   ,
    parameter   RAMDEPTH    =   8  
)(
    input  logic                   ena      ,
    input  logic [DATAWIDTH - 1:0] daddr    ,
    output logic [DATAWIDTH - 1:0] dout     ,

    output logic [31:0] look_rom     
);
    // 先用reg进行最简单的模拟，这段代码不会将reg综合为bram
    reg [RAMWIDTH - 1:0] rom [2**(RAMDEPTH) - 1:0];

    always_comb begin
        if (ena) begin
            dout = {rom[daddr + 3], rom[daddr + 2], rom[daddr + 1], rom[daddr]};// 采用高地址存高位的原则
        end else begin
            dout = {DATAWIDTH{1'b0}};
        end
    end

    always_comb begin
        look_rom = {rom[3], rom[2], rom[1], rom[0]};
    end

    

endmodule
