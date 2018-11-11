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

module Simple_core( rst,to_imem, fr_imem, to_dmem, fr_dmem,clk);
input[31:0] fr_dmem,fr_imem;
input rst,clk;
output[31:0] to_dmem,to_imem;

wire[31:0] pcout,alu_out;
wire[31:0] pcin,regout1,regout2,aluin2,reg_in_data,igen,branch_add_out,pcadd;
wire[7:0] mctrl;
wire[3:0] alu_ctr;
wire[2:0] alu_zero,im_ctr;
wire branch_ctrl;

reg_file         myreg_file(.write_addr(fr_imem[11:7]),.read1(fr_imem[19:15]),.read2(fr_imem[24:20]),.clk(clk),.in1(reg_in_data),.write_reg(mctrl[1]),.out1(regout1),.out2(regout2));
program_counter  my_pc(.reset1(rst),.in1(pcin),.pc(pcout),.clk(clk));
myALU            my_ALU(.in1(regout1), .in2(aluin2),.sel(alu_ctr), .outdata(alu_out), .zero(alu_zero));
adder_addr       before_pc_add(.in1(32'b100),.in2(pcout),.out1(pcadd));
mux_in_alu       atalu( .in1(regout2), .in2(igen), .ctr(mctrl[2]), .out1(aluin2));
mux_in_alu       afterdmem( .in1(alu_out), .in2(fr_dmem), .ctr(mctrl[7]), .out1(reg_in_data));
mux_in_alu       before_pc_mux(.in1(pcadd),.in2(branch_add_out),.ctr(branch_ctrl),.out1(pcin));

im_gen_subctr    my_im_ctr( .in1(fr_imem),.ctr(mctrl[5:4]),.out1(im_ctr) );
im_generator     my_im_g(.in1(fr_imem),.ctr(im_ctr),.out1(igen));
adder_addr       branch_add(.in1(igen),.in2(pcout),.out1(branch_add_out));

control_unit     my_ctr(.in1(fr_imem[6:0]), .out1(mctrl));
alu_subcontrol   my_alu_ctr(.aluop(mctrl[5:4]),.in1(fr_imem),.outsel(alu_ctr));
before_branch    my_branch(.in1(alu_zero),.ctr1(mctrl[4]),.ctr2({fr_imem[14],fr_imem[12]}),.out1(branch_ctrl));
assign to_imem=pcout;
assign to_deme=alu_out;

endmodule

