`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:35:51 AM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

    reg [7:0] in0; 
    reg [7:0] in1;
    reg [3:0] op;
    wire [7:0] out;
    
    alu #(.N(8)) dut(
        .in0(in0),
        .in1(in1),
        .op(op),
        .out(out) );
    
    initial begin
    in0=8'hA;in1=8'h7; op=4'h0; #10;
    in0=8'hA;in1=8'h7; op=4'h1; #10;
    in0=8'hA;in1=8'h7; op=4'h2; #10;
    in0=8'hA;in1=8'h7; op=4'h3; #10;
    in0=8'hA;in1=8'h7; op=4'h4; #10;
    in0=8'hA;in1=8'h7; op=4'h5; #10;
    $finish;
    end
       
endmodule
