## Arbiter in Verilog, with Quartus Prime
This repository contains a small arbiter with two inputs, two outputs (selected by the inputs), a clk and a reset signal. 

It is meant as a practice on how to structure the `.gitignore` and `setup_*.tcl` file to work with Quartus Prime Projects in a repository.

### IDE & Board
- HDL: Verilog
- IDE: Quartus Prime Lite 18.1.0
- Devide Family: Intel Cyclone 10 LP
- Device: 10CL025YU256C8G
- Board: Trenz CYC1000 (TEI0003)
  - Resources + Datasheet: https://wiki.trenz-electronic.de/display/PD/TEI0003+Resources

### How to setup the project
1. Open the file `arbiter.qpf` in Quartus Prime
2. Run the script `setup_arbiter.tcl` to initialy configure the project
