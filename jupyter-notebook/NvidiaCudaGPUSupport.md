# Nvidia Cuda GPU Support

### 1. <a href="https://www.nvidia.com/download/index.aspx">Download</a> latest `Nvidia Driver`, installed it. (reboot may preferred)
    Note: Checking the path is in the `System Environment List/Path`

### 2. <a href="https://www.python.org/downloads/#:~:text=looking%20for%20a%20specific%20release%3F">Download</a> and install prefered `Python` (first check the version that your library support e.g `Tensonflow` Support `Python 3.7 - 3.10`). (reboot may preferred).
    Note: Checking the path is in the `System Environment List/Path`

### 3. <a href="https://docs.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#:~:text=Visual%20C%2B%2B%20Files.-,visual%20studio%202015%2C%202017%2C%202019%2C%20and%202022,-This%20table%20lists">Download</a> and install `Microsoft Visual C++ 2019 Redistributable`

### 4. <a href="https://docs.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#:~:text=Visual%20C%2B%2B%20Files.-,visual%20studio%202015%2C%202017%2C%202019%2C%20and%202022,-This%20table%20lists">Download</a> and install latest `Microsoft Visual Studio`. (`Microsoft Visual Studio 2019`) (tested good)

### 5. Open `Visual Studio` setup with base installer & close it. (reboot may preferred)


### 6. <a href="https://developer.nvidia.com/cuda-toolkit-archive">Download</a> and install the prefered `Nvidia Cuda Toolkit` (first check the version that your library support e.g `Tensonflow` Support `Nvidia Cuda Toolkit 11.2` (tested good) or may be latest version). (reboot may preferred).
    Note: Checking the path is in the `System Environment List/Path`

### 7. <a href="https://developer.nvidia.com/rdp/cudnn-download">Download</a> and install the prefered `cuDNN SDK` (first check the version that your library support e.g 'Tensonflow' Support `cuDNN SDK 8.1` (tested good) or may be latest version).
    Note: Checking the path is in the `System Environment List/Path`

### 8. If any the path is missing in the `System Environment List/Path` add to it.
* `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2\bin`
* `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2\extras\CUPTI\lib64`
* `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2\libnvvp`
* `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2\include`
* `C:\Program Files (x86)\cuDNN\cuda\bin`

    Note:
    * `v11.2` may be changed depend on your library support.
    * `cuDNN` may be extracted/installed in `C:\Program Files (x86)\cuDNN`
