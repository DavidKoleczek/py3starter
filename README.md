# Python 3 Starter Repo
A skeleton/template repo meant to be copied to initialize new Python projects. Also includes configuration for development in [Visual Studio Code](https://code.visualstudio.com/).

## Installation Instructions
### Linux
1. Create a virtual environment (assumes Python 3.11 is installed and available with `python3`)
    
    ```bash
    python3 -m venv .venv
    ```

2. Activate the virtual environment
    
    ```bash
    source .venv/bin/activate
    ```

3. Upgrade pip, setuptools, and wheel
    
    ```bash
    pip install --upgrade pip setuptools wheel
    ```

4. Install the package (in editable mode)
        
    ```bash
    pip install -e .[dev]
    ```


### Windows
Note these commands can be troublesome to run in PowerShell, try admin privileged Command Prompt instead.
1. Create a new Python virtual environment in the top-level project directory where the first path is the path to the Python executable and the second path is the path to the directory where the virtual environment will be created.
    
    ```bash
    "C:\Program Files\Python310\python" -m venv "C:\Programming\py3starter\.venv"
    ```

2. Activate the virtual environment
    
    ```bash
    .\.venv\Scripts\activate
    ```

3. Upgrade pip, setuptools, and wheel
    
    ```bash
    pip install --upgrade pip setuptools wheel
    ```

4. Install the package (in editable mode)
        
    ```bash
    pip install -e .[dev]
    ```
