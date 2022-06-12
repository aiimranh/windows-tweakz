# WSL : Disable 'ls' Folder Highlighting

## Method:
01. Open `.bashrc` file
* `sudo nano ~/.bashrc`
02. Add this to the end
* `LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS`
#
I did a bunch of searching and found this:
* `https://blog.jongallant.com/2020/06/wsl-ls-folder-highlight/`
* `https://stackoverflow.com/a/43147778`

#