`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/06 20:32:28
// Design Name: 
// Module Name: mux
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


module mux2to1 #(
    parameter WIDTH = 32
)
(
    input  logic [WIDTH - 1:0] A          ,
    input  logic [WIDTH - 1:0] B          ,
    input  logic Control    ,
    output logic [WIDTH - 1:0] Result
);
    
    always_comb begin
        case (Control) 
            1'b0: Result = A;
            1'b1: Result = B;
            default: Result = A;
        endcase
    end
endmodule
