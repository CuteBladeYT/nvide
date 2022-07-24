#!/bin/python3
import sys, subprocess, threading, json

global server, port
global neovide_path, neovim_path, launcher_path
global nvim_launch_opts, neovide_launch_opts

_cfg = open("/usr/bin/nvidecfg/config.json")
cfg = json.loads(_cfg.read())
_cfg.close()

port = cfg.get("server").get("port")

neovide_path = cfg.get("path_to").get("neovide")
neovim_path = cfg.get("path_to").get("neovim")
launcher_path = cfg.get("path_to").get("launcher_dir")

nvim_launch_opts = cfg.get("launch").get("options").get("nvim")
neovide_launch_opts = cfg.get("launch").get("options").get("neovide")


def listen_server(args = []):
    runcmd = ["/usr/bin/nvidecfg/server.sh", neovim_path, "--headless", "--listen", f"localhost:{str(port)}"]
    for arg in nvim_launch_opts:
        runcmd.append(arg)
    subprocess.run(runcmd)

def run_nvide(args = []):
    for arg in args:
        neovim_launch_options.append(arg)

    server = threading.Thread(None, listen_server)
    server.start()

    nvd_runcmd = [neovide_path, f"--remote-tcp=localhost:{str(port)}"]

    for arg in neovide_launch_opts:
        nvd_runcmd.append(arg)

    subprocess.run(nvd_runcmd)

sys.argv.pop(0)

if len(sys.argv) > 0:
    mode = sys.argv[0]
    if mode.startswith("--"):
        if mode == "--config":
            run_nvide(["/usr/bin/nvidecfg/config.json"])
        if mode == "--nano-cfg":
            subprocess.run(["nano", "/usr/bin/nvidecfg/config.json"])
    else:
        run_nvide(sys.argv)
else:
    run_nvide([])
