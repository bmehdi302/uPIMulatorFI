# uPIMulator Backend with Fault Injection

This repository contains the `uPIMulator_backend/` directory of the uPIMulator. It includes modifications and additional scripts to support fault injection models.

## Directory Structure

- **`uPIMulator_backend/`**: The backend directory of the uPIMulator.
- **`FI/`**: This directory contains:
  - Injection scripts for fault injection experiments.
  - Modifications to the following files to support fault injection models:
    - `uPIMulator_backend/src/simulator/sram/iram.cc`
    - `uPIMulator_backend/src/simulator/sram/iram.h`

These changes enable the integration of fault injection models into the uPIMulator framework.
