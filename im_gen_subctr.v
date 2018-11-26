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

module im_gen_subctr( ins,out1 );
input[4:0] ins;
output[2:0] out1;
reg[2:0] out1;

always@(*) begin
if (ins==5'b11000)begin
out1<=3'b010; //this is just for branch B type immediate
end
else begin
case(ins[4:1])
 4'b0110:out1<=3'b011; //for U type immediate(LUI)
 4'b0010:out1<=3'b011; //for U type immediate(AUIPC)
 4'b1101:out1<=3'b100; //for J type immediate(JAL)
 4'b1100:out1<=3'b000; //for I type immediate(JALR)
 4'b0000:out1<=3'b000; //this is just for arithmetic I type immediate
 4'b0100:out1<=3'b001; //this is for s type immediate
 4'b0010:out1<=3'b000; //this is just for arithmetic I type immediate

 //2'b10:out1<=3'b000;  //this is just for arithmetic I type immediate
 //2'b00:out1<=3'b000;  //this is just for load I type immediate
 //2'b01:out1<=3'b010;  //this is just for branch B type immediate
 //2'b11:out1<=3'b001;  //this is for s type immediate
//<statements>
endcase
end
end
endmodule

