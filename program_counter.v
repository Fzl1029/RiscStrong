///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: program_counter.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO2> <Die::M2GL025> <Package::256 VF>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module program_counter( in1,clk,out1);
input[31:0] in1;
input clk;
output[31:0] out1;

reg[31:0] pc;

always @(posedge clk) begin
pc<=in1;
end
assign out1=pc;
//<statements>

endmodule

