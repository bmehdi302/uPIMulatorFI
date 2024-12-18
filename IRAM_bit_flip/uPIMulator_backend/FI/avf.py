def calculate_avf_from_file(file_path):

    total_injections = 0
    effective_faults = 0

    # Read the file and process each line
    with open(file_path, 'r') as file:
        for line in file:
            if line.strip():  # Skip empty lines
                total_injections += 1
                # Extract the 'Differences' field
                differences = int(line.split("Differences:")[1].strip())
                if differences > 0:
                    effective_faults += 1

    # Calculate AVF
    avf = effective_faults *100/ total_injections if total_injections > 0 else 0
    return avf, total_injections, effective_faults


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Calculate AVF from a fault injection report.")
    parser.add_argument("file_path", type=str, help="Path to the fault injection report file")
    args = parser.parse_args()

    #Calculate avf
    avf, total_injections, effective_faults = calculate_avf_from_file(args.file_path)

    # Print the results
    print(f"Total Injections: {total_injections}")
    print(f"Effective Faults: {effective_faults}")
    print(f"AVF: {avf:.2f}%")

