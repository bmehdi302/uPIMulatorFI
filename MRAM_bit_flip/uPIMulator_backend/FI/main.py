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
from get_launch import read_file


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
    # Load addresses from benchmark file
    mram_addr = get_unique_addresses(f"/home/ebelhadd/{benchmark_name}_workspace/uPIMulator/python_cpp/uPIMulator_backend/FI/mram_accesses/{benchmark_name}.txt")
    results_log_path = f"{benchmark_name}_fi_results.bin"
    num_of_faults = 1000
    timeout = 100  # Timeout in seconds
    input_size=16640  # (In Bytes) , varies depending on the benchmark and data prep param(Count the number of bytes inside the input_dpu_mram_heap_pointer.bin)
    launch_address, offset = read_file(f"/home/ebelhadd/{benchmark_name}_workspace/uPIMulator/python_cpp/uPIMulator_backend/FI/launch_addresses/{benchmark_name}.txt")
    input_addr = launch_address - 1024
    all = [addr for addr in mram_addr if input_addr <= addr < input_addr + input_size + offset]        #Relevant fault space without offset
    all.sort()  
    for i in range(num_of_faults):
        address = random.choice(all)

        if address == all[0]:
            byte = random.randint(offset,1023)  # Each wordline has 1024 bytes
        elif address == all[-1]:
            byte = random.randint(0,offset-1)
        else:
            byte = random.randint(0,1023)
    
        bit_position = random.randint(0, 7)

        # Set FI Parameters
        set_fi_parameters(address, byte, bit_position, launch_address)

        log_filename = f"{benchmark_name}_{i}.bin"
        command = (
            f"/home/ebelhadd/{benchmark_name}_workspace/uPIMulator/python_cpp/uPIMulator_backend/build/src/uPIMulator "
            f"--benchmark {benchmark_name} --num_tasklets 16 "
            f"--bindir /home/ebelhadd/{benchmark_name}_workspace/uPIMulator/python_cpp/uPIMulator_frontend/bin/1_dpus/ "
            f"--logdir . > {log_filename} 2>&1"
        )

        # Run Fault Injection Process
        result = execute_fault_injection_process(command, timeout, log_filename)

        # Get differences with golden output 
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
