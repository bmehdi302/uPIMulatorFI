def read_file(file_path):
    """
    Returns the address accessed when reaching cpu::launch() & The input offset
    """
    with open(file_path, 'r') as file:
        launch_address = int(file.readline().strip())
        offset = int(file.readline().strip())
        return launch_address, offset  