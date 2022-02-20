# Python 3 Starter Repo
A skeleton/template repo meant to be copied to initialize new Python projects. Also includes configuration for development in [Visual Studio Code](https://code.visualstudio.com/).

## Installation Instructions
### Linux
Instructions first describe the high level step and then an example command directly below. Note you may have to **adjust the command for your system (namely step 1)**.

1. Create a new Python virtual environment in the top-level project directory (make sure it is in a separate folder such as **env**).

    `python3.9 -m venv env`

2. Activate the virtual environment.

    `source env/bin/activate`

3. Update Python's installation tools.

    `python3.9 -m pip install --upgrade pip setuptools wheel`

4. Install the package code. Editable mode, `-e`, specifies that the package will reload upon any changes to the source, which is what we expect for development.

    `pip install -e .`

5. Install requirements.txt dependencies (if they exist). `--no-cache-dir` is a useful flag to keep packages from hanging around on your system, or for low memory systems.

    `pip install --no-cache-dir -r requirements.txt`


### Windows
Note these commands can be troublesome to run in PowerShell, try admin privileged Command Prompt instead.
1. Create a new Python virtual environment in the top-level project directory (make sure it is in a separate folder such as **env**)

    `"C:\Program Files\Python39\python" -m venv "D:\Programming\pythonprojects\myproject\env"`

2. Activate the virtual environment.

    `.\env\Scripts\activate`

3. Update Python's installation tools.

    `python -m pip install --upgrade pip setuptools wheel`

4. Install the package code.

    `pip install -e .`

5. Install requirements.txt dependencies (if they exist).

    `pip install -r requirements.txt`
