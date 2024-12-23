# uPIMulator Backend with Fault Injection

This repository extends the **uPIMulator** backend to support fault injection experiments. It includes updated source files and scripts for fault injection models.

---

## 📁 Directory Overview

### `uPIMulator_backend/`
The backend directory of the uPIMulator framework. The following files were modified to enable fault injection:

- **IRAM**:  
  - `src/simulator/sram/iram.cc`  
  - `src/simulator/sram/iram.h`  
- **WRAM**:  
  - `src/simulator/sram/wram.cc`  
  - `src/simulator/sram/wram.h`  
- **MRAM**:  
  - `src/simulator/dram/mram.cc`  
  - `src/simulator/dram/mram.h`

---

## ⚙️ Key Modifications

1. **Output Comparison**  
   - **File**: `src/simulator/cpu/schedthread.cc`  
   - **Purpose**: Prints the differences between golden outputs and fault injection outputs.

2. **Simulation End Behavior**  
   - **Files**: `src/main.cc` and `src/simulator/cpu/cpu.h`  
   - **Purpose**: Suppresses standard simulator outputs (latency, number of instructions, etc.) and instead prints a `FINISHED` message to indicate the end of the simulation.

---

## 📂 `FI/` Directory
Contains scripts and resources for running fault injection experiments.

---

## 🚀 Fault Injector Execution

Follow these steps to execute the fault injector and generate the desired results:

### 1. Install Requirements and Prepare Input
- Refer to the original uPIMulator repository for:
  - Installing dependencies.
  - Generating input binaries.
  - Linking the application from the frontend directory.
- Use the following uPIMulator configuration to replicate the results:
  - `num_dpus=1`
  - `num_tasklets=16`

The benchmarks and their corresponding data preparation parameters are:

| Benchmark           | Data Prep Param |
|---------------------|-----------------|
| VA                  | 1024           |
| HST-S               | 1024           |
| HST-L               | 1024           |
| RED                 | 64             |
| UNI                 | 1024           |
| GEMV                | 64             |
| SEL                 | 64             |
| TS                  | 1024           |
| TRNS                | 64             |
| SCAN-SSA            | 64             |
| SCAN-RSS            | 1024           |

---

### 2. Modify Fault Injection Parameters
- Depending on the target memory (IRAM, WRAM, MRAM), navigate to:
  - `src/simulator/sram/iram.cc`
  - `src/simulator/sram/wram.cc`
  - `src/simulator/dram/mram.cc`
- Modify the `loadFaultparameters(path/to/json_file)` function by specifying the path to your JSON file inside the `FI/` directory.
- If using custom data prep parameters:
  - Re-generate binary files in the frontend directory.
  - Perform a normal execution without fault injection to log accessed addresses:
    1. Uncomment the following lines in the respective `.cc` file:
       ```cpp
       ...
         // Open log file for address logging
         // log_file_.open("SCAN-RSS.txt", std::ios::app);
    
       ...
       if (log_file_.is_open()) {
         log_file_ << std::dec << address << std::endl;
       }
       ```
    2. Log the addresses and use them for fault injection.

---

### 3. Rebuild the uPIMulator
After making changes, rebuild the uPIMulator with the following command:
```bash
sh ../script/build.sh
```

### 4. Execute the Fault Injector
   - After rebuilding, you can execute the fault injector using the following command:
     ```bash
     python3 main.py --benchmark {benchmark_name}
     ```
     Choose the name of the benchmark you want to execute from the list above.

### 5. Modify Injection Parameters
Inside `main.py`, you can modify the following parameters:

- **`num_faults`**: Specifies the number of fault injections.  
- **`timeout`**: Sets the execution timeout value.

You can also modify which memory addresses to target:  
- **MRAM**: Target only addresses where input and output are available or written.  
- **WRAM and IRAM**: All collected addresses are targeted.

---

### 6. Review Execution Outputs
After all executions are completed, you will find the following outputs:

- **Fault Injection Outputs**: Files named `{benchmark_name}_{i}.bin`, where `i` is the injection index.  
- **Final Report**: A summary file named `{benchmark_name}_fi_results.bin`, which contains all the injection results.

---

### 7. Calculate the AVF
To compute the Average Vulnerability Factor (AVF), use the `avf.py` script. Run the following command, specifying the results `.bin` file:

```bash
python3 avf.py {benchmark_name}_fi_results.bin
```






