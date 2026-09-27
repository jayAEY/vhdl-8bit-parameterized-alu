# 🎛️ Parametric VHDL 8-Bit ALU

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

### 🆕 NEW: 🛠️ Hardware Testing (DE10-Lite Board)
Tested on a physical **Terasic DE10-Lite FPGA board**:
* Inputs on toggle switches, opcode on switches/pushbutton, outputs on red LEDs.

### 🆕 NEW: 📍 FPGA Pin Assignments

| Port | Hardware | Pin | Description |
| :--- | :--- | :---: | :--- |
| **`a[0-3]`** | Switch 0-3 | **C10-C12** | Input A |
| **`b[0-3]`** | Switch 4-7 | **A12-A14** | Input B |
| **`op[0-1]`** | Switch 8-9 | **B14, F15**| Opcode Bit 0-1 |
| **`op`** | Key 0 | **B8** | Opcode Bit 2 |
| **`y[0-3]`** | LEDR 0-3 | **A8-B10** | Output Y |
| **`c_out`** | LEDR 4 | **B11** | Carry/Overflow |

## 🔧 Tools
* Intel Quartus Prime, Terasic DE10-Lite (MAX 10 FPGA).
