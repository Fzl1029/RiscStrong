///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: store_type.v
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

module store_type( instr, outtype);
input[3:0] instr;
output reg[1:0] outtype;
//<statements>
always@(*)begin
if(instr[0])
begin
case(instr[3:1])
    3'b000:outtype=2'b00;
    3'b001:outtype=2'b01;
    3'b010:outtype=2'b10;
    default:outtype=2'b11;
endcase
end
else outtype=2'b11;
end
endmodule

