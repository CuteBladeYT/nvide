# nvide
Easy remote TCP connection for Neovide and Neovim

### How it works
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

# How to use it
If you have it installed, just run `nvide` in your terminal.
<br><br>
If you can't run nvide because of incorrect data in your config, run `nvide --nano-cfg`.<br>
If you just want to edit config, run `nvide --config`.
