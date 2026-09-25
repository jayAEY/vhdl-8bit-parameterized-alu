# 🎛️ Resizable VHDL 8-Bit ALU Core

A real-world ready, fully resizable **8-bit Arithmetic Logic Unit (ALU)** written in VHDL. 
This project was developed for a laboratory assignment in my **Digital Systems class at RRC Polytech**. The objective of the lab was to take a basic 4-action classroom template (`miniALU`) provided by the instructor and systematically expand it into a full 8-action computer processing core.

---

## 🚀 Lab Implementation Details

To complete the lab requirements, the original template was refactored and expanded with the following hardware features:

*   **Expanded Instruction Set:** Successfully scaled the control inputs from a 2-bit selector (4 actions) to a 3-bit selector (8 actions) to meet assignment specifications.
*   **Separated Math Pathways:** Implemented separate internal tracks for regular math and signed math so the chip can process negative numbers accurately using Two's Complement logic.
*   **Integrated Extra Logic Gates:** Added bitwise `NOT` and `XOR` logic functions to the original `AND` and `OR` classroom template.
*   **Fully Resizable Design:** Programmed the core using a VHDL `generic` property. While the lab default is set to 8-bits, changing just one number at the top of the file instantly scales the entire hardware circuit layout to 16, 32, or 64 bits.

---

## ⚙️ How to Control the ALU (3-Bit Opcode Map)

The ALU uses a 3-bit code (`opcode`) to select exactly which action to perform on inputs `a` and `b`:

🟢 LOGIC OPERATIONS (Opcodes starting with 0)
*   `000` ── Invert all a bits ─────► Output = NOT a
*   `001` ── Check if both are 1 ───► Output = a AND b
*   `010` ── Check if either is 1 ──► Output = a OR b
*   `011` ── Check for differences ─► Output = a XOR b

🔵 UNSIGNED MATH (Opcodes starting with 10)
*   `100` ── Basic Addition ────────► Output = a + b (Includes Carry Out flag)
*   `101` ── Basic Subtraction ─────► Output = a - b (Includes Carry Out flag)

🔴 SIGNED MATH (Opcodes starting with 11 - Handles Negative Numbers)
*   `110` ── Signed Addition ──────► Output = a + b (Includes Overflow error flag)
*   `111` ── Signed Subtraction ───► Output = a - b (Includes Overflow error flag)

---

## 🔬 Functional Verification & Testing

*   **Simulation Stimulus:** Designed custom **Vector Waveform Files (.vwf)** to supply deterministic test vectors, clock toggles, and variable opcode patterns.
*   **Verification:** Monitored output signals and timing responses inside **Quartus's Waveform Simulator Engine** to confirm strict arithmetic and logical accuracy across all operational modes.

---

## 🔧 Target System Tools
*   **Software Ecosystem:** Intel Quartus Prime Toolchain
*   **Verification Interface:** Quartus Waveform Editor (VWF) 
