//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2022 04:19:31 PM
// Design Name: 
// Module Name: InstMem
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
module InstMem(input [7:0] addr, output wire [31:0] instruction);
    // Define the instruction memory module behavior
    reg [31:0] Instruction_memory [63:0];
    
    initial begin
    Instruction_memory[0]   = 32'h00007033;  // and  R0, R0, R0
    Instruction_memory[1]   = 32'h00100093;  // addi R1, R0, 1
    Instruction_memory[2]   = 32'h00200113;  // addi R2, R0, 2
    Instruction_memory[3]   = 32'h00308193;  // addi R3, R1, 3
    Instruction_memory[4]   = 32'h00408213;  // addi R4, R1, 4
    Instruction_memory[5]   = 32'h00510293;  // addi R5, R2, 5
    Instruction_memory[6]   = 32'h00610313;  // addi R6, R2, 6
    Instruction_memory[7]   = 32'h00718393;  // addi R7, R3, 7     
    Instruction_memory[8]   = 32'h00208433;  // add  R8, R1, R2
    Instruction_memory[9]   = 32'h404404B3;  // sub  R9, R8, 4
    Instruction_memory[10]  = 32'h00317533;  // and R10, R2, R3
    Instruction_memory[11]  = 32'h0041E5B3;  // or  R11, R3, R4
    Instruction_memory[12]  = 32'h0041A633;  // R3 < R4 ? R12 = 1
    Instruction_memory[13]  = 32'h007346B3;  // nor R13, R6, R7
    Instruction_memory[14]  = 32'h4D34F713;  // andi R14, R9, "4D3"
    Instruction_memory[15]  = 32'h8D35E793;  // ori  R15, R11, "8D3"
    Instruction_memory[16]  = 32'h4D26A813;  // R13 < "4d2" ? R16 = 1
    Instruction_memory[17]  = 32'h4D244893;  // nori R17, R8, "4D2"
    Instruction_memory[18] = 32'h02b02823; // sw r11, 48(r0) alu result = 32'h00000030
    Instruction_memory[19] = 32'h03002603; // lw r12, 48(r0) alu result = 32'h00000030 , r12 = 32'h00000005
    end
    
    assign instruction = Instruction_memory[addr[7:2]];
endmodule // InstMem