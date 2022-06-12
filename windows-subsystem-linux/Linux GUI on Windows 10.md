# Linux GUI on Windows 10
## 01. First-time Step-Up on `VcXsrv`:
First time after installing the `VcXsrv` on Windows 10. Following procedure required.
* Installed `VcXsrv Windows X Server`
* Open `VcXsrv` and following the Setting
<img src='./screenshot/1.png'>
<img src='./screenshot/2.png'>
<img src='./screenshot/3.png'>
<img src='./screenshot/4.png'>

* `Save configuration` 
<img src='./screenshot/5.png'>

* `Save and Finish`
<img src='./screenshot/4.png'>

## 02. After Reboot The Windows 10
Every startup time, you have to manually connect the WSL distro to the server. 
note : If you follow the first method. [Skip this]
* run the `config.xlaunch` file using double click.
## 03. Connect WSL to the VcXsrv Server
* open `Debian` or Other WSL installed distro.

* $ `cat /etc/resolv.conf`
* copy  the nameserver from the terminal like this : `172.29.192.1`
<img src='./screenshot/d1.png'>

* $ `nano ~/.bashrc`
* adding the  line : `export DISPLAY=172.29.192.1:0`
<img src='./screenshot/d2.png'>

* to reload the bashrc : $ `source ~/.bashrc`
<img src='./screenshot/d3.png'>

* $ `gedit`
<img src='./screenshot/d4.png'>
