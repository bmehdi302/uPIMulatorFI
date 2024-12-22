# uPIMulator Backend with Fault Injection

This repository extends the **uPIMulator** backend to support fault injection experiments. It includes updated source files and scripts for fault injection models.

---

## 📁 Directory Overview

### `uPIMulator_backend/`
In the backend directory of the uPIMulator framework, we modified the following files for fault injection :
  - **IRAM**:  
    - `src/simulator/sram/iram.cc`  
    - `src/simulator/sram/iram.h`  
  - **WRAM**:  
    - `src/simulator/sram/wram.cc`  
    - `src/simulator/sram/wram.h`  
  - **MRAM**:  
    - `src/simulator/dram/mram.cc`  
    - `src/simulator/dram/mram.h`

## ⚙️ Key Modifications
1. **Output Comparison**  
   - **File**: `src/simulator/cpu/schedthread.cc`  
   - **Purpose**: Prints the differences between golden outputs and fault injection outputs.

2. **Simulation End Behavior**  
   - **File**: `src/main.cc`  
   - **Purpose**: Removes the standard simulator output(latency, num_instructions...). Instead, a `FINISHED` message is printed to indicate the end of the simulation.  
   - **Related File**: `src/simulator/cpu/cpu.h`

---
### `FI/`
Contains scripts for running fault injection experiments.

