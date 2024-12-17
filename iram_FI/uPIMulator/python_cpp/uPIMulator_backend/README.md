# ⚙️ Usage
## Currently Supported Mode
uPIMulator operates in an execution-driven simulation mode, enabling cycle-accurate performance analysis of PIM-based applications.

## Workflow
The typical usage workflow comprises two primary stages:

1. **Binary Generation:** Compile, assemble, and link your application code to generate the required binary files for simulation.
2. **Cycle-Level Simulation:** Utilize the generated binary files as input to the cycle-level simulator to obtain detailed performance metrics and insights.

We are actively working on expanding uPIMulator's capabilities and may introduce additional usage modes in future releases.

## Installation & Build
### Prerequisites
- **Python:** Python 3.10 or higher
- **C++ Compiler:** C++20 compliant compiler
- **CMake:** CMake 3.16 or higher
- **Docker:** Docker Engine
- **User Permissions:** Your Ubuntu user account must be a member of the `docker` group.
- **Operating System:** Ubuntu 18.04 or later (recommended)
- **Environment Management (Optional):** We recommend using a tool like [Anaconda](https://www.anaconda.com/) for managing your Python environment.

### Installation Steps
1. **Install Linker Dependencies:** Navigate to the `uPIMulator_frontend` directory and install the required Python packages using `pip`:

   ```bash
   cd /path/to/uPIMulator/python_cpp/uPIMulator_frontend
   pip install -r requirements.txt
   ```

2. **Build the Cycle-level Simulator:** Navigate to the `uPIMulator_backend/script` directory and execute the build script:

   ```bash
   cd /path/to/uPIMulator/python_cpp/uPIMulator_backend/script
   sh build.sh
   ```

> **Note:** Replace `/path/to/uPIMulator` with the actual path to your uPIMulator repository. 

If you encounter any issues during the installation or build process, please refer to the troubleshooting section in the documentation or open an issue on our GitHub repository.

Certainly, here's the paragraph revised for a more professional and appropriate tone suitable for a GitHub README:

## Binary Files Generation
We will use the VA (vector addition) benchmark as an example to demonstrate the binary file generation phase.
Upon successful completion of the compile/assemble/link process, you will find the generated binary files within the `uPIMulator_frontend/bin` directory.

> **Pre-Generated Binaries:** To expedite the setup process, you can utilize our pre-generated binary files available at the following [link](https://drive.google.com/file/d/1kfL-xGn1F18Ezmw81IvAhxEaLiZZOLFR/view?usp=sharing).

### Compilation

```bash
cd /path/to/uPIMulator/python_cpp/uPIMulator_frontend/src
python main.py --mode compile --num_tasklets 16 --benchmark VA --num_dpus 1
```

### Assembly and Linking

```bash
cd /path/to/uPIMulator/python_cpp/uPIMulator_frontend/src
python main.py --mode link --num_tasklets 16 --benchmark VA --data_prep_param 1024 --num_dpus 1
```

> **Troubleshooting:** In the event that the linking command encounters errors, please execute the following Docker build command and then reattempt the compilation and linking steps:

```bash
docker build -t bongjoonhyun/compiler -f /path/to/uPIMulator/python_cpp/uPIMulator_frontend/docker/compiler.dockerfile .
```

> **Supported Benchmarks and Performance Note:** uPIMulator currently supports 13 PrIM benchmarks.
> Please be aware that the initial compile/assemble/link process may take approximately 30 minutes.

Certainly, let's revise the paragraph for a more professional and appropriate tone suitable for a GitHub README:

## Cycle-level Simulation
### Executing a Simulation
Initiate a cycle-level simulation by providing the following inputs to the `uPIMulator` executable:

- Benchmark name
- Number of tasklets
- Absolute path to the directory containing the generated binary files (`bindir`)

You can further customize the simulation behavior using various command-line options. 

### Simulation Output
The simulation results will be printed directly to the standard output (`stdout`).

### Example Command

```bash
cd /path/to/uPIMulator/uPIMulator_backend/build/
./src/uPIMulator --benchmark VA --num_tasklets 16 --bindir /path/to/uPIMulator/uPIMulator_frontend/bin/1_dpus/ --logdir .
```

# 📄 Reproducing FI results from the report
This section provides instructions for replicating the figures presented in our paper.

## Configuration of PrIM Benchmarks
- **Single DPU Focus: The `num_dpus` parameter must always be set to `1`
- **Data Preparation Parameter:**  The values presented in this table are the data sizes we used for our fault injections. When generating the binary files for the PrIM benchmarks, please configure the `data_prep_param` parameter according to the following table:

| Benchmark | `data_prep_param` |
|---|---|---|
| GEMV     | 64 | 
| HST-L    | 1024 | 
| HST-S    | 1024 | 
| RED      | 64 | 
| SCAN-RSS | 1024 | 
| SCAN-SSA | 64 | 
| SEL      | 64 |
| TRNS     | 64  | 
| TS       | 64  | 
| UNI      | 1024 | 
| VA       | 1024 | 

## Command to run the 

```bash
python main.py --mode link --num_tasklets 16 --benchmark VA --data_prep_param 524288 --num_dpus 1
``` 
