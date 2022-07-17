//////////////////////////////////////////////////////////////////////////////////
// Module Name: Controller
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

// Module Definition
module Controller(
    Opcode,
    ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,
    ALUOp
    );
    
    // Define the input and output signals
    
    input [6:0] Opcode;
    output reg ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite;
    output reg [1:0] ALUOp;
    
    always @ (*) begin
    
        MemtoReg =  (Opcode == 7'b0000011) ? 1'b1 : 1'b0;
        MemWrite =  (Opcode == 7'b0100011) ? 1'b1 : 1'b0;
        MemRead  =  (Opcode == 7'b0000011) ? 1'b1 : 1'b0;
        ALUSrc   =  (Opcode == 7'b0110011) ? 1'b0 : 1'b1;
        RegWrite =  (Opcode == 7'b0100011) ? 1'b0 : 1'b1;
        ALUOp[1] =  &Opcode[5:4];
        ALUOp[0] =  ~Opcode[4];
        
    end
    
    
endmodule
