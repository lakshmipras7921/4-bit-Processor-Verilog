# Design and Simulation of a 4-bit Processor using Verilog HDL

## Project Description
This project demonstrates a simplified 4-bit processor designed using Verilog HDL.
It uses a clock, reset, internal registers, and a small state machine to demonstrate
basic arithmetic processing.

## Tools Used
- EDA Playground
- Icarus Verilog
- SystemVerilog

## Features
- 4-bit data processing
- Four internal registers
- Addition operation
- Subtraction operation (calculated and stored internally)
- Reset functionality
- Zero flag output

## Design Files
- `design.sv` — processor design
- `testbench.sv` — simulation testbench

## Simulation
The testbench initializes the registers with 5 and 3 and checks the addition result.

Expected console output:
```text
4-BIT PROCESSOR SIMULATION
Addition Result = 8
Zero Flag       = 0
```

## Note
This is a simplified educational processor demonstration, not a complete CPU with
instruction fetch/decode, program memory, or a full instruction set.
## Simulation Link

[Run the 4-bit Processor Simulation](https://edaplayground.com/x/g7HR)
## Simulation Results

- Addition Result: 8
- Zero Flag: 0

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- GitHub

## Project Files

- design.sv - Processor design
- testbench.sv - Simulation testbench
- README.md - Project documentation
- Screenshot - simulation output
