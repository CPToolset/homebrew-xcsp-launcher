# 🧪 Homebrew Tap for XCSP Launcher

This repository provides a [Homebrew](https://brew.sh) tap for installing [`xcsp-launcher`](https://github.com/CPToolset/xcsp-launcher) — a unified tool to install, build, and launch constraint solvers compatible with the [XCSP3](https://xcsp.org) format.

## 🛠 Installation

```bash
brew tap CPToolset/homebrew-xcsp-launcher
brew install xcsp
```

## 🚀 Usage

Once installed, you can access the CLI tool:

```bash
xcsp --help
```

You can use it to:

- Install and compile solvers from configuration files
- Launch solvers on XCSP3 instances

## 🔄 Updating

To update to the latest version:

```bash
brew update
brew upgrade xcsp
```

## 📚 Related Projects

- [CPToolset/xcsp-launcher](https://github.com/CPToolset/xcsp-launcher): The main launcher tool
