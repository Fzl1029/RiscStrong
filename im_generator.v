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

module im_generator( in1,ctr,out1);
input[31:0] in1;
input[2:0] ctr;
output[31:0] out1;
reg[31:0] out1;

always @(*) begin
case(ctr)
    3'b000:assign out1={{21{in1[31]}},in1[30:25],in1[24:21],in1[20]};                 //I
    3'b001:assign out1={{21{in1[31]}},in1[30:25],in1[11:8],in1[7]};                   //S
    3'b010:assign out1={{20{in1[31]}},in1[7],in1[30:25],in1[11:8],1'b0};              //B
    3'b011:assign out1={in1[31],in1[30:20],in1[19:12],12'b0};                         //U
    3'b100:assign out1={{12{in1[31]}},in1[19:12],in1[20],in1[30:25],in1[24:21],1'b0}; //J
    default:assign out1=32'b0;
endcase
end
//<statements>

endmodule

