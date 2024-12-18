# Fault Injector Execution 

This repository contains the fault injector for the uPIMulator IRAM memory. Below are the steps to execute the fault injector and generate the desired results. The IRAM bit flip fault model is defined in `../uPIMulator_backend/src/simulator/sram/iram.cc`

## How to Execute the Fault Injector

Follow these steps to execute the fault injector successfully:

### 1. Install Requirements and Prepare the Input
   - First, refer to the original uPIMulator repository to install the required dependencies, generate input binaries, and link the application.
   - To replicate the results from this work, use the following configuration for the uPIMulator:
     - `num_dpus=1`
     - `num_tasklets=16`
     - The following benchmarks and corresponding sizes were used:

| Benchmark           | data prep param|
|---------------------|-----------|
| VA                  | 1024      |
| HST-S               | 1024      |
| HST-L               | 1024      |
| RED                 | 64        |
| UNI                 | 1024      |
| GEMV                | 64        |
| SEL                 | 64        |
| TS                  | 1024      |
| TRNS                | 64        |
| SCAN-SSA            | 64        |
| SCAN-RSS            | 1024      |


### 2. Modify Fault Injection Parameters
   - Go to the file `../uPIMulator_backend/src/simulator/sram/iram.cc`.
   - Near the end of the IRAM constructor code, modify the `loadFaultparameters(path/to/json_file)` function by specifying the path to your JSON file inside the `FI/` directory.
   - If you want to use data preparation parameters different from the ones provided in this repository, you'll need to first re-generate your bin files in the frontend directory then perform a normal execution without fault injection to log the accessed addresses:

1. Navigate to the file `src/simulator/sram/iram.cc`.
2. Uncomment the following lines in the respective sections of the code:

### IRAM Constructor
Uncomment the lines to open a log file for address logging:
```cpp
IRAM::IRAM() {
  ...
  // open log file for address logging 
  // log_file_.open("SCAN-RSS.txt", std::ios::app);
}
```
### IRAM read
Uncomment the lines to log addresses:
```cpp
abi::instruction::Instruction *IRAM::read(Address address) {
  /*if (log_file_.is_open())
  {
    log_file_ << std::dec << address << std::endl;
  }*/
...
}
```

### 3. Rebuild the uPIMulator
   - After making the modification, execute the following command to rebuild the uPIMulator and generate the new executable:
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
   - Inside `main.py`, you can modify the following parameters:
     - `num_faults`: The number of fault injections.
     - `timeout`: The execution timeout value.

### 6. Review Execution Outputs
   - After all executions finish, you will find the execution outputs named `{benchmark_name}_{i}.bin`, with i being the injection index. You'll also find a final report called `{benchmark_name}_fi_results.bin`. This file contains all the injection results.

### 7. Calculate the AVF
   - To calculate the Average Vulnerability Factor (AVF), execute the `avf.py` script by specifying the results `.bin` file:
     ```bash
     python3 avf.py {benchmark_name}_fi_results.bin
     ```

Now you can analyze the fault injection results and calculate the AVF for your benchmarks.
