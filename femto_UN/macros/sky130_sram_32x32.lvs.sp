**************************************************
* OpenRAM generated memory.
* Words: 32
* Data bits: 32
* Banks: 1
* Column mux: 1:1
* Trimmed: False
* LVS: True
**************************************************

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u

.SUBCKT sky130_sram_32x32_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36u l=0.15u
.ENDS sky130_sram_32x32_pinv_13

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT sky130_sram_32x32_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pnand2_0

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=7 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=7 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

.SUBCKT sky130_sram_32x32_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=7 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=7 w=1.68u l=0.15u
.ENDS sky130_sram_32x32_pinv_2

.SUBCKT sky130_sram_32x32_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ sky130_sram_32x32_pinv_2
.ENDS sky130_sram_32x32_pdriver_0

.SUBCKT sky130_sram_32x32_pand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ sky130_sram_32x32_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pdriver_0
.ENDS sky130_sram_32x32_pand2_0

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 10
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=6 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=6 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_10

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u

.SUBCKT sky130_sram_32x32_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=1.26u l=0.15u
.ENDS sky130_sram_32x32_pinv_6

.SUBCKT sky130_sram_32x32_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [3, 10]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sky130_sram_32x32_pinv_6
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ sky130_sram_32x32_pinv_10
.ENDS sky130_sram_32x32_pdriver_2
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* SPICE3 file created from sky130_fd_bd_sram__openram_dff.ext - technology: EFS8A

.subckt sky130_fd_bd_sram__openram_dff D Q CLK VDD GND
X1000 a_511_725# a_n8_115# VDD VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1001 a_353_115# CLK a_11_624# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1002 a_353_725# a_203_89# a_11_624# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1003 a_11_624# a_203_89# a_161_115# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1004 a_11_624# CLK a_161_725# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1005 GND Q a_703_115# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1006 VDD Q a_703_725# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1007 a_203_89# CLK GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1008 a_203_89# CLK VDD VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1009 a_161_115# D GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1010 a_161_725# D VDD VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1011 GND a_11_624# a_n8_115# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1012 a_703_115# a_203_89# ON GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1013 VDD a_11_624# a_n8_115# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1014 a_703_725# CLK ON VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1015 Q ON VDD VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1016 Q ON GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1017 ON a_203_89# a_511_725# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1018 ON CLK a_511_115# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1019 GND a_n8_115# a_353_115# GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X1020 VDD a_n8_115# a_353_725# VDD sky130_fd_pr__pfet_01v8 W=3u L=0.15u m=1
X1021 a_511_115# a_n8_115# GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
.ends

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

.SUBCKT sky130_sram_32x32_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.68u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=1.68u l=0.15u
.ENDS sky130_sram_32x32_pinv_1

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT sky130_sram_32x32_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.26u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pinv_0

.SUBCKT sky130_sram_32x32_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ sky130_fd_bd_sram__openram_dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ sky130_sram_32x32_pinv_0
Xdff_buf_inv2
+ Qb Q vdd gnd
+ sky130_sram_32x32_pinv_1
.ENDS sky130_sram_32x32_dff_buf_0

.SUBCKT sky130_sram_32x32_dff_buf_array
+ din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 2 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ sky130_sram_32x32_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ sky130_sram_32x32_dff_buf_0
.ENDS sky130_sram_32x32_dff_buf_array

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT sky130_sram_32x32_pnand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand3_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand3_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand3_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand3_nmos1 Z C net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
Xpnand3_nmos2 net1 B net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
Xpnand3_nmos3 net2 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pnand3

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 33
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=18 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=18 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_12

.SUBCKT sky130_sram_32x32_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [33]
Xbuf_inv1
+ A Z vdd gnd
+ sky130_sram_32x32_pinv_12
.ENDS sky130_sram_32x32_pdriver_4

.SUBCKT sky130_sram_32x32_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 33
Xpand3_nand
+ A B C zb_int vdd gnd
+ sky130_sram_32x32_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pdriver_4
.ENDS sky130_sram_32x32_pand3_0

.SUBCKT sky130_sram_32x32_pnand2_1
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pnand2_1

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=22 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=22 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 40
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=22 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=22 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_11

.SUBCKT sky130_sram_32x32_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [40]
Xbuf_inv1
+ A Z vdd gnd
+ sky130_sram_32x32_pinv_11
.ENDS sky130_sram_32x32_pdriver_3

.SUBCKT sky130_sram_32x32_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 40
Xpand3_nand
+ A B C zb_int vdd gnd
+ sky130_sram_32x32_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pdriver_3
.ENDS sky130_sram_32x32_pand3

.SUBCKT sky130_sram_32x32_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.68u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=1.68u l=0.15u
.ENDS sky130_sram_32x32_pinv_14

.SUBCKT sky130_sram_32x32_pinv_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36u l=0.15u
.ENDS sky130_sram_32x32_pinv_5

.SUBCKT sky130_sram_32x32_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 11
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=6 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=6 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_15

.SUBCKT sky130_sram_32x32_pdriver_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4, 11]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sky130_sram_32x32_pinv_5
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ sky130_sram_32x32_pinv_5
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ sky130_sram_32x32_pinv_14
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ sky130_sram_32x32_pinv_15
.ENDS sky130_sram_32x32_pdriver_5

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=37 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=37 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 68
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=37 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=37 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_9

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=13 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=13 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 23
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=13 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=13 w=2.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_8

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=5 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=5 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sky130_sram_32x32_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=5 w=2.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=5 w=1.68u l=0.15u
.ENDS sky130_sram_32x32_pinv_7

.SUBCKT sky130_sram_32x32_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 3, 8, 23, 68]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sky130_sram_32x32_pinv_5
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ sky130_sram_32x32_pinv_5
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ sky130_sram_32x32_pinv_6
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ sky130_sram_32x32_pinv_7
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ sky130_sram_32x32_pinv_8
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ sky130_sram_32x32_pinv_9
.ENDS sky130_sram_32x32_pdriver_1

.SUBCKT sky130_sram_32x32_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36u l=0.15u
.ENDS sky130_sram_32x32_pinv_16

.SUBCKT sky130_sram_32x32_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv1
+ dout_1 dout_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv2
+ dout_2 dout_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv3
+ dout_3 dout_4 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv4
+ dout_4 dout_5 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv5
+ dout_5 dout_6 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv6
+ dout_6 dout_7 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv7
+ dout_7 dout_8 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdinv8
+ dout_8 out vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_8_0
+ out n_8_0 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_8_1
+ out n_8_1 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_8_2
+ out n_8_2 vdd gnd
+ sky130_sram_32x32_pinv_16
Xdload_8_3
+ out n_8_3 vdd gnd
+ sky130_sram_32x32_pinv_16
.ENDS sky130_sram_32x32_delay_chain

.SUBCKT sky130_sram_32x32_control_logic_rw
+ csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 32
* words_per_row: 1
* word_size 32
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ sky130_sram_32x32_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ sky130_sram_32x32_pdriver_1
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ sky130_sram_32x32_pinv_13
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ sky130_sram_32x32_pand2_0
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ sky130_sram_32x32_pand2_0
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ sky130_sram_32x32_pdriver_2
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ sky130_sram_32x32_pinv_13
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ sky130_sram_32x32_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ sky130_sram_32x32_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ sky130_sram_32x32_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ sky130_sram_32x32_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ sky130_sram_32x32_pdriver_5
.ENDS sky130_sram_32x32_control_logic_rw

.SUBCKT sky130_sram_32x32_wmask_dff
+ din_0 din_1 din_2 din_3 dout_0 dout_1 dout_2 dout_3 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 4
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c1
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c2
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c3
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sky130_sram_32x32_wmask_dff

.SUBCKT sky130_sram_32x32_spare_wen_dff
+ din_0 dout_0 clk vdd gnd
* INPUT : din_0 
* OUTPUT: dout_0 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 1
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sky130_sram_32x32_spare_wen_dff

.SUBCKT sky130_sram_32x32_row_addr_dff
+ din_0 din_1 din_2 din_3 din_4 dout_0 dout_1 dout_2 dout_3 dout_4 clk
+ vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 5 cols: 1
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r1_c0
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r2_c0
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r3_c0
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r4_c0
+ din_4 dout_4 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sky130_sram_32x32_row_addr_dff

.SUBCKT sky130_sram_32x32_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7
+ dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16
+ dout_17 dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 dout_24
+ dout_25 dout_26 dout_27 dout_28 dout_29 dout_30 dout_31 dout_32 clk
+ vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 33
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c1
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c2
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c3
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c4
+ din_4 dout_4 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c5
+ din_5 dout_5 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c6
+ din_6 dout_6 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c7
+ din_7 dout_7 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c8
+ din_8 dout_8 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c9
+ din_9 dout_9 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c10
+ din_10 dout_10 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c11
+ din_11 dout_11 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c12
+ din_12 dout_12 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c13
+ din_13 dout_13 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c14
+ din_14 dout_14 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c15
+ din_15 dout_15 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c16
+ din_16 dout_16 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c17
+ din_17 dout_17 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c18
+ din_18 dout_18 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c19
+ din_19 dout_19 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c20
+ din_20 dout_20 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c21
+ din_21 dout_21 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c22
+ din_22 dout_22 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c23
+ din_23 dout_23 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c24
+ din_24 dout_24 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c25
+ din_25 dout_25 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c26
+ din_26 dout_26 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c27
+ din_27 dout_27 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c28
+ din_28 dout_28 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c29
+ din_29 dout_29 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c30
+ din_30 dout_30 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c31
+ din_31 dout_31 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c32
+ din_32 dout_32 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sky130_sram_32x32_data_dff

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=7.0 l=0.15 pd=14.30 ps=14.30 as=2.62u ad=2.62u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=3.0 l=0.15 pd=6.30 ps=6.30 as=1.12u ad=1.12u

.SUBCKT sky130_sram_32x32_pinv_dec_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=7.0u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=3.0u l=0.15u
.ENDS sky130_sram_32x32_pinv_dec_0
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* NGSPICE file created from sky130_fd_bd_sram__openram_sp_nand2_dec.ext - technology: EFS8A


* Top level circuit sky130_fd_bd_sram__openram_sp_nand2_dec
.subckt sky130_fd_bd_sram__openram_sp_nand2_dec A B Z VDD GND

X1001 Z B VDD VDD sky130_fd_pr__pfet_01v8 W=1.12u L=0.15u m=1
X1002 VDD A Z VDD sky130_fd_pr__pfet_01v8 W=1.12u L=0.15u m=1
X1000 Z A a_n722_276# GND sky130_fd_pr__nfet_01v8 W=0.74u L=0.15u m=1
X1003 a_n722_276# B GND GND sky130_fd_pr__nfet_01v8 W=0.74u L=0.15u m=1
.ends


.SUBCKT sky130_sram_32x32_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 33
Xwld_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_sp_nand2_dec
Xwl_driver
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pinv_dec_0
.ENDS sky130_sram_32x32_wordline_driver

.SUBCKT sky130_sram_32x32_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23
+ in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 wl_0 wl_1 wl_2 wl_3
+ wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15
+ wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26
+ wl_27 wl_28 wl_29 wl_30 wl_31 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 33
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and16
+ in_16 en wl_16 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and17
+ in_17 en wl_17 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and18
+ in_18 en wl_18 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and19
+ in_19 en wl_19 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and20
+ in_20 en wl_20 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and21
+ in_21 en wl_21 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and22
+ in_22 en wl_22 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and23
+ in_23 en wl_23 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and24
+ in_24 en wl_24 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and25
+ in_25 en wl_25 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and26
+ in_26 en wl_26 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and27
+ in_27 en wl_27 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and28
+ in_28 en wl_28 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and29
+ in_29 en wl_29 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and30
+ in_30 en wl_30 vdd gnd
+ sky130_sram_32x32_wordline_driver
Xwl_driver_and31
+ in_31 en wl_31 vdd gnd
+ sky130_sram_32x32_wordline_driver
.ENDS sky130_sram_32x32_wordline_driver_array

.SUBCKT sky130_sram_32x32_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_sp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pinv_dec_0
.ENDS sky130_sram_32x32_and2_dec_0

.SUBCKT sky130_sram_32x32_pinv_dec
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36u l=0.15u
.ENDS sky130_sram_32x32_pinv_dec
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* NGSPICE file created from sky130_fd_bd_sram__openram_sp_nand3_dec.ext - technology: EFS8A


* Top level circuit sky130_fd_bd_sram__openram_sp_nand3_dec
.subckt sky130_fd_bd_sram__openram_sp_nand3_dec A B C Z VDD GND

X1001 Z A a_n346_328# GND sky130_fd_pr__nfet_01v8 W=0.74u L=0.15u m=1
X1002 a_n346_256# C GND GND sky130_fd_pr__nfet_01v8 W=0.74u L=0.15u m=1
X1003 a_n346_328# B a_n346_256# GND sky130_fd_pr__nfet_01v8 W=0.74u L=0.15u m=1
X1000 Z B VDD VDD sky130_fd_pr__pfet_01v8 W=1.12u L=0.15u m=1
X1004 Z A VDD VDD sky130_fd_pr__pfet_01v8 W=1.12u L=0.15u m=1
X1005 Z C VDD VDD sky130_fd_pr__pfet_01v8 W=1.12u L=0.15u m=1
.ends


.SUBCKT sky130_sram_32x32_and3_dec
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand
+ A B C zb_int vdd gnd
+ sky130_fd_bd_sram__openram_sp_nand3_dec
Xpand3_dec_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pinv_dec
.ENDS sky130_sram_32x32_and3_dec

.SUBCKT sky130_sram_32x32_hierarchical_predecode3x8
+ in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ sky130_sram_32x32_pinv_dec
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ sky130_sram_32x32_pinv_dec
Xpre_inv_2
+ in_2 inbar_2 vdd gnd
+ sky130_sram_32x32_pinv_dec
XXpre3x8_and_0
+ inbar_0 inbar_1 inbar_2 out_0 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_1
+ in_0 inbar_1 inbar_2 out_1 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_2
+ inbar_0 in_1 inbar_2 out_2 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_3
+ in_0 in_1 inbar_2 out_3 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_4
+ inbar_0 inbar_1 in_2 out_4 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_5
+ in_0 inbar_1 in_2 out_5 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_6
+ inbar_0 in_1 in_2 out_6 vdd gnd
+ sky130_sram_32x32_and3_dec
XXpre3x8_and_7
+ in_0 in_1 in_2 out_7 vdd gnd
+ sky130_sram_32x32_and3_dec
.ENDS sky130_sram_32x32_hierarchical_predecode3x8

.SUBCKT sky130_sram_32x32_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_sp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pinv_dec
.ENDS sky130_sram_32x32_and2_dec

.SUBCKT sky130_sram_32x32_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ sky130_sram_32x32_pinv_dec
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ sky130_sram_32x32_pinv_dec
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ sky130_sram_32x32_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ sky130_sram_32x32_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ sky130_sram_32x32_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ sky130_sram_32x32_and2_dec
.ENDS sky130_sram_32x32_hierarchical_predecode2x4

.SUBCKT sky130_sram_32x32_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 decode_16 decode_17
+ decode_18 decode_19 decode_20 decode_21 decode_22 decode_23 decode_24
+ decode_25 decode_26 decode_27 decode_28 decode_29 decode_30 decode_31
+ vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ sky130_sram_32x32_hierarchical_predecode2x4
Xpre3x8_0
+ addr_2 addr_3 addr_4 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11
+ vdd gnd
+ sky130_sram_32x32_hierarchical_predecode3x8
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_16
+ out_0 out_8 decode_16 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_20
+ out_0 out_9 decode_20 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_24
+ out_0 out_10 decode_24 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_28
+ out_0 out_11 decode_28 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_17
+ out_1 out_8 decode_17 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_21
+ out_1 out_9 decode_21 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_25
+ out_1 out_10 decode_25 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_29
+ out_1 out_11 decode_29 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_18
+ out_2 out_8 decode_18 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_22
+ out_2 out_9 decode_22 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_26
+ out_2 out_10 decode_26 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_30
+ out_2 out_11 decode_30 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_19
+ out_3 out_8 decode_19 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_23
+ out_3 out_9 decode_23 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_27
+ out_3 out_10 decode_27 vdd gnd
+ sky130_sram_32x32_and2_dec
XDEC_AND_31
+ out_3 out_11 decode_31 vdd gnd
+ sky130_sram_32x32_and2_dec
.ENDS sky130_sram_32x32_hierarchical_decoder

.SUBCKT sky130_sram_32x32_port_address
+ addr_0 addr_1 addr_2 addr_3 addr_4 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5
+ wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17
+ wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28
+ wl_29 wl_30 wl_31 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 dec_out_0 dec_out_1 dec_out_2
+ dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9
+ dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15
+ dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21
+ dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27
+ dec_out_28 dec_out_29 dec_out_30 dec_out_31 vdd gnd
+ sky130_sram_32x32_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10
+ wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21
+ wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en vdd
+ gnd
+ sky130_sram_32x32_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ sky130_sram_32x32_and2_dec_0
.ENDS sky130_sram_32x32_port_address

.SUBCKT sky130_sram_32x32_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.26u l=0.15u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pinv

.SUBCKT sky130_sram_32x32_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [2.0]
Xbuf_inv1
+ A Z vdd gnd
+ sky130_sram_32x32_pinv
.ENDS sky130_sram_32x32_pdriver

.SUBCKT sky130_sram_32x32_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12u l=0.15u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74u l=0.15u
.ENDS sky130_sram_32x32_pnand2

.SUBCKT sky130_sram_32x32_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Xpand2_nand
+ A B zb_int vdd gnd
+ sky130_sram_32x32_pnand2
Xpand2_inv
+ zb_int Z vdd gnd
+ sky130_sram_32x32_pdriver
.ENDS sky130_sram_32x32_pand2

.SUBCKT sky130_sram_32x32_write_mask_and_array
+ wmask_in_0 wmask_in_1 wmask_in_2 wmask_in_3 en wmask_out_0 wmask_out_1
+ wmask_out_2 wmask_out_3 vdd gnd
* INPUT : wmask_in_0 
* INPUT : wmask_in_1 
* INPUT : wmask_in_2 
* INPUT : wmask_in_3 
* INPUT : en 
* OUTPUT: wmask_out_0 
* OUTPUT: wmask_out_1 
* OUTPUT: wmask_out_2 
* OUTPUT: wmask_out_3 
* POWER : vdd 
* GROUND: gnd 
* columns: 32
* word_size 32
* write_size 8
Xand2_0
+ wmask_in_0 en wmask_out_0 vdd gnd
+ sky130_sram_32x32_pand2
Xand2_1
+ wmask_in_1 en wmask_out_1 vdd gnd
+ sky130_sram_32x32_pand2
Xand2_2
+ wmask_in_2 en wmask_out_2 vdd gnd
+ sky130_sram_32x32_pand2
Xand2_3
+ wmask_in_3 en wmask_out_3 vdd gnd
+ sky130_sram_32x32_pand2
.ENDS sky130_sram_32x32_write_mask_and_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_sense_amp" ******************************

.SUBCKT sky130_fd_bd_sram__openram_sense_amp BL BR DOUT EN VDD GND
X1000 GND EN a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65u L=0.15u m=1
X1001 a_56_432# dint_bar dint GND sky130_fd_pr__nfet_01v8 W=0.65u L=0.15u m=1
X1002 dint_bar dint a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65u L=0.15u m=1

X1003 VDD dint_bar dint VDD sky130_fd_pr__pfet_01v8 W=1.26u L=0.15u m=1
X1004 dint_bar dint VDD VDD sky130_fd_pr__pfet_01v8 W=1.26u L=0.15u m=1

X1005 BL EN dint VDD sky130_fd_pr__pfet_01v8 W=2u L=0.15u m=1
X1006 dint_bar EN BR VDD sky130_fd_pr__pfet_01v8 W=2u L=0.15u m=1

X1007 VDD dint_bar DOUT VDD sky130_fd_pr__pfet_01v8 W=1.26u L=0.15u m=1
X1008 DOUT dint_bar GND GND sky130_fd_pr__nfet_01v8 W=0.65u L=0.15u m=1

.ENDS sky130_fd_bd_sram__openram_sense_amp

.SUBCKT sky130_sram_32x32_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7
+ data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11
+ br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14
+ data_15 bl_15 br_15 data_16 bl_16 br_16 data_17 bl_17 br_17 data_18
+ bl_18 br_18 data_19 bl_19 br_19 data_20 bl_20 br_20 data_21 bl_21
+ br_21 data_22 bl_22 br_22 data_23 bl_23 br_23 data_24 bl_24 br_24
+ data_25 bl_25 br_25 data_26 bl_26 br_26 data_27 bl_27 br_27 data_28
+ bl_28 br_28 data_29 bl_29 br_29 data_30 bl_30 br_30 data_31 bl_31
+ br_31 data_32 bl_32 br_32 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* OUTPUT: data_8 
* INPUT : bl_8 
* INPUT : br_8 
* OUTPUT: data_9 
* INPUT : bl_9 
* INPUT : br_9 
* OUTPUT: data_10 
* INPUT : bl_10 
* INPUT : br_10 
* OUTPUT: data_11 
* INPUT : bl_11 
* INPUT : br_11 
* OUTPUT: data_12 
* INPUT : bl_12 
* INPUT : br_12 
* OUTPUT: data_13 
* INPUT : bl_13 
* INPUT : br_13 
* OUTPUT: data_14 
* INPUT : bl_14 
* INPUT : br_14 
* OUTPUT: data_15 
* INPUT : bl_15 
* INPUT : br_15 
* OUTPUT: data_16 
* INPUT : bl_16 
* INPUT : br_16 
* OUTPUT: data_17 
* INPUT : bl_17 
* INPUT : br_17 
* OUTPUT: data_18 
* INPUT : bl_18 
* INPUT : br_18 
* OUTPUT: data_19 
* INPUT : bl_19 
* INPUT : br_19 
* OUTPUT: data_20 
* INPUT : bl_20 
* INPUT : br_20 
* OUTPUT: data_21 
* INPUT : bl_21 
* INPUT : br_21 
* OUTPUT: data_22 
* INPUT : bl_22 
* INPUT : br_22 
* OUTPUT: data_23 
* INPUT : bl_23 
* INPUT : br_23 
* OUTPUT: data_24 
* INPUT : bl_24 
* INPUT : br_24 
* OUTPUT: data_25 
* INPUT : bl_25 
* INPUT : br_25 
* OUTPUT: data_26 
* INPUT : bl_26 
* INPUT : br_26 
* OUTPUT: data_27 
* INPUT : bl_27 
* INPUT : br_27 
* OUTPUT: data_28 
* INPUT : bl_28 
* INPUT : br_28 
* OUTPUT: data_29 
* INPUT : bl_29 
* INPUT : br_29 
* OUTPUT: data_30 
* INPUT : bl_30 
* INPUT : br_30 
* OUTPUT: data_31 
* INPUT : bl_31 
* INPUT : br_31 
* OUTPUT: data_32 
* INPUT : bl_32 
* INPUT : br_32 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 32
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d8
+ bl_8 br_8 data_8 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d9
+ bl_9 br_9 data_9 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d10
+ bl_10 br_10 data_10 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d11
+ bl_11 br_11 data_11 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d12
+ bl_12 br_12 data_12 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d13
+ bl_13 br_13 data_13 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d14
+ bl_14 br_14 data_14 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d15
+ bl_15 br_15 data_15 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d16
+ bl_16 br_16 data_16 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d17
+ bl_17 br_17 data_17 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d18
+ bl_18 br_18 data_18 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d19
+ bl_19 br_19 data_19 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d20
+ bl_20 br_20 data_20 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d21
+ bl_21 br_21 data_21 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d22
+ bl_22 br_22 data_22 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d23
+ bl_23 br_23 data_23 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d24
+ bl_24 br_24 data_24 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d25
+ bl_25 br_25 data_25 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d26
+ bl_26 br_26 data_26 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d27
+ bl_27 br_27 data_27 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d28
+ bl_28 br_28 data_28 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d29
+ bl_29 br_29 data_29 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d30
+ bl_30 br_30 data_30 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d31
+ bl_31 br_31 data_31 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d32
+ bl_32 br_32 data_32 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
.ENDS sky130_sram_32x32_sense_amp_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_write_driver" ******************************

.SUBCKT sky130_fd_bd_sram__openram_write_driver DIN BL BR EN VDD GND

**** Inverter to conver Data_in to data_in_bar ******
* din_bar = inv(DIN)
X_1 din_bar DIN GND GND sky130_fd_pr__nfet_01v8 W=0.36u L=0.15u m=1
X_2 din_bar DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1

**** 2input nand gate follwed by inverter to drive BL ******
* din_bar_gated = nand(EN, DIN)
X_3 din_bar_gated EN net_7 GND sky130_fd_pr__nfet_01v8 W=0.55u L=0.15u m=1
X_4 net_7 DIN GND GND sky130_fd_pr__nfet_01v8 W=0.55u L=0.15u m=1
X_5 din_bar_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
X_6 din_bar_gated DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
* din_bar_gated_bar = inv(din_bar_gated)
X_7 din_bar_gated_bar din_bar_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
X_8 din_bar_gated_bar din_bar_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36u L=0.15u m=1

**** 2input nand gate follwed by inverter to drive BR******
* din_gated = nand(EN, din_bar)
X_9 din_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
X_10 din_gated EN net_8 GND sky130_fd_pr__nfet_01v8 W=0.55u L=0.15u m=1
X_11 net_8 din_bar GND GND sky130_fd_pr__nfet_01v8 W=0.55u L=0.15u m=1
X_12 din_gated din_bar VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
* din_gated_bar = inv(din_gated)
X_13 din_gated_bar din_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55u L=0.15u m=1
X_14 din_gated_bar din_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36u L=0.15u m=1

************************************************
* pull down with EN enable
X_15 BL din_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1
X_16 BR din_bar_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1u L=0.15u m=1

.ENDS sky130_fd_bd_sram__openram_write_driver

.SUBCKT sky130_sram_32x32_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9
+ data_10 data_11 data_12 data_13 data_14 data_15 data_16 data_17
+ data_18 data_19 data_20 data_21 data_22 data_23 data_24 data_25
+ data_26 data_27 data_28 data_29 data_30 data_31 data_32 bl_0 br_0 bl_1
+ br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8
+ br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14
+ br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19
+ bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25
+ br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30
+ bl_31 br_31 bl_32 br_32 en_0 en_1 en_2 en_3 en_4 vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* INPUT : data_8 
* INPUT : data_9 
* INPUT : data_10 
* INPUT : data_11 
* INPUT : data_12 
* INPUT : data_13 
* INPUT : data_14 
* INPUT : data_15 
* INPUT : data_16 
* INPUT : data_17 
* INPUT : data_18 
* INPUT : data_19 
* INPUT : data_20 
* INPUT : data_21 
* INPUT : data_22 
* INPUT : data_23 
* INPUT : data_24 
* INPUT : data_25 
* INPUT : data_26 
* INPUT : data_27 
* INPUT : data_28 
* INPUT : data_29 
* INPUT : data_30 
* INPUT : data_31 
* INPUT : data_32 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* INPUT : en_0 
* INPUT : en_1 
* INPUT : en_2 
* INPUT : en_3 
* INPUT : en_4 
* POWER : vdd 
* GROUND: gnd 
* columns: 32
* word_size 32
Xwrite_driver0
+ data_0 bl_0 br_0 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en_0 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver8
+ data_8 bl_8 br_8 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver9
+ data_9 bl_9 br_9 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver10
+ data_10 bl_10 br_10 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver11
+ data_11 bl_11 br_11 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver12
+ data_12 bl_12 br_12 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver13
+ data_13 bl_13 br_13 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver14
+ data_14 bl_14 br_14 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver15
+ data_15 bl_15 br_15 en_1 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver16
+ data_16 bl_16 br_16 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver17
+ data_17 bl_17 br_17 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver18
+ data_18 bl_18 br_18 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver19
+ data_19 bl_19 br_19 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver20
+ data_20 bl_20 br_20 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver21
+ data_21 bl_21 br_21 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver22
+ data_22 bl_22 br_22 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver23
+ data_23 bl_23 br_23 en_2 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver24
+ data_24 bl_24 br_24 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver25
+ data_25 bl_25 br_25 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver26
+ data_26 bl_26 br_26 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver27
+ data_27 bl_27 br_27 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver28
+ data_28 bl_28 br_28 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver29
+ data_29 bl_29 br_29 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver30
+ data_30 bl_30 br_30 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver31
+ data_31 bl_31 br_31 en_3 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver32
+ data_32 bl_32 br_32 en_4 vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
.ENDS sky130_sram_32x32_write_driver_array

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u

.SUBCKT sky130_sram_32x32_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Xlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55u l=0.15u
Xupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55u l=0.15u
Xupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55u l=0.15u
.ENDS sky130_sram_32x32_precharge_0

.SUBCKT sky130_sram_32x32_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* INPUT : en_bar 
* POWER : vdd 
* cols: 34 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ sky130_sram_32x32_precharge_0
Xpre_column_33
+ bl_33 br_33 en_bar vdd
+ sky130_sram_32x32_precharge_0
.ENDS sky130_sram_32x32_precharge_array

.SUBCKT sky130_sram_32x32_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 sparebl_0 sparebr_0 dout_0
+ dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10
+ dout_11 dout_12 dout_13 dout_14 dout_15 dout_16 dout_17 dout_18
+ dout_19 dout_20 dout_21 dout_22 dout_23 dout_24 dout_25 dout_26
+ dout_27 dout_28 dout_29 dout_30 dout_31 dout_32 din_0 din_1 din_2
+ din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12 din_13
+ din_14 din_15 din_16 din_17 din_18 din_19 din_20 din_21 din_22 din_23
+ din_24 din_25 din_26 din_27 din_28 din_29 din_30 din_31 din_32 s_en
+ p_en_bar w_en bank_wmask_0 bank_wmask_1 bank_wmask_2 bank_wmask_3
+ bank_spare_wen0 vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : sparebl_0 
* INOUT : sparebr_0 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* INPUT : bank_wmask_0 
* INPUT : bank_wmask_1 
* INPUT : bank_wmask_2 
* INPUT : bank_wmask_3 
* INPUT : bank_spare_wen0 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 sparebl_0 sparebr_0 p_en_bar
+ vdd
+ sky130_sram_32x32_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11
+ br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14
+ dout_15 bl_15 br_15 dout_16 bl_16 br_16 dout_17 bl_17 br_17 dout_18
+ bl_18 br_18 dout_19 bl_19 br_19 dout_20 bl_20 br_20 dout_21 bl_21
+ br_21 dout_22 bl_22 br_22 dout_23 bl_23 br_23 dout_24 bl_24 br_24
+ dout_25 bl_25 br_25 dout_26 bl_26 br_26 dout_27 bl_27 br_27 dout_28
+ bl_28 br_28 dout_29 bl_29 br_29 dout_30 bl_30 br_30 dout_31 bl_31
+ br_31 dout_32 sparebl_0 sparebr_0 s_en vdd gnd
+ sky130_sram_32x32_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 sparebl_0 sparebr_0
+ wdriver_sel_0 wdriver_sel_1 wdriver_sel_2 wdriver_sel_3
+ bank_spare_wen0 vdd gnd
+ sky130_sram_32x32_write_driver_array
Xwrite_mask_and_array0
+ bank_wmask_0 bank_wmask_1 bank_wmask_2 bank_wmask_3 w_en wdriver_sel_0
+ wdriver_sel_1 wdriver_sel_2 wdriver_sel_3 vdd gnd
+ sky130_sram_32x32_write_mask_and_array
.ENDS sky130_sram_32x32_port_data
* NGSPICE file created from sky130_fd_bd_sram__openram_sp_cell_opt1a_replica.ext - technology: sky130A

.subckt sky130_fd_bd_sram__openram_sp_cell_opt1a_replica BL BR VGND VPWR VPB VNB WL
X0 VPWR WL BR VNB sky130_fd_pr__special_nfet_pass ad=4.375e+10p pd=920000u as=1.68e+10p ps=520000u w=0.14u l=0.15u
X1 Q VPWR VGND VNB sky130_fd_pr__special_nfet_latch ad=1.56e+11p pd=2.38e+06u as=8.08e+10p ps=1.28e+06u w=0.21u l=0.15u
X2 BL WL Q VNB sky130_fd_pr__special_nfet_pass ad=1.68e+10p pd=520000u as=4.25e+10p ps=920000u w=0.14u l=0.15u
X3 Q WL Q VPB sky130_fd_pr__special_pfet_pass ad=3.5e+10p pd=780000u as=0p ps=0u w=0.14u l=25n
X4 VPWR WL VPWR VPB sky130_fd_pr__special_pfet_pass ad=9.72e+10p pd=1.86e+06u as=0p ps=0u w=0.14u l=25n
X5 VPWR Q VPWR VPB sky130_fd_pr__special_pfet_pass ad=0p pd=0u as=0p ps=0u w=0.14u l=0.15u
X6 Q VPWR VPWR VPB sky130_fd_pr__special_pfet_pass ad=0p pd=0u as=0p ps=0u w=0.14u l=0.15u
X7 VGND Q VPWR VNB sky130_fd_pr__special_nfet_latch ad=0p pd=0u as=0p ps=0u w=0.21u l=0.15u
.ends
* NGSPICE file created from sky130_fd_bd_sram__openram_sp_cell_opt1_replica.ext - technology: sky130A

.subckt sky130_fd_bd_sram__openram_sp_cell_opt1_replica BL BR VGND VPWR VPB VNB WL
X0 VPWR WL BR VNB sky130_fd_pr__special_nfet_pass ad=4.375e+10p pd=920000u as=1.68e+10p ps=520000u w=0.14u l=0.15u
X1 Q VPWR VGND VNB sky130_fd_pr__special_nfet_latch ad=1.56e+11p pd=2.38e+06u as=8.08e+10p ps=1.28e+06u w=0.21u l=0.15u
X2 BL WL Q VNB sky130_fd_pr__special_nfet_pass ad=1.68e+10p pd=520000u as=4.25e+10p ps=920000u w=0.14u l=0.15u
X3 Q WL Q VPB sky130_fd_pr__special_pfet_pass ad=3.5e+10p pd=780000u as=0p ps=0u w=0.14u l=25n
X4 VPWR WL VPWR VPB sky130_fd_pr__special_pfet_pass ad=9.72e+10p pd=1.86e+06u as=0p ps=0u w=0.14u l=25n
X5 VPWR Q VPWR VPB sky130_fd_pr__special_pfet_pass ad=0p pd=0u as=0p ps=0u w=0.14u l=0.15u
X6 Q VPWR VPWR VPB sky130_fd_pr__special_pfet_pass ad=0p pd=0u as=0p ps=0u w=0.14u l=0.15u
X7 VGND Q VPWR VNB sky130_fd_pr__special_nfet_latch ad=0p pd=0u as=0p ps=0u w=0.21u l=0.15u
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_wlstrap_p.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_wlstrap_p VGND
.ends

.SUBCKT sky130_sram_32x32_sky130_replica_column
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 vdd
+ gnd
* OUTPUT: bl_0_0 
* OUTPUT: br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* POWER : vdd 
* GROUND: gnd 
Xrbc_r0_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r0_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r1_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r1_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r2_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r2_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r3_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r3_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r4_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r4_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r5_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r5_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r6_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r6_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r7_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r7_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r8_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r8_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r9_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r9_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r10_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r10_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r11_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r11_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r12_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r12_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r13_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r13_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r14_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r14_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r15_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r15_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r16_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r16_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r17_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r17_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r18_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r18_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r19_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r19_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r20_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r20_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r21_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r21_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r22_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r22_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r23_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r23_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r24_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r24_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r25_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r25_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r26_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r26_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r27_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r27_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r28_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r28_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r29_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r29_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r30_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r30_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r31_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__openram_sp_cell_opt1_replica
Xrbc_r31_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xrbc_r32_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_32
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_replica
Xrbc_r32_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
.ENDS sky130_sram_32x32_sky130_replica_column
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_wlstrapa.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_wlstrapa VPWR
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_wlstrapa_p.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_wlstrapa_p VGND
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_cell_opt1.ext - technology: sky130A

.subckt sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon BL BR VGND VPWR VPB VNB WL
X0 Q_bar WL BR VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X1 Q Q_bar VGND VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
X2 BL WL Q VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X3 Q WL Q VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X4 Q_bar WL Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X5 VPWR Q Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X6 Q Q_bar VPWR VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X7 VGND Q Q_bar VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
.ends

.SUBCKT sky130_sram_32x32_sky130_dummy_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xdummy_bit_r0_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa
Xdummy_bit_r0_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
Xdummy_bit_r0_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xdummy_bit_r0_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__openram_sp_cell_opt1a_noblcon
.ENDS sky130_sram_32x32_sky130_dummy_array
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_cell_opt1.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_cell_opt1a BL BR VGND VPWR VPB VNB WL
X0 Q_bar WL BR VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X1 Q Q_bar VGND VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
X2 BL WL Q VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X3 Q WL Q VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X4 Q_bar WL Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X5 VPWR Q Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X6 Q Q_bar VPWR VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X7 VGND Q Q_bar VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_wlstrap.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_wlstrap VPWR
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_cell_opt1.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_cell_opt1 BL BR VGND VPWR VPB VNB WL
X0 Q_bar WL BR VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X1 Q Q_bar VGND VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
X2 BL WL Q VNB sky130_fd_pr__special_nfet_pass w=0.14u l=0.15u
X3 Q WL Q VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X4 Q_bar WL Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=25n
X5 VPWR Q Q_bar VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X6 Q Q_bar VPWR VPB sky130_fd_pr__special_pfet_pass w=0.14u l=0.15u
X7 VGND Q Q_bar VNB sky130_fd_pr__special_nfet_latch w=0.21u l=0.15u
.ends

.SUBCKT sky130_sram_32x32_sky130_bitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 wl_0_0 wl_0_1 wl_0_2
+ wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11
+ wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19
+ wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27
+ wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 33
Xbit_r0_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r0_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r0_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r1_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r1_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r1_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r0_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_0
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r1_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_1
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r2_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r2_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r2_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r3_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r3_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r3_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r2_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_2
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r3_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_3
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r4_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r4_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r4_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r5_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r5_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r5_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r4_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_4
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r5_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_5
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r6_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r6_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r6_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r7_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r7_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r7_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r6_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_6
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r7_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_7
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r8_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r8_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r8_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r9_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r9_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r9_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r8_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_8
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r9_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_9
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r10_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r10_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r10_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r11_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r11_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r11_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r10_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_10
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r11_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_11
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r12_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r12_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r12_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r13_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r13_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r13_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r12_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_12
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r13_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_13
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r14_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r14_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r14_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r15_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r15_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r15_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r14_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_14
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r15_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_15
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r16_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r16_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r16_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r17_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r17_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r17_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r16_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_16
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r17_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_17
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r18_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r18_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r18_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r19_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r19_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r19_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r18_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_18
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r19_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_19
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r20_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r20_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r20_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r21_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r21_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r21_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r20_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_20
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r21_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_21
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r22_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r22_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r22_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r23_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r23_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r23_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r22_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_22
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r23_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_23
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r24_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r24_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r24_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r25_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r25_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r25_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r24_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_24
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r25_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_25
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r26_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r26_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r26_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r27_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r27_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r27_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r26_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_26
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r27_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_27
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r28_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r28_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r28_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r29_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r29_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r29_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r28_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_28
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r29_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_29
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r30_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c0
+ bl_0_0 br_0_0 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c1
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c2
+ bl_0_1 br_0_1 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c3
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c4
+ bl_0_2 br_0_2 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c5
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c6
+ bl_0_3 br_0_3 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c7
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c8
+ bl_0_4 br_0_4 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c9
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c10
+ bl_0_5 br_0_5 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c11
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c12
+ bl_0_6 br_0_6 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c13
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c14
+ bl_0_7 br_0_7 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c15
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c16
+ bl_0_8 br_0_8 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c17
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c18
+ bl_0_9 br_0_9 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c19
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c20
+ bl_0_10 br_0_10 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c21
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c22
+ bl_0_11 br_0_11 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c23
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c24
+ bl_0_12 br_0_12 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c25
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c26
+ bl_0_13 br_0_13 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c27
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c28
+ bl_0_14 br_0_14 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c29
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c30
+ bl_0_15 br_0_15 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c31
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c32
+ bl_0_16 br_0_16 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c33
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c34
+ bl_0_17 br_0_17 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c35
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c36
+ bl_0_18 br_0_18 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c37
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c38
+ bl_0_19 br_0_19 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c39
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c40
+ bl_0_20 br_0_20 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c41
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c42
+ bl_0_21 br_0_21 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c43
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c44
+ bl_0_22 br_0_22 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c45
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c46
+ bl_0_23 br_0_23 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c47
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c48
+ bl_0_24 br_0_24 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c49
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c50
+ bl_0_25 br_0_25 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c51
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c52
+ bl_0_26 br_0_26 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c53
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c54
+ bl_0_27 br_0_27 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c55
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c56
+ bl_0_28 br_0_28 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c57
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c58
+ bl_0_29 br_0_29 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c59
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r30_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r30_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap_p
Xbit_r31_c60
+ bl_0_30 br_0_30 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c61
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrap
Xbit_r31_c62
+ bl_0_31 br_0_31 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
Xbit_r31_c63
+ vdd
+ sky130_fd_bd_sram__sram_sp_wlstrapa_p
Xbit_r30_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_30
+ sky130_fd_bd_sram__sram_sp_cell_opt1
Xbit_r31_c64
+ bl_0_32 br_0_32 gnd vdd vdd gnd wl_0_31
+ sky130_fd_bd_sram__sram_sp_cell_opt1a
.ENDS sky130_sram_32x32_sky130_bitcell_array

.SUBCKT sky130_sram_32x32_sky130_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 33
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xbitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 wl_0_0 wl_0_1 wl_0_2
+ wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11
+ wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19
+ wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27
+ wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
+ sky130_sram_32x32_sky130_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21
+ wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29
+ wl_0_30 wl_0_31 vdd gnd
+ sky130_sram_32x32_sky130_replica_column
Xdummy_row_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 rbl_wl_0_0 vdd gnd
+ sky130_sram_32x32_sky130_dummy_array
.ENDS sky130_sram_32x32_sky130_replica_bitcell_array
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_rowenda.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_rowenda VPWR WL
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_rowend.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_rowend VPWR WL
.ends

.SUBCKT sky130_sram_32x32_sky130_row_cap_array
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* POWER : vdd 
* GROUND: gnd 
Xrow_cap_arrayleft_r1_c0
+ vdd wl_0_0
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r2_c0
+ vdd wl_0_1
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r3_c0
+ vdd wl_0_2
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r4_c0
+ vdd wl_0_3
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r5_c0
+ vdd wl_0_4
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r6_c0
+ vdd wl_0_5
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r7_c0
+ vdd wl_0_6
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r8_c0
+ vdd wl_0_7
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r9_c0
+ vdd wl_0_8
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r10_c0
+ vdd wl_0_9
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r11_c0
+ vdd wl_0_10
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r12_c0
+ vdd wl_0_11
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r13_c0
+ vdd wl_0_12
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r14_c0
+ vdd wl_0_13
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r15_c0
+ vdd wl_0_14
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r16_c0
+ vdd wl_0_15
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r17_c0
+ vdd wl_0_16
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r18_c0
+ vdd wl_0_17
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r19_c0
+ vdd wl_0_18
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r20_c0
+ vdd wl_0_19
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r21_c0
+ vdd wl_0_20
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r22_c0
+ vdd wl_0_21
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r23_c0
+ vdd wl_0_22
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r24_c0
+ vdd wl_0_23
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r25_c0
+ vdd wl_0_24
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r26_c0
+ vdd wl_0_25
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r27_c0
+ vdd wl_0_26
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r28_c0
+ vdd wl_0_27
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r29_c0
+ vdd wl_0_28
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r30_c0
+ vdd wl_0_29
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r31_c0
+ vdd wl_0_30
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayleft_r32_c0
+ vdd wl_0_31
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayleft_r33_c0
+ vdd wl_0_32
+ sky130_fd_bd_sram__sram_sp_rowenda
.ENDS sky130_sram_32x32_sky130_row_cap_array
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colend_p_cent.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colend_p_cent VGND VPB VNB
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colend.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colend bl br vdd gnd vpb vnb gate
X0 br gate br vnb sky130_fd_pr__special_nfet_pass w=0.14u l=0.14u
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colend_cent.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colend_cent VPWR VPB VNB
.ends

.SUBCKT sky130_sram_32x32_sky130_col_cap_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33 vdd
+ gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* POWER : vdd 
* GROUND: gnd 
Xcol_cap_arraytop_r0_c0
+ bl_0_0 br_0_0 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c1
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c2
+ bl_0_1 br_0_1 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c3
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c4
+ bl_0_2 br_0_2 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c5
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c6
+ bl_0_3 br_0_3 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c7
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c8
+ bl_0_4 br_0_4 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c9
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c10
+ bl_0_5 br_0_5 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c11
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c12
+ bl_0_6 br_0_6 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c13
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c14
+ bl_0_7 br_0_7 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c15
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c16
+ bl_0_8 br_0_8 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c17
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c18
+ bl_0_9 br_0_9 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c19
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c20
+ bl_0_10 br_0_10 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c21
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c22
+ bl_0_11 br_0_11 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c23
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c24
+ bl_0_12 br_0_12 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c25
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c26
+ bl_0_13 br_0_13 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c27
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c28
+ bl_0_14 br_0_14 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c29
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c30
+ bl_0_15 br_0_15 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c31
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c32
+ bl_0_16 br_0_16 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c33
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c34
+ bl_0_17 br_0_17 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c35
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c36
+ bl_0_18 br_0_18 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c37
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c38
+ bl_0_19 br_0_19 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c39
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c40
+ bl_0_20 br_0_20 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c41
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c42
+ bl_0_21 br_0_21 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c43
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c44
+ bl_0_22 br_0_22 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c45
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c46
+ bl_0_23 br_0_23 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c47
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c48
+ bl_0_24 br_0_24 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c49
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c50
+ bl_0_25 br_0_25 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c51
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c52
+ bl_0_26 br_0_26 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c53
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c54
+ bl_0_27 br_0_27 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c55
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c56
+ bl_0_28 br_0_28 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c57
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c58
+ bl_0_29 br_0_29 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c59
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c60
+ bl_0_30 br_0_30 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c61
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c62
+ bl_0_31 br_0_31 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c63
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_cent
Xcol_cap_arraytop_r0_c64
+ bl_0_32 br_0_32 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
Xcol_cap_arraytop_r0_c65
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colend_p_cent
Xcol_cap_arraytop_r0_c66
+ bl_0_33 br_0_33 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colend
.ENDS sky130_sram_32x32_sky130_col_cap_array

.SUBCKT sky130_sram_32x32_sky130_row_cap_array_0
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
* POWER : vdd 
* GROUND: gnd 
Xrow_cap_arrayright_r1_c0
+ vdd wl_0_0
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r2_c0
+ vdd wl_0_1
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r3_c0
+ vdd wl_0_2
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r4_c0
+ vdd wl_0_3
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r5_c0
+ vdd wl_0_4
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r6_c0
+ vdd wl_0_5
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r7_c0
+ vdd wl_0_6
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r8_c0
+ vdd wl_0_7
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r9_c0
+ vdd wl_0_8
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r10_c0
+ vdd wl_0_9
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r11_c0
+ vdd wl_0_10
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r12_c0
+ vdd wl_0_11
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r13_c0
+ vdd wl_0_12
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r14_c0
+ vdd wl_0_13
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r15_c0
+ vdd wl_0_14
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r16_c0
+ vdd wl_0_15
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r17_c0
+ vdd wl_0_16
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r18_c0
+ vdd wl_0_17
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r19_c0
+ vdd wl_0_18
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r20_c0
+ vdd wl_0_19
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r21_c0
+ vdd wl_0_20
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r22_c0
+ vdd wl_0_21
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r23_c0
+ vdd wl_0_22
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r24_c0
+ vdd wl_0_23
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r25_c0
+ vdd wl_0_24
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r26_c0
+ vdd wl_0_25
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r27_c0
+ vdd wl_0_26
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r28_c0
+ vdd wl_0_27
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r29_c0
+ vdd wl_0_28
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r30_c0
+ vdd wl_0_29
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r31_c0
+ vdd wl_0_30
+ sky130_fd_bd_sram__sram_sp_rowenda
Xrow_cap_arrayright_r32_c0
+ vdd wl_0_31
+ sky130_fd_bd_sram__sram_sp_rowend
Xrow_cap_arrayright_r33_c0
+ vdd wl_0_32
+ sky130_fd_bd_sram__sram_sp_rowenda
.ENDS sky130_sram_32x32_sky130_row_cap_array_0
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colenda_p_cent.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colenda_p_cent VGND VPB VNB
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colenda_cent.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colenda_cent VPWR VPB VNB
.ends
* NGSPICE file created from sky130_fd_bd_sram__sram_sp_colenda.ext - technology: sky130A

.subckt sky130_fd_bd_sram__sram_sp_colenda bl br vdd gnd vpb vnb gate
X0 br gate br vnb sky130_fd_pr__special_nfet_pass w=0.14u l=0.14u
.ends


.SUBCKT sky130_sram_32x32_sky130_col_cap_array_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33 vdd
+ gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* POWER : vdd 
* GROUND: gnd 
Xcol_cap_arraybottom_r0_c0
+ bl_0_0 br_0_0 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c1
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c2
+ bl_0_1 br_0_1 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c3
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c4
+ bl_0_2 br_0_2 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c5
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c6
+ bl_0_3 br_0_3 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c7
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c8
+ bl_0_4 br_0_4 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c9
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c10
+ bl_0_5 br_0_5 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c11
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c12
+ bl_0_6 br_0_6 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c13
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c14
+ bl_0_7 br_0_7 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c15
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c16
+ bl_0_8 br_0_8 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c17
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c18
+ bl_0_9 br_0_9 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c19
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c20
+ bl_0_10 br_0_10 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c21
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c22
+ bl_0_11 br_0_11 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c23
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c24
+ bl_0_12 br_0_12 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c25
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c26
+ bl_0_13 br_0_13 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c27
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c28
+ bl_0_14 br_0_14 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c29
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c30
+ bl_0_15 br_0_15 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c31
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c32
+ bl_0_16 br_0_16 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c33
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c34
+ bl_0_17 br_0_17 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c35
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c36
+ bl_0_18 br_0_18 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c37
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c38
+ bl_0_19 br_0_19 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c39
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c40
+ bl_0_20 br_0_20 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c41
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c42
+ bl_0_21 br_0_21 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c43
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c44
+ bl_0_22 br_0_22 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c45
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c46
+ bl_0_23 br_0_23 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c47
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c48
+ bl_0_24 br_0_24 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c49
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c50
+ bl_0_25 br_0_25 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c51
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c52
+ bl_0_26 br_0_26 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c53
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c54
+ bl_0_27 br_0_27 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c55
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c56
+ bl_0_28 br_0_28 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c57
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c58
+ bl_0_29 br_0_29 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c59
+ vdd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c60
+ bl_0_30 br_0_30 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c61
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c62
+ bl_0_31 br_0_31 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c63
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_cent
Xcol_cap_arraybottom_r0_c64
+ bl_0_32 br_0_32 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
Xcol_cap_arraybottom_r0_c65
+ gnd vdd gnd
+ sky130_fd_bd_sram__sram_sp_colenda_p_cent
Xcol_cap_arraybottom_r0_c66
+ bl_0_33 br_0_33 vdd gnd vdd gnd gnd
+ sky130_fd_bd_sram__sram_sp_colenda
.ENDS sky130_sram_32x32_sky130_col_cap_array_0

.SUBCKT sky130_sram_32x32_sky130_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 33
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
+ sky130_sram_32x32_sky130_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 vdd
+ gnd
+ sky130_sram_32x32_sky130_col_cap_array_0
Xdummy_row_top
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 vdd
+ gnd
+ sky130_sram_32x32_sky130_col_cap_array
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 gnd vdd gnd
+ sky130_sram_32x32_sky130_row_cap_array
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 gnd vdd gnd
+ sky130_sram_32x32_sky130_row_cap_array_0
.ENDS sky130_sram_32x32_sky130_capped_replica_bitcell_array

.SUBCKT sky130_sram_32x32_bank
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15
+ dout0_16 dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22
+ dout0_23 dout0_24 dout0_25 dout0_26 dout0_27 dout0_28 dout0_29
+ dout0_30 dout0_31 dout0_32 rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3
+ din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12
+ din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 din0_20
+ din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27 din0_28
+ din0_29 din0_30 din0_31 din0_32 addr0_0 addr0_1 addr0_2 addr0_3
+ addr0_4 s_en0 p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1
+ bank_wmask0_2 bank_wmask0_3 bank_spare_wen0_0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: dout0_8 
* OUTPUT: dout0_9 
* OUTPUT: dout0_10 
* OUTPUT: dout0_11 
* OUTPUT: dout0_12 
* OUTPUT: dout0_13 
* OUTPUT: dout0_14 
* OUTPUT: dout0_15 
* OUTPUT: dout0_16 
* OUTPUT: dout0_17 
* OUTPUT: dout0_18 
* OUTPUT: dout0_19 
* OUTPUT: dout0_20 
* OUTPUT: dout0_21 
* OUTPUT: dout0_22 
* OUTPUT: dout0_23 
* OUTPUT: dout0_24 
* OUTPUT: dout0_25 
* OUTPUT: dout0_26 
* OUTPUT: dout0_27 
* OUTPUT: dout0_28 
* OUTPUT: dout0_29 
* OUTPUT: dout0_30 
* OUTPUT: dout0_31 
* OUTPUT: dout0_32 
* OUTPUT: rbl_bl_0_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : din0_8 
* INPUT : din0_9 
* INPUT : din0_10 
* INPUT : din0_11 
* INPUT : din0_12 
* INPUT : din0_13 
* INPUT : din0_14 
* INPUT : din0_15 
* INPUT : din0_16 
* INPUT : din0_17 
* INPUT : din0_18 
* INPUT : din0_19 
* INPUT : din0_20 
* INPUT : din0_21 
* INPUT : din0_22 
* INPUT : din0_23 
* INPUT : din0_24 
* INPUT : din0_25 
* INPUT : din0_26 
* INPUT : din0_27 
* INPUT : din0_28 
* INPUT : din0_29 
* INPUT : din0_30 
* INPUT : din0_31 
* INPUT : din0_32 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : bank_wmask0_0 
* INPUT : bank_wmask0_1 
* INPUT : bank_wmask0_2 
* INPUT : bank_wmask0_3 
* INPUT : bank_spare_wen0_0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ rbl_wl0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8
+ wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17
+ wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25
+ wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
+ sky130_sram_32x32_sky130_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15
+ dout0_16 dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22
+ dout0_23 dout0_24 dout0_25 dout0_26 dout0_27 dout0_28 dout0_29
+ dout0_30 dout0_31 dout0_32 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5
+ din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14
+ din0_15 din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22
+ din0_23 din0_24 din0_25 din0_26 din0_27 din0_28 din0_29 din0_30
+ din0_31 din0_32 s_en0 p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1
+ bank_wmask0_2 bank_wmask0_3 bank_spare_wen0_0 vdd gnd
+ sky130_sram_32x32_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 wl_en0 wl_0_0 wl_0_1 wl_0_2
+ wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11
+ wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19
+ wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27
+ wl_0_28 wl_0_29 wl_0_30 wl_0_31 rbl_wl0 vdd gnd
+ sky130_sram_32x32_port_address
.ENDS sky130_sram_32x32_bank

.SUBCKT sky130_sram_32x32
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] addr0[0] addr0[1] addr0[2] addr0[3]
+ addr0[4] csb0 web0 clk0 wmask0[0] wmask0[1] wmask0[2] wmask0[3]
+ spare_wen0 dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5]
+ dout0[6] dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12]
+ dout0[13] dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19]
+ dout0[20] dout0[21] dout0[22] dout0[23] dout0[24] dout0[25] dout0[26]
+ dout0[27] dout0[28] dout0[29] dout0[30] dout0[31] dout0[32] vccd1
+ vssd1
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : din0[8] 
* INPUT : din0[9] 
* INPUT : din0[10] 
* INPUT : din0[11] 
* INPUT : din0[12] 
* INPUT : din0[13] 
* INPUT : din0[14] 
* INPUT : din0[15] 
* INPUT : din0[16] 
* INPUT : din0[17] 
* INPUT : din0[18] 
* INPUT : din0[19] 
* INPUT : din0[20] 
* INPUT : din0[21] 
* INPUT : din0[22] 
* INPUT : din0[23] 
* INPUT : din0[24] 
* INPUT : din0[25] 
* INPUT : din0[26] 
* INPUT : din0[27] 
* INPUT : din0[28] 
* INPUT : din0[29] 
* INPUT : din0[30] 
* INPUT : din0[31] 
* INPUT : din0[32] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* INPUT : wmask0[0] 
* INPUT : wmask0[1] 
* INPUT : wmask0[2] 
* INPUT : wmask0[3] 
* INPUT : spare_wen0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* OUTPUT: dout0[8] 
* OUTPUT: dout0[9] 
* OUTPUT: dout0[10] 
* OUTPUT: dout0[11] 
* OUTPUT: dout0[12] 
* OUTPUT: dout0[13] 
* OUTPUT: dout0[14] 
* OUTPUT: dout0[15] 
* OUTPUT: dout0[16] 
* OUTPUT: dout0[17] 
* OUTPUT: dout0[18] 
* OUTPUT: dout0[19] 
* OUTPUT: dout0[20] 
* OUTPUT: dout0[21] 
* OUTPUT: dout0[22] 
* OUTPUT: dout0[23] 
* OUTPUT: dout0[24] 
* OUTPUT: dout0[25] 
* OUTPUT: dout0[26] 
* OUTPUT: dout0[27] 
* OUTPUT: dout0[28] 
* OUTPUT: dout0[29] 
* OUTPUT: dout0[30] 
* OUTPUT: dout0[31] 
* OUTPUT: dout0[32] 
* POWER : vccd1 
* GROUND: vssd1 
Xbank0
+ dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6]
+ dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13]
+ dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19] dout0[20]
+ dout0[21] dout0[22] dout0[23] dout0[24] dout0[25] dout0[26] dout0[27]
+ dout0[28] dout0[29] dout0[30] dout0[31] dout0[32] rbl_bl0 bank_din0_0
+ bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5
+ bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10
+ bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15
+ bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19 bank_din0_20
+ bank_din0_21 bank_din0_22 bank_din0_23 bank_din0_24 bank_din0_25
+ bank_din0_26 bank_din0_27 bank_din0_28 bank_din0_29 bank_din0_30
+ bank_din0_31 bank_din0_32 a0_0 a0_1 a0_2 a0_3 a0_4 s_en0 p_en_bar0
+ w_en0 bank_wmask0_0 bank_wmask0_1 bank_wmask0_2 bank_wmask0_3
+ bank_spare_wen0_0 wl_en0 vccd1 vssd1
+ sky130_sram_32x32_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vccd1
+ vssd1
+ sky130_sram_32x32_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] a0_0 a0_1 a0_2 a0_3 a0_4
+ clk_buf0 vccd1 vssd1
+ sky130_sram_32x32_row_addr_dff
Xwmask_dff0
+ wmask0[0] wmask0[1] wmask0[2] wmask0[3] bank_wmask0_0 bank_wmask0_1
+ bank_wmask0_2 bank_wmask0_3 clk_buf0 vccd1 vssd1
+ sky130_sram_32x32_wmask_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] bank_din0_0 bank_din0_1 bank_din0_2
+ bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7
+ bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12
+ bank_din0_13 bank_din0_14 bank_din0_15 bank_din0_16 bank_din0_17
+ bank_din0_18 bank_din0_19 bank_din0_20 bank_din0_21 bank_din0_22
+ bank_din0_23 bank_din0_24 bank_din0_25 bank_din0_26 bank_din0_27
+ bank_din0_28 bank_din0_29 bank_din0_30 bank_din0_31 bank_din0_32
+ clk_buf0 vccd1 vssd1
+ sky130_sram_32x32_data_dff
Xspare_wen_dff0
+ spare_wen0 bank_spare_wen0_0 clk_buf0 vccd1 vssd1
+ sky130_sram_32x32_spare_wen_dff
.ENDS sky130_sram_32x32
