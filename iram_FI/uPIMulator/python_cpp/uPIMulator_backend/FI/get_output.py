import re

def get_output(input_file, fi_output_file):
    with open(input_file, 'r') as infile, open(fi_output_file, 'w') as outfile:
        for line in infile:
            match = re.search(r'output_byte\s*:\s*(\d+)', line)
            if match:
                output_byte_value = match.group(1)
                outfile.write(f"{output_byte_value}\n")
    print(f"Output values saved to {fi_output_file}")
