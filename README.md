# nvide
Easy remote TCP connection for Neovide and Neovim

### How it works
Simply just a shell and python file, configured in json.<br>
Shell script (`server.sh`) hosts the nvim server on custom port (see `config.json`).<br>
Python file (`nvide.py`) is the heart of it all. This file reads the config file and shares the data with server, while running Neovide.

### How to install / uninstall

| Requirement | Version | Download |
| --- | --- | --- |
| Python | >= 3.8.10 | [python.org](https://www.python.org/downloads/) |
| Git | >= 2.25.1 | [git-scm.com](https://git-scm.com/downloads) |
| Neovim | >= 0.6.0 | [neovim.io](https://neovim.io/) |
| Neovide | >= 0.8.0 | [github.com](https://github.com/neovide/neovide#linux) |

Simply use installer script to install it. Here's what you have to do in terminal:
```sh
cd ~/
git clone https://github.com/CuteBladeYT/nvide
cd nvide
sudo ./install.sh
```
And if install succeed, just run `nvide` in terminal.
<br>
To uninstall just run this:
```sh
cd ~/nvide
sudo ./uninstall.sh
```
Voila!
