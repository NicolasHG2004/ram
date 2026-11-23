SIM ?= icarus
TOPLEVEL_LANG ?= verilog

SRC_FILES := $(shell python3 -c "import re; txt=open('../info.yaml').read().split('source_files:')[1].split('top_module:')[0]; print(' '.join('../src/' + m for m in re.findall(r'-\s*\"?([^\s\"#]+)\"?', txt)))")

VERILOG_SOURCES += $(SRC_FILES) ../macros/sky130_sram_32x32.v
COMPILE_ARGS += -DCOCOTB_SIM

TOPLEVEL = tt_um_femto
MODULE = test

include $(shell cocotb-config --makefiles)/Makefile.sim
