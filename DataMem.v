`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DataMem
//////////////////////////////////////////////////////////////////////////////////


module DataMem(MemRead, MemWrite, addr, write_data, read_data);
    
    // Define IO Ports
    
    input               MemRead;
    input               MemWrite;
    input       [8:0]   addr;
    input       [31:0]  write_data;
    output  reg [31:0]  read_data;
            reg [31:0]  memory      [127:0];
            
            
    // Describe DataMem behavior
    always @ (*)
    begin
        if (MemRead == 1'b1) begin
            read_data = memory[addr[8:2]];
        end
        if (MemWrite == 1'b1) begin
            memory[addr[8:2]] = write_data;
        end
    end
    
endmodule
