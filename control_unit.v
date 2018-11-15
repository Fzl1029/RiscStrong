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

module control_unit( opcode, outctr);
input[6:0] opcode;

output[7:0]outctr ;
reg[7:0] outctr;//dmemread,dmemtoreg,aluop[1:0],dmemwrite,alusrc,regwrite,im

always @(*) begin
    case(opcode[6:2])
    5'b11000:outctr<=8'b00010000; //branch instruction
    5'b00100:outctr<=8'b00100111; //immediate arithm
    5'b01100:outctr<=8'b00100010; //reg arithm
    default:outctr<=8'b0;
    endcase
end
//<statements>

endmodule

