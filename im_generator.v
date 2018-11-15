///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: im_generator.v
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

module im_generator( instin,imgsel,imout);
input[31:0] instin;
input[2:0] imgsel;
output[31:0] imout;
reg[31:0] imout;

always @(*) begin
case(imgsel)
    3'b000:assign imout={{21{instin[31]}},instin[30:25],instin[24:21],instin[20]};                    //I
    3'b001:assign imout={{21{instin[31]}},instin[30:25],instin[11:8],instin[7]};                      //S
    3'b010:assign imout={{20{instin[31]}},instin[7],instin[30:25],instin[11:8],1'b0};                 //B
    3'b011:assign imout={instin[31],instin[30:20],instin[19:12],12'b0};                               //U
    3'b100:assign imout={{12{instin[31]}},instin[19:12],instin[20],instin[30:25],instin[24:21],1'b0}; //J
    default:assign imout=32'b0;
endcase
end
//<statements>

endmodule

