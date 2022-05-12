`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2021 04:38:32 PM
// Design Name: 
// Module Name: decoder_3_to_8
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


module decoder_3_to_8(out,in,en);
input [2:0] in,en;
output reg [7:0] out;
always@ (in or en) begin
if (en) begin
out=0;

 case (in)
    3'b000: out[0]=1;
    3'b001: out[1]=1;
    3'b010: out[2]=1;
    3'b110: out[3]=1;
    3'b100: out[4]=1;
    3'b101: out[5]=1;
    3'b110: out[6]=1;
    
    3'b000: out[8]=1;
    default: out=0;
    endcase
    end
    else
     out=0;
    end

    
endmodule
