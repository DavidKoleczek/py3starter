# Python 3 Starter Repo
A skeleton/template repo meant to be copied to initialize new Python projects. Also includes configuration for development in [Visual Studio Code](https://code.visualstudio.com/).

## Requirements
- [Python 3.11.x](https://www.python.org/) - Older versions may work, but are not tested
- [pyenv](https://github.com/pyenv/pyenv#basic-github-checkout) - Recommended for managing Python versions on Linux
- (Recommended) VSCode Extensions
    - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    - [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
    - [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)


## Installation Instructions
1. Copy over at least the following folders/files.
    - `src`
    - `.gitignore`
    - `install.sh` and/or `install.bat`
    - `pyproject.toml`
    - `README.md`

2. Make the following changes based on your project.
    - `src/py3starter` - Rename to the name of your project and remove any subfolders or `.py` files that are not needed.
    - `pyproject.toml`
        - Update the `name` and `description` fields.
        - Under `[tool.setuptools.package-data]` rename `py3starter` to the name of your project if you need to include any additional files in the package.


### Linux - Option 1 (Convenience Bash Script)
```bash
chmod +x install.sh
./install.sh
```


### Linux - Option 2 (Manual)
1. Create a virtual environment (assumes Python 3.11 is installed and available with `python3`)
    
    ```bash
    python3 -m venv .venv
    ```

2. Activate the virtual environment
    
    ```bash
    source .venv/bin/activate
    ```

3. Upgrade pip
    
    ```bash
    pip install --upgrade pip
    ```

4. Install the package (in editable mode)
        
    ```bash
    pip install -e .[dev]
    ```


### Windows - Option 1 (Convenience Batch Script)
Run `install.bat`.

### Windows - Option 2 (Manual)

Note these commands can be troublesome to run in PowerShell, try admin privileged Command Prompt instead.
1. Create a new Python virtual environment in the top-level project directory where the first path is the path to the Python executable and the second path is the path to the directory where the virtual environment will be created.
    
    ```bash
    "C:\Program Files\Python311\python.exe" -m venv "C:\py3starter\.venv"
    ```

2. Activate the virtual environment
    
    ```bash
    .\.venv\Scripts\activate
    ```

3. Upgrade pip (note the path to the Python executable corresponds to the path used in step 1)
    
    ```bash
    C:\py3starter\.venv\Scripts\python.exe -m pip install --upgrade pip
    ```

4. Install the package (in editable mode)
        
    ```bash
    pip install -e .[dev]
    ```


## [pyenv](https://github.com/pyenv/pyenv) Instructions for Reference
- **Installing Python Version** - To install additional Python versions, use [`pyenv install`](COMMANDS.md#pyenv-install).
    For example, to download and install Python 3.11.2, run:

    ```sh
    pyenv install 3.11.2
    ```

    Running `pyenv install -l` gives the list of all available versions.

- **Selecting Python Version** - To select a Pyenv-installed Python as the version to use, run one of the following commands:

    * [`pyenv shell <version>`](COMMANDS.md#pyenv-shell) -- select just for current shell session
    * [`pyenv local <version>`](COMMANDS.md#pyenv-local) -- automatically select whenever you are in the current directory (or its subdirectories)
    * [`pyenv global <version>`](COMMANDS.md#pyenv-shell) -- select globally for your user account

    E.g. to select the above-mentioned newly-installed Python 3.11.2 as your preferred version to use:

    ~~~bash
    pyenv global 3.11.2
    ~~~

    Now whenever you invoke `python`, `pip` etc., an executable from the Pyenv-provided
    3.11.2 installation will be run instead of the system Python.

- **Uninstalling Python Versions** -  As time goes on, you will accumulate Python versions in your `$(pyenv root)/versions` directory.

    To remove old Python versions, use [`pyenv uninstall <versions>`](COMMANDS.md#pyenv-uninstall).

    Alternatively, you can simply `rm -rf` the directory of the version you want
    to remove. You can find the directory of a particular Python version
    with the `pyenv prefix` command, e.g. `pyenv prefix 2.6.8`.
    Note however that plugins may run additional operations on uninstall
    which you would need to do by hand as well. E.g. Pyenv-Virtualenv also
    removes any virtual environments linked to the version being uninstalled.

- **Upgrading pyenv**- To upgrade to the latest development version of pyenv, use `git pull`:

    ```sh
    cd $(pyenv root)
    git pull
    ```