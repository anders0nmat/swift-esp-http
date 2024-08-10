# Swift ESP Http Server

This is a proof-of-concept Swift Http Server on the ESP-IDF platform.

Building upon the [swift-embedded-pm](https://github.com/anders0nmat/swift-embedded-pm) template.
Using the [EspSwift](https://github.com/anders0nmat/EspSwift) Package to use ESP components with swift-native wrappers.

## Prerequisites 

- Swift toolchain supporting Swift Embedded
- ESP-IDF installed
- A ESP32 microcontroller running RISC-V (tested with esp32c6)

## Usage

1. Clone the repo
2. Setup ESP-IDF tools in CWD (current working directory)
3. Run `idf.py set-target esp32c6` (depending on your microcontroller)
4. Run `idf.py build`
5. Run `idf.py flash monitor`
6. After some time, there should be an output in the console like `got ip: 192.168.1.14`
7. In the browser of your computer (or any other device in the network) go to the respective ip, e.g. `http://192.168.1.14/`
