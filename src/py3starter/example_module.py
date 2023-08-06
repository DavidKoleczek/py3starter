import importlib.resources as importlib_resources
from pathlib import Path


def read_package_text_file(file_path: Path) -> str:
    data_file = importlib_resources.files("py3starter") / file_path
    with data_file.open() as f:
        return f.read()
