`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stanislav Polonsky
// 
// Create Date: 07/21/2022 09:46:04 AM
// Design Name: 
// Module Name: tests
// Project Name: Multiplier_Karatsuba
// Target Devices: Nexys A7 100T
// Tool Versions: Vivado 2019.1
// Description: Tun tests on data from pre-recorded files. Good for both sumulation and FPGA.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tests(
    input logic clk_mult,
    output logic all_passed,
    output logic current_passed,
    output logic [3:0] info
    );
    
    // Multiplier configuration
    localparam WIDTH=328;
    localparam nSTAGE=3;
    
    // AXI Streaming fixtures
    logic X_tvalid, Y_tvalid, Z_tvalid;
    logic unsigned [WIDTH-1:0] X_tdata;
    logic unsigned [WIDTH-1:0] Y_tdata;
    logic unsigned [2*WIDTH-1:0] Z_tdata;

    // memory for test vectors
    localparam ADDR_WIDTH = 4; 
    localparam TEST_DEPTH = 2**ADDR_WIDTH;
    logic [ADDR_WIDTH-1:0] test_counter;
    logic unsigned [ADDR_WIDTH-1:0] error_counter='b0;
    reg [WIDTH-1:0] XARRAY [0:TEST_DEPTH-1];
    reg [WIDTH-1:0] YARRAY [0:TEST_DEPTH-1];
    reg [2*WIDTH-1:0] ZARRAY [0:TEST_DEPTH-1];
    reg [2*WIDTH-1:0] ZREF [0:1]; // increase the depth for larger multiplier's latency


    initial 
        begin
            $readmemb("xvectors.mem",XARRAY);
            $readmemb("yvectors.mem",YARRAY);
            $readmemb("zvectors.mem",ZARRAY);
            test_counter={ADDR_WIDTH{1'b0}};
        end

    // read test vectors from memory
    always @(posedge clk_mult)
        begin
            test_counter <= test_counter+1;
            X_tdata <= XARRAY[test_counter];
            X_tvalid <= 1'b1;
            Y_tdata <= YARRAY[test_counter];
            Y_tvalid <= 1'b1;
            ZREF[1] <= ZARRAY[test_counter];
            ZREF[0] <= ZREF[1];
        end

    // instantiate the multipler, our DUT    
    karatsuba_mult_axis_1v0 
        #(
            .m(WIDTH),
            .stage(nSTAGE)
        )
        mult 
        (
            .clk (clk_mult),
            // AXI Streaming input: X
            .X_tvalid (X_tvalid),
            .X_tdata (X_tdata),
            // AXI Streaming input: Y 
            .Y_tvalid (Y_tvalid),
            .Y_tdata (Y_tdata),
            // AXI Streaming output: Z
            .Z_tvalid (Z_tvalid),
            .Z_tdata (Z_tdata)
        );
        
    // check the answer
    always_ff @(posedge clk_mult)
        begin
            if (ZREF[0] != Z_tdata)
                begin
                    error_counter <= error_counter + 1;
                end
                
            if (&test_counter)
                begin
                    // test completed
                    all_passed <=(error_counter=='b0)?'b1:'b0;
                    error_counter <= 'b0;
                end
        end        
    
    // report on current test vector and error_counter
    assign info = error_counter;
    assign current_passed = Z_tvalid && (ZREF[0] == Z_tdata);
    
endmodule
