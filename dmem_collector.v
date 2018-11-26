///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: dmem_collector.v
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

module dmem_collector( in1,in2,in3,in4,outdata );
input[7:0] in1,in2,in3,in4;
output[31:0] outdata;

assign outdata={in4,in3,in2,in1};
//<statements>

endmodule

