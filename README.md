# Nim Reverse Shell

A simple reverse shell written in Nim that bypasses Windows Defender detection (see the "Tested Operating Systems" section below for more details). **This code is made for educational purposes only**.


## Tested Operating Systems

- Windows 10 (10.0.19045) 
- Windows 11 (10.0.22621)


## Compilation

The code can be compiled in various ways using Nim. In this example, the code is compiled to EXE using MinGW and runs in the victim's background once executed (thanks to the "--app:gui" flag). I strongly recommend to follow the below example for minimum detections as possible.

```bash
nim c -d:mingw --app:gui rev_shell.nim
```

## Detection

As of July 2023, the compiled executable is currently detected by 12/71 vendors. Enhancements to bypass detection are planned for future updates :)

![image](https://github.com/Sn1r/Nim-Reverse-Shell/assets/71400526/4f778174-a43e-48a6-a9e9-b06892eb8f0b)




