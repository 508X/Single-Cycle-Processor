//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2022 02:50:31 PM
// Design Name: 
// Module Name: FlipFlop
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
`timescale 1ns / 1ps

// Module Definition
module FlipFlop(clk, reset, d, q);

    // Define input and output signals
    input clk;
    input reset;
    
    input       [7:0] d;
    output reg  [7:0] q;
    
    // Define the D FlipFlop modules' behavior
    
    always @ (posedge clk)
        begin
        
        q <= reset ? 8'b0 : d;
        
        end

endmodule // FlipFlop









