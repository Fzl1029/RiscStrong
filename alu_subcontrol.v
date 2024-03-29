///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: alu_subcontrol.v
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

module alu_subcontrol(aluop,instin,outsel);
input[1:0] aluop;
input[31:0] instin;
output[3:0] outsel;
reg[3:0]outsel;

always @(*) begin
    if (aluop==2'b10)
        begin
        case({instin[30],instin[14:12]})
        4'b0000:outsel<=4'b0010;//ADD
        4'b0001:outsel<=4'b1001;//SLL
        4'b0010:outsel<=4'b0111;//SLT
        4'b0011:outsel<=4'b1000;//SLTU
        4'b0100:outsel<=4'b1100;//XOR
        4'b0101:outsel<=4'b1011;//SRA
        4'b0110:outsel<=4'b0001;//OR
        4'b0111:outsel<=4'b0000;//AND
        4'b1000:outsel<=4'b0110;//SUB
        default:outsel<=4'b1111;
        endcase
        end
    else if (aluop==2'b01)
        begin
        case(instin[13])
        1'b0:outsel<=4'b0111;//signed
        1'b1:outsel<=4'b1000;//unsigned
        //3'b000:outsel<=4'b0111;//BEQ s
        //3'b001:outsel<=4'b0111;//BNE s
        //3'b100:outsel<=4'b0111;//BLT s
        //3'b101:outsel<=4'b0111;//BGE s
        //3'b110:outsel<=4'b1000;//BLTU
        //3'b111:outsel<=4'b1000;//BGEU
        endcase
        end
    else if(aluop==2'b00)
        outsel<=4'b0010;//ADD<-Load&store address
    else
    outsel<=4'b1101;
end
//<statements>

endmodule

