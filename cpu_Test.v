//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sat Nov 10 22:49:31 2018
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: cpu_Test.v
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

`timescale 1ns/100ps

module cpu_Test;

parameter SYSCLK_PERIOD = 1000;// 10MHZ

reg SYSCLK;
reg NSYSRESET,rst;
reg[31:0] fr_imem;
wire[31:0] to_imem,fr_dmem,to_dmem;


initial
begin
    SYSCLK = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Simple_core
//////////////////////////////////////////////////////////////////////
Simple_core Simple_core_0 (
    // Inputs
    .rst(rst),
    .fr_imem(fr_imem),
    .fr_dmem(fr_dmem),
    .clk(SYSCLK),

    // Outputs
    .to_imem(to_imem),
    .to_dmem(to_dmem)

    // Inouts

);

initial begin
rst=1'b1;
#500
fr_imem=32'b00000000001100010001001001100011;//BNE
#1000;
rst=1'b0;
fr_imem=32'b00000000001100010100001001100011;//BLT
#1000;
fr_imem=32'b00000000001100010101001001100011;//BGE
#1000;
fr_imem=32'b00000000001100010110001001100011;//BLTU
#1000;
fr_imem=32'b00000000001100010111001001100011;//BGEU
#1000;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
//fr_imem=32'b
//#100;
end

endmodule

