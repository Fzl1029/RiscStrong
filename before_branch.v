///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: before_branch.v
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

module before_branch( aluzero, itype,branchtype, outctr );
input[2:0] aluzero;
input itype;
input[1:0] branchtype;
output  outctr;
reg  outctr;

always @(*) begin
if (itype)
 begin
 case(branchtype)
    2'b00: outctr<=aluzero[1];
    2'b01: outctr<=(aluzero[2]|aluzero[0]);
    2'b10: outctr<=aluzero[2];
    2'b11: outctr<=(aluzero[1]|aluzero[0]);
 endcase
 end
else  outctr<=1'b0;
end
//<statements>

endmodule

