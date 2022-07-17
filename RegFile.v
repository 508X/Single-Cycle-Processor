//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2022 06:37:37 PM
// Design Name: 
// Module Name: RegFile
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

module RegFile(
    clk, reset, rg_wrt_en,
    rg_wrt_addr,
    rg_rd_addr1,
    rg_rd_addr2,
    rg_wrt_data,
    rg_rd_data1,
    rg_rd_data2
    );
    
    // two 5 bit inputs
    input   [4:0]   rg_rd_addr1;
    input   [4:0]   rg_rd_addr2;
    // register number
    input   [4:0]   rg_wrt_addr;
    // data to write in register
    input   [31:0]  rg_wrt_data;
    // input variables
    input           reset, 
                    clk, 
                    rg_wrt_en;
    // output data from read register
    output wire [31:0] rg_rd_data1;
    output wire [31:0] rg_rd_data2;
    
    reg [31:0] register_file [31:0];
    
    assign rg_rd_data1 = register_file[rg_rd_addr1];
    assign rg_rd_data2 = register_file[rg_rd_addr2];
    
    integer i;
    always @ (reset) begin
        if(reset) begin
            for(i = 0; i < 32; i = i + 1) begin
                register_file[i] <= 32'b0;
            end
        end
    end
    
    always @ (posedge clk) begin
        if(reset == 1'b0 && rg_wrt_en == 1'b1) begin
            register_file[rg_wrt_addr] = rg_wrt_data;
        end
    end
    
endmodule
