# HASduck

HASduck is a modern take on Radiodirection finding (RDF) where the hunt is for an interactive intelligent device rather than a simple beacon. We call these devices 'Ducks.' With a RPi Zero W and attached RF Module. you can use the HASduck framework to build and program your own Ducks. Adding sensors you can have your Duck react to the environment and adjust the signal and/or message being beaconed out. 

## Quick Start

The quickest way to get started with HASduck is to

- Buy a RPi Zero W and LoRa 915 MHz module from Adafruit
- Install Raspbian Lite OS
- From Pi home directory clone the latest release to the RPi Zero W
```
cd ~/HASduck
./HASviolet_config.py
./HASduck_config.py
./HASduck.sh install
./sudo reboot
```
- From the OLED select DUCKHUNT then RUN DUCK

## Root folder

### HASduck.py
* Duck app

### HASduck_config.py
* Config Duck and save to duckwalk.txt

### HASduck.sh
* Script to stop/start/install/remove Duck service

### HASduck.service
* Service file for systemd for Duck app run on start

### font5x8.bin
* Font file for OLED display

### HASrf95.py
* RFM95 Module used by HASvioletRF.py

### HASvioletHID.py
* HID library for OLED and buttons

### HASvioletRF.py
* RF library

## Config Folder (cfg/)

### hasDUCK.json
* Duck config file

### hasVIOLET.json
* RF config file

### hvdn-logo.xbm
* OLED graphic