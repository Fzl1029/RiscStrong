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

module program_counter( reset,pcin,clk,pcout);
input[31:0] pcin;
input reset,clk;
output[31:0] pcout;

reg[31:0] pcout;

always @(posedge clk) begin
if(reset)
pcout<=8'h0;
else
pcout<=pcin;
end
//<statements>

endmodule

