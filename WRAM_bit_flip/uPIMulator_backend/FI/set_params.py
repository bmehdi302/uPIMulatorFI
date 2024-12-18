import json

def set_fi_parameters(address, bit_position, config_path="fi_params.json"):
    """
    Sets fault injection parameters by writing them to a config file.
    """
    params = {
        "fault_injection_enabled": True,
        "fault_address": address,
        "fault_bit_position": bit_position,
    }
    with open(config_path, 'w') as f:
        json.dump(params, f)
    print("Fault injection parameters saved to", config_path)