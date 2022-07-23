`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stanislav Polonsky
// 
// Create Date: 07/11/2022 10:07:46 AM
// Design Name: 
// Module Name: comb_karatsuba_mult
// Project Name: Multiplier_Karatsuba
// Target Devices: Nexys A7 100T
// Tool Versions: Vivado 2019.1
// Description:  
//  Module comb_karatsuba_mult implements O(n**log2(3) Karatsuba multiplication algo 
//  Module karatsuba_mult_axis_1v0 wraps AXI-Stream interface around the multiplier
// Dependencies: 
//  Leaf modules like adders, DSP multipliers, etc.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comb_karatsuba_mult 
    #(
        parameter m = 328,     // 2^3*41
        parameter stage = 3   // recursion level
    )
    (   
        input   logic unsigned  [m-1:0] X,
        input   logic unsigned  [m-1:0] Y,
        output  logic unsigned  [2*m-1:0] Z
    );

    localparam m2 = m / 2;
     
    // Hi, Lo of inputs
    logic unsigned  [m2-1:0] X1, X0;  
    logic unsigned  [m2-1:0] Y1, Y0;
  
    assign  {X1, X0} = X;
    assign  {Y1, Y0} = Y;

    // intermediate results: signs and magnitudes
    logic SX01, SY10;
    logic unsigned [m2-1:0] MX01, MY10;

    // X0-X1, Y1-Y0
    localparam ADD=1'b1;
    localparam SUBTRACT=1'b0;
    subtractsm #(m2) X01 (X0, X1, SX01, MX01);
    subtractsm #(m2) Y10 (Y1, Y0, SY10, MY10);
    
    // intermediate results
    logic unsigned [m-1:0] Z2,XY, Z0;
   
    generate
        if(stage == 1)
            begin: Z2DIRECT
                // leaf multiplication
                comb_mult #(.m(m2)) Z2MULT (.X(X1),.Y(Y1),.Z(Z2));
            end
        else 
            begin: Z2RECUR
                comb_karatsuba_mult #(.m(m2),.stage(stage-1)) Z2INST (X1,Y1,Z2);
            end
    endgenerate
    
    generate
        if(stage == 1)
            begin: XYDIRECT
                // leaf multiplication
                comb_mult #(.m(m2)) Z2MULT (.X(MX01),.Y(MY10),.Z(XY));
            end
        else 
            begin: XYRECUR
                comb_karatsuba_mult #(.m(m2),.stage(stage-1)) XYINST (MX01,MY10,XY);
            end
    endgenerate
    
    generate
        if(stage == 1)
            begin: Z0DIRECT
                // leaf multiplication
                comb_mult #(.m(m2)) Z2MULT (.X(X0),.Y(Y0),.Z(Z0));
            end
        else 
            begin: Z0RECUR
                comb_karatsuba_mult #(.m(m2),.stage(stage-1)) Z0INST (X0,Y0,Z0);
            end
    endgenerate

    
    // Z1, assert MSB==0
    logic unsigned [m+1:0] Z1;
    logic unsigned [m:0] Z20;
    add2 #(.m(m)) Z20TERM (1'b1, Z2, 1'b1, Z0, Z20);
    add2 #(.m(m+1)) Z1TERM (SX01 ~^ SY10, {1'b0,XY}, 1'b1, Z20, Z1);
    
    // final product Z=X*Y
    logic unsigned [m/2-1:0] PAD0;
    assign PAD0 = 'b0;
    logic DC; // don't care
    add2 #(.m(2*m)) RESULT (1'b1, {Z2,Z0}, 1'b1, {PAD0,Z1,PAD0}, {DC,Z});
endmodule

module karatsuba_mult_axis_1v0 
    #(
        parameter m = 328,
        parameter stage = 3
    ) 
    (
        // I assume the same clock for all AXI Streaming I/O
        input logic clk,
        // AXI Streaming input: X
        input logic X_tvalid,
        input logic unsigned  [m-1:0] X_tdata,
        // AXI Streaming input: Y 
        input logic Y_tvalid,
        input logic unsigned  [m-1:0] Y_tdata,
        // AXI Streaming output: Z
        output logic Z_tvalid,
        output logic unsigned  [2*m-1:0] Z_tdata
    );
    
    wire unsigned [2*m-1:0] Z;
    comb_karatsuba_mult #(m, stage) mult (X_tdata, Y_tdata, Z);
    
    always_ff @(posedge clk)
        begin
            Z_tvalid <= X_tvalid & Y_tvalid;
            Z_tdata <= Z;
        end
    
endmodule
