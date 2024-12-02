`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 10:26:59
// Design Name: 
// Module Name: Traffic_Light_Controller_Main_Tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Traffic_Light_Controller_Main_tb();

wire [2:0] north_light,south_light,east_light,west_light;
reg clk,rst;

Traffic_Light_controller_design dut (.north_light(north_light),.south_light(south_light),.east_light(east_light),.west_light(west_light),.clk(clk),.rst(rst));

initial
 begin
  clk=1'b1;
  forever #5 clk=~clk;
 end
 
initial
 begin
  rst=1'b1;
  #15;
  rst=1'b0;
  #1000;
  $stop;
 end
endmodule
