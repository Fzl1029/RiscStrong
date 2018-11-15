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

module mux_4( datain0, datain1, datain2, datain3, ctr, dataout);
input[31:0] datain0, datain1, datain2, datain3;
input[1:0] ctr;
output[31:0] dataout;
reg[31:0] dataout;

always @(*)begin
case(ctr)
    2'b00:dataout<=datain0;
    2'b10:dataout<=datain1;
    2'b01:dataout<=datain2;
    2'b11:dataout<=datain3;
endcase
end
endmodule

