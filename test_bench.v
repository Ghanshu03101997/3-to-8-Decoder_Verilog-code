`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2021 05:10:01 PM
// Design Name: 
// Module Name: test_bench
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


module test_bench(

    );
    reg [2:0] in,en;
    wire [7:0] out;
    
       decoder_3_to_8 D1(out,in,en);
       initial
       begin
       
       en=0; in=3;
       #100
       en=0; in=5;
       #100
              en=1; in=3;
       #100
       in=3'b010;
       
       end
       endmodule
