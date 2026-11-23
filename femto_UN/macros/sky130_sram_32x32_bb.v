/* verilator lint_off UNUSED */
module sky130_sram_32x32 (
`ifdef USE_POWER_PINS
    inout  wire        vccd1,
    inout  wire        vssd1,
`endif
    input  wire        clk0,
    input  wire        csb0,
    input  wire        web0,
    input  wire [3:0]  wmask0,
    input  wire        spare_wen0,
    input  wire [4:0]  addr0,
    input  wire [32:0] din0,
    output wire [32:0] dout0
);
endmodule
/* verilator lint_on UNUSED */
