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

module reg_file( write_addr,read1,read2,clk,write_data,write_ctr,out1,out2);
input[4:0] read1,read2,write_addr;
input[31:0] write_data;
input clk,write_ctr;
output[31:0] out1,out2;


reg[31:0] RF[31:0];
initial begin
RF[0]=8'h0;//zero: Hardwired zero
RF[1]=8'h0;//ra: Return address
RF[2]=8'h0;//sp: Stack pointer
RF[3]=8'h0;//gp: Global pointer
RF[4]=8'h0;//tp: Thread pointer
RF[5]=8'h0;//t0: Temporary
RF[6]=8'h0;//t1: Temporary
RF[7]=8'h0;//t2: Temporary
RF[8]=8'h0;//s0: Saved register or fp: frame pointer
RF[9]=8'h0;//s1: Saved register
RF[10]=8'h0;//a0: Function argument, return value
RF[11]=8'h0;//a1: Function argument, return value
RF[12]=8'h0;//a2: Function argument
RF[13]=8'h0;//a3: Function argument
RF[14]=8'h0;//a4: Function argument
RF[15]=8'h0;//a5: Function argument
RF[16]=8'h0;//a6: Function argument
RF[17]=8'h0;//a7: Function argument
RF[18]=8'h0;//s2: Saved register
RF[19]=8'h0;//s3: Saved register
RF[20]=8'h0;//s4: Saved register
RF[21]=8'h0;//s5: Saved register
RF[22]=8'h0;//s6: Saved register
RF[23]=8'h0;//s7: Saved register
RF[24]=8'h0;//s8: Saved register
RF[25]=8'h0;//s9: Saved register
RF[26]=8'h0;//s10: Saved register
RF[27]=8'h0;//s11: Saved register
RF[28]=8'h0;//t3: Temporary
RF[29]=8'h0;//t4: Temporary
RF[30]=8'h0;//t5: Temporary
RF[31]=8'h0;//t6: Temporary
end


always begin@(negedge clk) if(write_ctr&(write_addr>0))
RF[write_addr]<=write_data;
//<statements>
end

assign out1=RF[read1];
assign out2=RF[read2];
endmodule

