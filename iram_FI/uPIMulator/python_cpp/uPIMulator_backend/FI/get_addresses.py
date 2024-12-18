def get_unique_addresses(filename):
  """
  get accessed addresses from .txt file
  """
    with open(filename, "r") as file:
        addresses = {int(line.strip()) for line in file}  
    return list(addresses)
