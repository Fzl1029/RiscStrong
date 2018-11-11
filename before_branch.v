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

module before_branch( in1, ctr1,ctr2, out1 );
input[2:0] in1;
input ctr1;
input[1:0] ctr2;
output out1;
reg out1;

always @(*) begin
if (ctr1)
 begin
 case(ctr2)
    2'b00:out1<=in1[1];
    2'b01:out1<=(in1[2]|in1[0]);
    2'b10:out1<=in1[2];
    2'b11:out1<=(in1[1]|in1[0]);
 endcase
 end
else out1<=1'b0;
end
//<statements>

endmodule

