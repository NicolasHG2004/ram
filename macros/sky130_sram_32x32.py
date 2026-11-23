# Capacidad: 32 palabras x 32 bits (128 bytes)
word_size = 32
num_words = 32
write_size = 8              # Genera el pin wmask0[3:0]

num_rw_ports = 1
num_r_ports = 0
num_w_ports = 0
words_per_row = 1

# Requerido en Sky130 para que (cols + replica_col) sea un número par
num_spare_cols = 1

tech_name = "sky130A"

# Compilación rápida
nominal_corner_only = True
analytical_delay = True
route_supplies = "ring"
check_lvsdrc = True

output_name = "sky130_sram_32x32"
output_path = "macro_32x32"
