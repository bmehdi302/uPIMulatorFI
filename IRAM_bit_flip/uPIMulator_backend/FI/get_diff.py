import re

def get_differences_from_log(log_file):
    """
    Get number of differences from execution output log file
    """
    differences = 0  # Default value if not found
    with open(log_file, 'r') as infile:
        for line in infile:
            # Look for the "DIFFERENCES:" line and extract the number
            match = re.search(r'DIFFERENCES\s*:\s*(\d+)', line)
            if match:
                differences = int(match.group(1))
                break  # Exit loop after finding the first match

    print(f"DIFFERENCES: {differences}")
    return differences
