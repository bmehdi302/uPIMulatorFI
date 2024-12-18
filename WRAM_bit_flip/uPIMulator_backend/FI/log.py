import time

def log_injection_run(log_path, injection_id, address, bit_position, result, diff_count):
    """
    Logs each injection run to a file with its parameters and outcome.
    """
    with open(log_path, 'a') as log_file:
        log_file.write(f"Injection {injection_id}, Address: {address}, "
                       f"Bit: {bit_position}, Result: {result}, Differences: {diff_count}\n")
    print(f"Logged injection {injection_id} result to {log_path}")