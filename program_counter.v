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

module program_counter( reset1,in1,clk,pc);
input[31:0] in1;
input reset1,clk;
output[31:0] pc;

reg[31:0] pc;

always @(posedge clk) begin
if(reset1)
pc<=8'h0;
else
pc<=in1;
end
//<statements>

endmodule

