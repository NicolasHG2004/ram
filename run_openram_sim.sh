#!/usr/bin/env bash
set -e

# Directorio base de pruebas
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -d "$SCRIPT_DIR/femto_UN/test" ]; then
  TEST_DIR="$SCRIPT_DIR/femto_UN/test"
else
  TEST_DIR="$SCRIPT_DIR"
fi

cd "$TEST_DIR"

echo "=== 1. Compilando firmware RISC-V (test_prog.s) ==="
riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib -Wl,-Ttext=0x00000000 -o test_prog.elf test_prog.s
riscv64-unknown-elf-objcopy -O binary test_prog.elf test_prog.bin

python3 -c '
with open("test_prog.bin", "rb") as f:
    data = f.read()
with open("firmware_flash.hex", "w") as f:
    f.write("@00000000\n")
    for i, b in enumerate(data):
        f.write(f"{b:02X} ")
        if (i + 1) % 16 == 0:
            f.write("\n")
    f.write("\n")
'

echo "=== 2. Compilando SoC con Icarus Verilog ==="
iverilog -g2012 -DBENCH -s tb_femto_openram -o sim_femto_openram \
  tb_femto_openram.v \
  ../src/femto.v \
  ../src/femtorv32_quark_un_irq.v \
  ../src/perip_uart.v \
  ../src/uart.v \
  ../src/MappedSPIFlash.v \
  ../src/MappedSPIRAM.v \
  ../macros/sky130_sram_16x8.v \
  ../../tinytapeout/cores/sim_spi_flash/spiflash.v

echo "=== 3. Ejecutando simulación ==="
vvp sim_femto_openram
