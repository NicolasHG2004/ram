`timescale 1ns/1ps

module tt_um_femto_cocotb (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        uart_rx,
    output wire        uart_tx,
    input  wire        flash_miso,
    output wire        flash_mosi,
    output wire        flash_cs_n,
    output wire        flash_clk,
    input  wire        ram_miso,
    output wire        ram_mosi,
    output wire        ram_cs_n,
    output wire        ram_clk,
    output wire [31:0] debug_x6,
    output wire [23:0] debug_pc,
    output wire [31:0] debug_flash_rdata,
    output wire [31:0] debug_flash_raw,
    output wire [29:0] debug_instr
);

wire [7:0] ui_in;
wire [7:0] uo_out;
wire [7:0] uio_out;
wire [7:0] uio_oe;

assign ui_in = {5'b00000, uart_rx, ram_miso, flash_miso};
assign flash_mosi = uo_out[0];
assign ram_mosi = uo_out[1];
assign flash_cs_n = uo_out[2];
assign ram_cs_n = uo_out[3];
assign ram_clk = uo_out[4];
assign flash_clk = uo_out[5];
assign uart_tx = uo_out[7];
assign debug_x6 = dut.femto0.CPU.registerFile[6];
assign debug_pc = dut.femto0.CPU.PC;
assign debug_flash_rdata = dut.femto0.RAM_rdata;
assign debug_flash_raw = dut.femto0.mapped_spi_flash.rcv_data;
assign debug_instr = dut.femto0.CPU.instr;


wire [31:0] debug_x1_sram_base = dut.femto0.CPU.registerFile[1];
wire [31:0] debug_x2_dato_wr   = dut.femto0.CPU.registerFile[2];
wire [31:0] debug_x3_dato_rd   = dut.femto0.CPU.registerFile[3];
wire        debug_sram_csb0    = dut.femto0.u_sram.csb0;
wire        debug_sram_web0    = dut.femto0.u_sram.web0;
wire [3:0]  debug_sram_wmask0  = dut.femto0.u_sram.wmask0;
wire [4:0]  debug_sram_addr0   = dut.femto0.u_sram.addr0;
wire [32:0] debug_sram_din0    = dut.femto0.u_sram.din0;
wire [32:0] debug_sram_dout0   = dut.femto0.u_sram.dout0;

tt_um_femto dut (
    .ui_in(ui_in),
    .uo_out(uo_out),
    .uio_in(8'h00),
    .uio_out(uio_out),
    .uio_oe(uio_oe),
    .ena(1'b1),
    .clk(clk),
    .rst_n(rst_n)
);




initial begin
    $dumpfile("tt_um_femto_openram.vcd");
    $dumpvars(0, tt_um_femto_cocotb);
    $dumpvars(0, dut.femto0.CPU.registerFile[1]);
    $dumpvars(0, dut.femto0.CPU.registerFile[2]);
    $dumpvars(0, dut.femto0.CPU.registerFile[3]);
    $dumpvars(0, dut.femto0.CPU.registerFile[4]);
    $dumpvars(0, dut.femto0.CPU.registerFile[5]);
end

endmodule
