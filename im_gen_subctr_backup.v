///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: im_gen_subctr.v
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

module im_gen_subctr( ctr,out1 );
input[1:0] ctr;
output[2:0] out1;
reg[2:0] out1;

always@(*) begin
case(ctr)
 2'b10:out1<=3'b000;  //this is just for arithmetic I type immediate
 2'b00:out1<=3'b000;  //this is just for load I type immediate
 2'b01:out1<=3'b010;  //this is just for branch B type immediate
 2'b11:out1<=3'b001;  //this is for s type immediate
//<statements>
endcase
end
endmodule

