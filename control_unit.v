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
    5'b00000:outctr<=8'b01000111; //load instruction
    5'b01000:outctr<=8'b00001101; //store instruction
    //
    5'b01101:outctr<=8'b01110110; //load upper immediate(LUI) instruction
    5'b00101:outctr<=8'b11110110; //add upper immediate to pc(AUIPC) instruction
    5'b11011:outctr<=8'b10000010; //jump and link(JAL) instruction
    5'b11001:outctr<=8'b10110110; //jump and link register(JALR) instruction

    default:outctr<=8'b0;
    endcase
end
//<statements>

endmodule

