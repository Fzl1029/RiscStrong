///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: adder_addr.v
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

module adder_addr( in1, in2, out1);
input[31:0] in1,in2;
output[31:0] out1;

assign out1=in1+in2;
//<statements>

endmodule

