# uPIMulator Backend with Fault Injection

This repository contains the `uPIMulator_backend/` directory of the uPIMulator. It includes modifications and additional scripts to support fault injection models.

## Directory Structure

- **`uPIMulator_backend/`**: The backend directory of the uPIMulator.
- **`FI/`**: This directory contains:
  - Injection scripts for fault injection experiments.
  - Modifications to the following files to support fault injection models:
  - For IRAM:
    - `uPIMulator_backend/src/simulator/sram/iram.cc`
    - `uPIMulator_backend/src/simulator/sram/iram.h`
  - For WRAM:
    - `uPIMulator_backend/src/simulator/sram/wram.cc`
    - `uPIMulator_backend/src/simulator/sram/wram.h`
  - For MRAM:
    - `uPIMulator_backend/src/simulator/dram/mram.cc`
    - `uPIMulator_backend/src/simulator/dram/mram.h`
   
  - The file `uPIMulator_backend/src/simulator/cpu/schedthread.cc` is modified to print the differences between golden outputs and Fault injections outputs.

These changes enable the integration of fault injection models into the uPIMulator framework.
