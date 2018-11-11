///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: control_unit.v
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

module control_unit( in1, out1);
input[6:0] in1;

output[7:0]out1 ;
reg[7:0] out1;//dmemread,dmemtoreg,aluop[1:0],dmemwrite,alusrc,regwrite,im

always @(*) begin
    case(in1[6:2])
    5'b11000:out1<=8'b00010000; //branch instruction
    5'b00100:out1<=8'b00100111; //immediate arithm
    5'b01100:out1<=8'b00100010; //reg arithm
    default:out1<=8'b0;
    endcase
end
//<statements>

endmodule

