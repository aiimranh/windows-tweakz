# Virtual Environment for Python
## Command Prompt/Powershell

### 1. Open Powershell/Command Prompt as Admin
### 2. Make a Folder to Desired Worksapce e.g. VirtualEnv
* `mkdir C:\Users\AIIH\Workspace\VirtualEnv`

### 3. Changing the Directory e.g VirtualEnv
* `cd C:\Users\AIIH\Workspace\VirtualEnv`

### 4. Creating Virtual Environment with system packages
* `python -m venv venv --system-site-packages`

    #### Note:
    01. First `venv` is the keyword. Second `venv` is the environment folder.

    02. If `python` keyword does not work use `python3` keyword e.g.
        * `python3 -m venv venv --system-site-packages`
        
        or use full path of the python.exe e.g.
        * `"C:\Program Files\Python39\python.exe" -m venv venv --system-site-packages`


### 5. Creating Virtual Environment without any packages
* `python -m venv venv_norm`

### 6. Activate the Virtual Environment
* `.\venv\Scripts\activate`

### 7. Checking the List of Virtual Environment Package lists
* `pip list`

### 8. Installing another packages e.g. Tensorflow etc.
* `pip install tensorflow`
* `pip install jupyter`

### 9. Running Jupyter Notebook on Virtual Environment
* `jupyter notebook`

### 10. De-activate the Virtual Environment
* `deactivate`