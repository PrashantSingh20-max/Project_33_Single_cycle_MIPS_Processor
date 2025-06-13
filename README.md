# 🖥️ Single-Cycle MIPS Processor in Verilog

This project implements a **Single-Cycle MIPS Processor** in Verilog that supports a core set of R-type, I-type, and J-type instructions. It’s designed to help students and enthusiasts understand basic processor architecture and control/data path interactions.

---


https://github.com/user-attachments/assets/ece28eb6-012b-418c-b911-dd51cb7876e9


## ✅ Supported Instructions

The processor supports the following **MIPS instructions**:

### 🔹 Arithmetic & Logical
- `add`   – Add
- `sub`   – Subtract  
- `and`   – Bitwise AND  
- `or`    – Bitwise OR  
- `slt`   – Set on Less Than  
- `sll`   – Shift Left Logical

### 🔹 Immediate Operations
- `addi`  – Add Immediate

### 🔹 Memory
- `lw`    – Load Word  
- `sw`    – Store Word  

### 🔹 Control Flow
- `beq`   – Branch on Equal  
- `j`     – Jump  
- `jal`   – Jump and Link

---

Using ModelSim or QuestaSim, compile and simulate:

vlib work
vlog *.v
vsim work.testbench
add wave -r *
run 200ns




https://github.com/user-attachments/assets/8b116708-0d5b-4410-9d4f-43de3b5e6bb4



https://github.com/user-attachments/assets/d13c6204-50a2-4bfa-895e-758a7c0a4b7b

