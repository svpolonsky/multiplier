`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stanislav Polonsky
// 
// Create Date: 07/04/2022 11:00:46 PM
// Design Name: 
// Module Name: top
// Project Name: Multiplier_Karatsuba
// Target Devices: Nexys A7 100T
// Tool Versions: Vivado 2019.1
// Description: top-level design to deploy on FPGA
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    output [15:0] LED
    );

    
    // lower the board's 100MHz clock
    logic clk_mult;
    clk_mult_10MHz instance_name
        (
        .clk_out1(clk_mult),    
        .clk_in1(clk)
        );     


    logic all_passed, current_passed;  
    wire unsigned [3:0] info; // error counter

    tests tests10MHz(clk_mult, all_passed, current_passed, info);
 
        
    // report using on-board LEDs
    assign LED[15] = all_passed;
    assign LED[14] = current_passed;
    assign LED[3:0] = info;
     
endmodule

