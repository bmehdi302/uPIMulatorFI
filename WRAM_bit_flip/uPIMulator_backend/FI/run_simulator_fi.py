import time
import subprocess

def execute_fault_injection_process(simulator_cmd, timeout,log_file_path):
    """
    Runs the simulator with fault injection, monitors for timeouts, and kills the process after each run.
    """
    try:
        proc = subprocess.Popen(simulator_cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        start_time = time.time()
        
        while proc.poll() is None:  # While process is running
            if (time.time() - start_time) > timeout:
                proc.kill()
                print("Process timed out and was killed.")
                return "timeout"
            time.sleep(1)
        #Check for crashes 
        with open(log_file_path, 'r') as log_file_:
            if "uPIMulator" in log_file_.read() or "terminate" in log_file_.read():
                print("Fault injection process crashed")
                return "crash" 
        # Process completed on time; collect output if needed
        stdout, stderr = proc.communicate()
        print("Fault injection process completed.")
        
        # Kill the process explicitly after completion
        proc.kill()
        
        return "completed"

    except Exception as e:
        print("Error running fault injection:", e)
        return "error"