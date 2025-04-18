`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/18 15:02:53
// Design Name: 
// Module Name: mux4to1
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


module mux4to1 #(
    parameter WIDTH = 32
)
(
    input  logic [WIDTH - 1:0] A          ,
    input  logic [WIDTH - 1:0] B          ,
    input  logic [WIDTH - 1:0] C          ,
    input  logic [WIDTH - 1:0] D          ,
    input  logic [1:0]         Control    ,
    output logic [WIDTH - 1:0] Result
);
    
    always_comb begin
        case (Control) 
            2'b00: Result = A;
            2'b01: Result = B;
            2'b10: Result = C;
            2'b11: Result = D;
            default: Result = A;
        endcase
    end
endmodule