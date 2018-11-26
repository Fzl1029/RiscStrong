///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: 2bit_decoder.v
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

module dmemctr( inwen,indata,outwen1,outwen2,outwen3,outwen4,outdata1,outdata2,outdata3,outdata4);
input[1:0] inwen;
input[31:0] indata;
output reg outwen1,outwen2,outwen3,outwen4;
output[7:0] outdata1,outdata2,outdata3,outdata4;
reg[3:0] outwen;

assign outdata1=indata[7:0];
assign outdata2=indata[15:8];
assign outdata3=indata[23:16];
assign outdata4=indata[31:24];
always@(*)begin
case(inwen)
    2'b00:outwen=4'b0001;
    2'b01:outwen=4'b0011;
    2'b10:outwen=4'b1111;
    2'b11:outwen=4'b0000;
endcase
outwen1=outwen[0];
outwen2=outwen[1];
outwen3=outwen[2];
outwen4=outwen[3];
end

//<statements>

endmodule

