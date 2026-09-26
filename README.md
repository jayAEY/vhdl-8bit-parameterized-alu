# 🎛️ Resizable VHDL 8-Bit ALU Core

A real-world ready, fully resizable **8-bit Arithmetic Logic Unit (ALU)** written in VHDL. 
This project was developed for a laboratory assignment in my **Digital Systems**. The objective of the lab was to take a basic 4-action classroom template (`miniALU`) provided by the instructor and systematically expand it into a full 8-action computer processing core.

---

## 🚀 Lab Implementation Details

To complete the lab requirements, the original template was refactored and expanded with the following hardware features:

- 8 distinct operations using a 3-bit opcode selector
- **Separated Math Pathways** → Uses Two's Complement logic for accurate signed math
- **Integrated Extra Logic Gates** → Bitwise NOT, AND, OR, and XOR functions
- **Fully Resizable Design** → Scalable to 16, 32, or 64 bits via a single VHDL generic property

---

## ⚙️ How to Control the ALU (3-Bit Opcode Map)

The ALU uses a 3-bit code (`opcode`) to select exactly which action to perform on inputs `a` and `b`:

### Opcode Map

| Operation | Opcode |
| :--- | :--- |
| 🟢 LOGICAL NOT: Output = NOT a | 000 |
| 🟢 LOGICAL AND: Output = a AND b | 001 |
| 🟢 LOGICAL OR: Output = a OR b | 010 |
| 🟢 LOGICAL XOR: Output = a XOR b | 011 |
| 🔵 UNSIGNED ADDITION: Output = a + b (Includes Carry Out flag) | 100 |
| 🔵 UNSIGNED SUBTRACTION: Output = a - b (Includes Carry Out flag) | 101 |
| 🔴 SIGNED ADDITION: Output = a + b (Includes Overflow error flag) | 110 |
| 🔴 SIGNED SUBTRACTION: Output = a - b (Includes Overflow error flag) | 111 |


---

## 🔬 Functional Verification & Testing

*   **Simulation Stimulus:** Designed custom **Vector Waveform Files (.vwf)** to supply deterministic test vectors, clock toggles, and variable opcode patterns.
*   **Verification:** Monitored output signals and timing responses inside **Quartus's Waveform Simulator Engine** to confirm strict arithmetic and logical accuracy across all operational modes.

---

## 🔧 Target System Tools
*   **Software Ecosystem:** Intel Quartus Prime Toolchain
*   **Verification Interface:** Quartus Waveform Editor (VWF) 
