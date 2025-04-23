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
    output logic [DATAWIDTH - 1:0] dout   
);

    logic [DATAWIDTH - 1:0] dout_prep;

    IROM IROM_inst (
        .a(daddr[13:0]),      // input wire [13 : 0] a
        .spo(dout_prep)  // output wire [31 : 0] spo
    );

    always_comb begin
        if (ena) begin
            dout = dout_prep;
        end else begin
            dout = {DATAWIDTH{1'b0}};
        end
    end


endmodule
