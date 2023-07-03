#!/bin/bash

# Echo commands
set -x

# Create a virtual environment (assumes Python 3.11 is installed and available with `python3`)
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

pip install --upgrade pip

# Install the package in editable mode with dev dependencies
pip install -e .[dev]

deactivate