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

module myALU( in1, in2,funsel, outdata, zero);
input[31:0] in1, in2;
input[3:0] funsel;
output[31:0] outdata;
output[2:0] zero;

reg[2:0] zero;
reg[31:0] outdata;

always @(*) begin
case(funsel)
    4'b0000:outdata<=($signed(in1)&$signed(in2));//and
    4'b0001:outdata<=($signed(in1)|$signed(in2));//or
    4'b0010:outdata<=($signed(in1)+$signed(in2));//add
    4'b0110:outdata<=($signed(in1)-$signed(in2));//sub
    4'b0111:zero<=$signed(in1) < $signed(in2)?3'b100:($signed(in1) > $signed(in2)?3'b001:3'b010);//comp
    4'b1000:zero<=in1<in2?3'b100:(in1>in2?3'b001:3'b010);//compU
    4'b1001:outdata<=(in1 << in2[4:0]);//ls
    4'b1010:outdata<=(in1 <<< in2[4:0]);//als
    4'b1011:outdata<=(in1 >>> in2[4:0]);//ars
    4'b1100:outdata<=in1^in2;//xor
    default:outdata<=32'h00000000;
endcase
end
//<statements>

endmodule

