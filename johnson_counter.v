`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 10:04:46
// Design Name: 
// Module Name: ring_counter
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


module johnson_counter(
    input rst,
    input clk,
    output reg [3:0] q
    );
    always @(negedge clk or posedge rst)
    begin
    if(rst)
        q<=4'b0000;
    else
        q<={q[2:0],~q[3]};
    end
        
endmodule



