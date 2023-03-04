import importlib.resources as importlib_resources


def read_package_text_file(file_path: str) -> float:
    data_file = importlib_resources.files("py3starter") / file_path
    with data_file.open() as f:
        return f.read()
