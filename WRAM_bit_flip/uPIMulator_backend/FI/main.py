import time
import random
import os
import glob
import argparse
from run_simulator_fi import execute_fault_injection_process
from set_params import set_fi_parameters
from log import log_injection_run
from get_diff import get_differences_from_log
from get_addresses import get_unique_addresses
from analyze import analyze_fault_injection_results

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
    # Load addresses from wram_accesses .txt file
    wram_addr = get_unique_addresses(f"/home/ebelhadd/wram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_backend/FI/wram_accesses/{benchmark_name}.txt")
    results_log_path = f"{benchmark_name}_fi_results.bin"
    num_of_faults = 1000
    timeout = 100        # Timeout in seconds
    for i in range(num_of_faults):
        address = random.choice(wram_addr)
        bit_position = random.randint(0, 31) #each wram cell has 32 bits
        # Set FI Parameters
        set_fi_parameters(address, bit_position)

        log_filename = f"{benchmark_name}_{i}.bin"
        command = (
            f"/home/ebelhadd/wram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_backend/build/src/uPIMulator "
            f"--benchmark {benchmark_name} --num_tasklets 16 "
            f"--bindir /home/ebelhadd/wram_tests/{benchmark_name}/uPIMulator/python_cpp/uPIMulator_frontend/bin/1_dpus/ "
            f"--logdir . > {log_filename} 2>&1"
        )

        # Run Fault Injection Process
        result = execute_fault_injection_process(command, timeout, log_filename)

        diff_count = get_differences_from_log(log_filename)
        
        # Log each injection run with parameters and result
        log_injection_run(results_log_path, i, address, bit_position, result, diff_count)

    # Analyze the results
    analyze_fault_injection_results(results_log_path)
    elapsed_time = time.time() - start_time
    print(f"Total execution time: {elapsed_time:.2f} seconds")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run FI simulation with specified benchmark.")
    parser.add_argument("--benchmark", type=str, required=True)
    args = parser.parse_args()
    main(args.benchmark)
