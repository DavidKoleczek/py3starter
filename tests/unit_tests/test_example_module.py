from pathlib import Path

from py3starter.example_module import read_package_text_file


def test_read_package_text_file():
    file_path = Path("text_files/mytextfile.txt")

    # Get the content from the actual function
    content = read_package_text_file(file_path)

    # Check if the content is a string
    assert isinstance(content, str)
