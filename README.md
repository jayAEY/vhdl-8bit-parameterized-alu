# 🎛️ Parameterizd VHDL 8-Bit ALU

A customizable **8-bit ALU** in VHDL for my digital systems lab. I took the basic 4-operation `miniALU` template from class and expanded it to handle 8 operations.

## 🚀 Features

* **8 operations** selected via a 3-bit opcode.
* **Signed & Unsigned Support** using Two's Complement logic.
* **Logic Functions:** NOT, AND, OR, XOR.
* **Resizable:** Scalable via a VHDL generic property.

## ⚙️ Opcode Map

| Operation | Opcode | Type | Notes |
| :--- | :---: | :---: | :--- |
| **LOGICAL NOT:** NOT a | `000` | Logic | |
| **LOGICAL AND:** a AND b | `001` | Logic | |
| **LOGICAL OR:** a OR b | `010` | Logic | |
| **LOGICAL XOR:** a XOR b | `011` | Logic | |
| **UNSIGNED ADD:** a + b | `100` | Arith | Carry Out flag |
| **UNSIGNED SUB:** a - b | `101` | Arith | Carry Out flag |
| **SIGNED ADD:** a + b | `110` | Arith | Overflow flag |
| **SIGNED SUB:** a - b | `111` | Arith | Overflow flag |

---

## 🔬 Testing


### 💻 Simulation 
* Used custom **Vector Waveform Files (.vwf)** for test vectors and opcodes.
* Checked signals in the **Quartus Waveform Simulator**.

### 🛠️ Hardware Testing (Intel MAX 10 FPGA)
* Tested on a physical **Terasic DE10-Lite FPGA board** **with Intel MAX 10 FPGA**
* Programmed with Intel Quartus Prime
* Inputs on toggle switches, opcode on switches/pushbutton, outputs on red LEDs.

### FPGA Pin Assignments

| Port | Hardware | Description |
| :--- | :--- | :--- |
| **`a[0-3]`** | Switch 0-3 | Input A |
| **`b[0-3]`** | Switch 4-7 | Input B |
| **`op[0-1]`** | Switch 8-9 | Opcode Bit 0-1 |
| **`op`** | Key 0 | Opcode Bit 2 |
| **`y[0-3]`** | LEDR 0-3 | Output Y |
| **`c_out`** | LED R9 | Carry/Overflow |
