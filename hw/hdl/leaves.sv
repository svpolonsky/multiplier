`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stanislav Polonsky
// 
// Create Date: 07/22/2022 04:39:47 PM
// Design Name: 
// Module Name: subtractsm, add2, comb_mult
// Project Name: comb_karatsuba_mult
// Target Devices: Nexys A7 100T
// Tool Versions: Vivado 2019.1
// Description: 
//   Implement leaf cells like adders and DSP multipliers
// Dependencies: 
//   Xilinx IP multiplier
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//   Adders here are prime candidates for delay minimization
//////////////////////////////////////////////////////////////////////////////////


// subtract two unsigned integers and return sign and magnitude 
module subtractsm #(
    parameter m=64)  
    (
    input logic unsigned [m-1:0] X, 
    input logic unsigned [m-1:0] Y,
    output logic SZ, 
    output logic unsigned [m-1:0] MZ
    );
    logic signed [m:0] Z1,Z2;
    assign Z1=X-Y;
    assign Z2=Y-X;
    assign SZ = (Z1>=0)? 1'b1 : 1'b0;
    assign MZ = (Z1>=0)? Z1 : Z2;
endmodule

module add2
    #(
    parameter m=64
    )
    (
    input logic sgn1,
    input logic [m-1:0] x1,
    input logic sgn2,
    input logic [m-1:0] x2,
    output logic [m:0] z
    );
    assign z = (sgn1? x1 : -x1)+(sgn2? x2 : -x2); 
endmodule

// Use Xilinx IP: instantiate 41x41 bit combinatorial (latency=0) multiplier
// Localize the use of IP to this single module 
module comb_mult
    #(
        parameter m=41
    )
    (
        input   logic unsigned  [m-1:0] X,
        input   logic unsigned  [m-1:0] Y,
        output  logic unsigned  [2*m-1:0] Z
    );
        
    comb_mult_41x41 MULT41 (
        .A(X),  
        .B(Y),  
        .P(Z)  
    );
endmodule

