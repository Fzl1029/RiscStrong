///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: mux_in_alu.v
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

module mux_in_alu( in1, in2, ctr, out1);
input[31:0] in1, in2;
input ctr;
output[31:0]out1;
reg[31:0] out1;

always @(*)begin
case(ctr)
    1'b0:out1<=in1;
    1'b1:out1<=in2;
endcase
end
endmodule

