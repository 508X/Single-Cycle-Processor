//////////////////////////////////////////////////////////////////////////////////
// Module Name: processor
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module processor(
    input clk, input reset,
    output [31:0] Result
    );
    
    
    wire [1:0] ALUOp;
    wire RegWrite, ALUSrc, MemtoReg, MemWrite, MemRead;
    
    wire [2:0] Funct3;
    wire [6:0] Funct7;
    wire [6:0] Opcode;
    
    wire [3:0] Operation;
    
    data_path Datapath(.clk(clk), .reset(reset), 
    .reg_write(RegWrite), .mem2reg(MemtoReg), .alu_src(ALUSrc), .mem_write(MemWrite), .mem_read(MemRead),
    .alu_cc(Operation), .opcode(Opcode), .funct7(Funct7), .funct3(Funct3),
    .alu_result(Result));
    
    Controller Controller(.Opcode(Opcode),
    .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .RegWrite(RegWrite), .MemRead(MemRead), .MemWrite(MemWrite),
    .ALUOp(ALUOp));
    
    ALUController ALUController(.ALUOp(ALUOp), .Funct7(Funct7), .Funct3(Funct3), .Operation(Operation));
    
    
    
    
    
endmodule
