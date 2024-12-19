def analyze_fault_injection_results(log_file_path):
    """
    Analyze the results of the fault injection
    """
    with open(log_file_path, "r") as file:
        lines = file.readlines()

    completed = 0
    errors = 0
    crashes = 0
    timeouts = 0

    for line in lines:
        if "Result: completed" in line:
            completed += 1
        elif "Result: error" in line:
            errors += 1
        elif "Result: crash" in line:
            crashes += 1
        elif "Result: timeout" in line:
            timeouts+=1

    print(f"Total Completed: {completed}")
    print(f"Total Errors: {errors}")
    print(f"Total Crashes: {crashes}")
    print(f"Total timeouts: {timeouts}")
