`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 10:22:26 AM
// Design Name: 
// Module Name: Mux
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


module Mux21(S, D1, D2, Y);

    input [31:0] D1;
    input [31:0] D2;
    input S;
    output [31:0] Y;
    
    assign Y = S ? D1 : D2;
    
endmodule
