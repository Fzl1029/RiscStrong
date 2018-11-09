///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Simple_core.v
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

module Simple_core( to_imem, fr_imem, to_dmem, fr_dmem,clk);
input[31:0] fr_dmem,fr_imem;
input clk;
output[31:0] to_dmem,to_imem;

wire[31:0] pcout,pcin,regout1,regout2,aluin2,alu_out,reg_in_data,igen,branch_add_out,pcadd;

reg_file         myreg_file(.write_addr(fr_imem[11:7]),.read1(fr_imem[19:15]),.read2(fr_imem[24:20]),.clk(clk),.in1(reg_in_data),.write_reg(),.out1(regout1),.out2(regout2));
program_counter  my_pc(.in1(pcin),.out1(pcout),.clk(clk));
myALU            my_ALU(.in1(regout1), .in2(aluin2),.sel(), .outdata(alu_out), .zero());
adder_addr       before_pc_add(.in1(8'h00000004),.in2(pcout),.out1(pcadd));
mux_in_alu       atalu( .in1(regout2), .in2(igen), .ctr(), .out1(aluin2));
mux_in_alu       tdmem( .in1(fr_dmem), .in2(alu_o9ut), .ctr(), .out1(reg_in_data));
mux_in_alu       before_pc_mux(.in1(pcadd),.in2(branch_add_out),.ctr(),.out1(pcin))
im_generator     my_im_g(.in1(fr_imem),.ctr(),.out1(igen));
adder_addr       branch_add(.in1(igen),.in2(pcout),.out1(branch_add_out));

control_unit     my_ctr()
assign to_imem=pcout;
assign to_dmem=alu_out

endmodule

