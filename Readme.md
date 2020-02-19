# TLS protocol tests

Uses script from [drwetter/testssl.sh: Testing TLS/SSL encryption anywhere on any port](https://github.com/drwetter/testssl.sh) to test web server TLS settings.

## How to use

Must run under a Unix-like system. If on Windows, install a WSL distro, then install the [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) extension for VS Code.

After first cloning the repo, run the following commands to restore the submodules:

```
git submodule init
git submodule update
```

Execute `run.sh` to test all web servers.
