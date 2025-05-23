# config.py

import os
import json

DEFAULT_CONFIG = {
    "DEBUG": False,
    "TIMEOUT": 300,
    "ToolInvocation": "/Users/meij/Desktop/coding/Quokka/Untitled/GPMC/bin/gpmc -mode=1",
    "GetResult": "exact\\.double\\.prec-sci\\.(.+?)\\nc s",
    "FPE"       : 1e-12,
    "Precision" : 32
}

def load_config():
    config_path = os.getenv("QUOKKA_CONFIG", None)
    
    if config_path and os.path.isfile(config_path):
        try:
            with open(config_path, "r") as f:
                user_config = json.load(f)
                return {**DEFAULT_CONFIG, **user_config}
        except Exception as e:
            raise RuntimeError(f"Failed to load config file: {e}")
    
    return DEFAULT_CONFIG

CONFIG = load_config()
