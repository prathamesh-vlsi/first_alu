# 4-bit ALU — Verilog HDL

A 4-bit Arithmetic Logic Unit implemented in Verilog HDL. Supports 6 operations selected via a 3-bit opcode. Built as part of my VLSI Physical Design learning journey.

## Operations

| Opcode | Operation | Description |
|--------|-----------|-------------|
| 000    | ADD       | a + b |
| 001    | SUB       | a - b |
| 010    | AND       | a & b |
| 011    | OR        | a \| b |
| 100    | XOR       | a ^ b |
| 101    | NOT       | ~a |

## Features
- 4-bit inputs and output
- Zero flag — goes high when result is 0
- Fully combinational design
- Testbench with 7 test cases covering all operations

## Files
| File | Description |
|------|-------------|
| `first_alu.v` | Main ALU module |
| `test_alu.v` | Testbench with stimulus and monitor |

## Simulation

Using Icarus Verilog:
```bash
iverilog -o alu_sim first_alu.v test_alu.v
vvp alu_sim
```

## Sample Output
```
0  a=0011 b=0001 op=000 result=0100 zero=0  // 3+1=4
10 a=0101 b=0010 op=001 result=0011 zero=0  // 5-2=3
20 a=1100 b=1010 op=010 result=1000 zero=0  // AND
30 a=1100 b=1010 op=011 result=1110 zero=0  // OR
40 a=1100 b=1010 op=100 result=0110 zero=0  // XOR
50 a=1111 b=0000 op=101 result=0000 zero=1  // NOT 1111 = 0000
60 a=0000 b=0000 op=000 result=0000 zero=1  // zero flag test
```

## Tools
- Icarus Verilog (simulation)
- GTKWave (waveform viewing)

## Part of
VLSI Physical Design roadmap — Year 2, Summer 2025
