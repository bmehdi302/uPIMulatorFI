import time
import random
import os
import glob
import argparse
from run_simulator_fi import execute_fault_injection_process
from set_params import set_fi_parameters
from log import log_injection_run
from get_diff import get_differences_from_log
from analyze import analyze_fault_injection_results
from get_addresses import get_unique_addresses

def main(benchmark_name):
    directory = "."

    # Delete all .bin files in the directory
    for file_path in glob.glob(os.path.join(directory, "*.bin")):
        try:
            os.remove(file_path)
            print(f"Deleted: {file_path}")
        except Exception as e:
            print(f"Error deleting {file_path}: {e}")
    
    start_time = time.time()
    # Load addresses from benchmark file, adapt the path to your FI/iram_accesses/ directory
    iram_addr = get_unique_addresses(f"/home/ebelhadd/iram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_backend/FI/iram_accesses/{benchmark_name}.txt")
    results_log_path = f"{benchmark_name}_fi_results.bin" #contains final results for all injections
    num_of_faults = 1000            #number of injections
    timeout = 100                   # Timeout in seconds
    for i in range(num_of_faults):
        address = random.choice(iram_addr) #choose an address randomly
        byte = random.randint(0,11)    #12 Bytes in each IRAM cell
        bit_position = random.randint(0, 7)
        # Set FI Parameters
        set_fi_parameters(address, bit_position, byte)
        #log each run output to analyze
        log_filename = f"{benchmark_name}_{i}.bin"
        #command to run the simulator (adapt the path/to/your executable) & path/to/your/frontend) 
        command = (
            f"/home/ebelhadd/iram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_backend/build/src/uPIMulator "
            f"--benchmark {benchmark_name} --num_tasklets 16 "
            f"--bindir /home/ebelhadd/iram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_frontend/bin/1_dpus/ "
            f"--logdir . > {log_filename} 2>&1"
        )

        # Run Fault Injection Process
        result = execute_fault_injection_process(command, timeout, log_filename)
        # retrieve differences between golden & FI output
        diff_count = get_differences_from_log(log_filename)
        
        # Log each injection run with parameters and result
        log_injection_run(results_log_path, i, address, byte, bit_position, result, diff_count)

    # Analyze the results
    analyze_fault_injection_results(results_log_path)
    elapsed_time = time.time() - start_time
    print(f"Total execution time: {elapsed_time:.2f} seconds")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run FI simulation with specified benchmark.")
    parser.add_argument("--benchmark", type=str, required=True)
    args = parser.parse_args()
    main(args.benchmark)
