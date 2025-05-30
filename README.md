# Windows Clear Command 🖥️

A simple utility to add the `clear` command to Windows, similar to Linux/Unix systems.

[FAQ](FAQ.md)

## 📋 Installation

1. Clone this repository:

```bash
git clone https://github.com/lighscent/win-clear.git win-clear
cd win-clear
```

2. Launch PowerShell as administrator and run:

```powershell
cd C:\Users\x\Desktop\win-clear
Set-ExecutionPolicy Bypass -Scope Process -Force
.\install-clear.ps1
```

## 🚀 Usage

In any CMD window, simply type:

```batch
clear
```

## 📁 Project Structure

```
win-clear/
├── clear.bat         # Screen clearing script
├── install-clear.ps1 # Installation script
└── README.md        # Documentation
```

## ⚙️ How it Works

- `clear.bat` contains a simple `cls` command that clears the screen
- `install-clear.ps1` copies `clear.bat` to `C:\Windows\System32` to make it globally accessible

## ⚠️ Prerequisites

- Windows 10 or newer
- Administrator rights for installation

## 🔒 Security

The installation script requires administrator rights as it modifies the system folder `C:\Windows\System32`.

## 📄 License

MIT License

## 👥 Contributing

Contributions are welcome! Feel free to:

- Open an issue
- Submit a pull request
- Suggest improvements

## 📬 Contact

[lighscent](https://github.com/lighscent)