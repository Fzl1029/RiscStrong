///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: reg_file.v
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

module reg_file( write_addr,read1,read2,clk,in1,write_reg,out1,out2);
input[4:0] read1,read2,write_addr;
input[31:0] in1;
input clk,write_reg;
output[31:0] out1,out2;

reg[31:0] RF[31:0];
initial begin
RF[0]=8'h0;
end
assign out1=RF[read1];
assign out2=RF[read2];

always begin@(posedge clk) if(write_reg)
if (write_addr>0)
RF[write_addr]<=in1;
else ;
//<statements>
end
endmodule

