# config.py

import os
import json

DEFAULT_CONFIG = {
    "DEBUG": False,
    "TIMEOUT": 300,
    "ToolInvocation": "/Users/meij/Desktop/coding/Quokka/Untitled/GPMC/bin/gpmc -mode=1",
    "GetResult": "exact.double.prec-sci.(.+?)\\\\nc s",
    "FPE"       : 1e-12,
    "Precision" : 32
}

_config_path = None

def set_config_path(path):
    """
    Set the path to the config file. Call this before using any Quokka functionality if you want to override the default config.
    Automatically reloads CONFIG.
    """
    global _config_path, CONFIG
    _config_path = path
    CONFIG = load_config()

def load_config():
    config_path = _config_path
    if config_path and os.path.isfile(config_path):
        try:
            with open(config_path, "r") as f:
                user_config = json.load(f)
                return {**DEFAULT_CONFIG, **user_config}
        except Exception as e:
            raise RuntimeError(f"Failed to load config file: {e}")
    return DEFAULT_CONFIG

CONFIG = load_config()
