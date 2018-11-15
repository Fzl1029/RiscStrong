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

module mux_3_in( in0, in1, sel, outdata);
input[31:0] in0, in1;
input sel;
output[31:0]outdata;
reg[31:0] outdata;

always @(*)begin
case(sel)
    1'b0:outdata<=in0;
    1'b1:outdata<=in1;
endcase
end
endmodule

