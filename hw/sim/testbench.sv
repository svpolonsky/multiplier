`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stanislav Polonsky 
// 
// Create Date: 07/21/2022 10:44:02 AM
// Design Name: 
// Module Name: testbench
// Project Name: Multiplier_Karatsuba
// Target Devices: Nexys A7 100T
// Tool Versions: Vivado 2019.1
// Description: 
//   Simulation uses the same module (tests) as FPGA
//   output all_passed=1 indicates successful test  
// Dependencies: 
//   tests
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module testbench();

    logic clk;
    parameter CLK_PERIOD = 10;

    initial begin
        clk <= 1'b0;
        forever begin
            #(CLK_PERIOD/2);
            clk = 1'b1;
            #(CLK_PERIOD/2);
            clk = 1'b0;
        end
    end

    logic all_passed, current_passed;
    wire unsigned [3:0] info; // error counter

    tests testsSim(clk, all_passed, current_passed, info);
    
endmodule
