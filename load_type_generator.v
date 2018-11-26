///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: load_type_generator.v
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

module load_type_generator( load_type,in_data,out_data );
input[2:0] load_type;
input[31:0] in_data;
output[31:0] out_data;
reg[31:0] out_data;

always@(*) begin
case(load_type)
    3'b000:out_data={{24{in_data[15]}},in_data[7:0]};
    3'b001:out_data={{16{in_data[15]}},in_data[15:0]};
    3'b010:out_data=in_data;
    3'b100:out_data={{24{1'b0}},in_data[7:0]};
    3'b101:out_data={{16{1'b0}},in_data[15:0]};
    default:out_data=8'h00000000;
endcase
end
//<statements>
endmodule

