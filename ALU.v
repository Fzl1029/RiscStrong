///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: ALU.v
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

module myALU( in1, in2,sel, outdata, zero);
input[31:0] in1, in2;
input[3:0] sel;
output[31:0] outdata;
output[1:0] zero;

reg zero;
reg[31:0] outdata;

always @(*) begin
case(sel)
    4'b0000:outdata<=($signed(in1)&$signed(in2));
    4'b0001:outdata<=($signed(in1)|$signed(in2));
    4'b0010:outdata<=($signed(in1)+$signed(in2));
    4'b0110:outdata<=($signed(in1)-$signed(in2));
    4'b0111:zero<=$signed(in1) < $signed(in2)?2'b00:($signed(in1) > $signed(in2)?2'b10:2'b11);
    4'b1000:zero<=in1<in2?2'b00:(in1>in2?2'b10:2'b11);
    4'b1001:outdata<=(in1 << in2[4:0]);
    4'b1010:outdata<=(in1 <<< in2[4:0]);
    4'b1011:outdata<=(in1 >>> in2[4:0]);
    4'b1100:outdata<=in1^in2;
    default:outdata<=32'h00000000;
endcase
end
//<statements>

endmodule

