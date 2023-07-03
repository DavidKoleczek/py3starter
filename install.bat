:: Have the user interactively enter the path to the Python 3.11 installation
set /p PYTHON_PATH="Enter the path to the Python 3.11 installation which contains the `python.exe` (Ex. C:\Program Files\Python311):

set VENV_DIR=%~dp0.venv

:: Create a virtual environment.
"%PYTHON_PATH%\python.exe" -m venv "%VENV_DIR%"

:: Activate the virtual environment
call "%VENV_DIR%\Scripts\activate.bat"

:: Upgrade pip
"%VENV_DIR%\Scripts\python.exe" -m pip install --upgrade pip

:: Install the package in editable mode with dev dependencies
pip install -e .[dev]

:: Deactivate the virtual environment
call "%VENV_DIR%\Scripts\deactivate.bat"

pause