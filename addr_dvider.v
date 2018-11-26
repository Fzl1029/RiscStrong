///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: addr_dvider.v
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

module addr_dvider( full_addr, addr_12);
input[31:0] full_addr;
output[11:0] addr_12;



assign addr_12=full_addr[13:2];

//<statements>

endmodule

