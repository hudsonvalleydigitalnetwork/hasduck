#!/bin/bash

###
### HASduck_install_fresh
###
### 

##
##    REVISION: 20210320-2100
## 


##
## INIT VARIABLES 
##

# GitHub Repos
hasduck_github_repo="https://github.com/hudsonvalleydigitalnetwork/hasduck.git"

# Local (GitHub clone)
hasduck_install=$HOME/hasduck

# HASviolet JSON file
hasviolet_json=$hasduck_install/cfg/hasVIOLET.json
hasduck_json=$hasduck_install/cfg/hasDUCK.json


##
##  START 
##

echo " "
echo "HASduck Install Fresh"
echo " "
echo "- Install Raspbian Packages"
echo " "
sudo apt-get -y install git
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-pil
sudo apt-get -y install libatlas-base-dev        # Numpy Dependency
echo " "
echo "- Install Python Libraries"
echo " "
sudo pip3 install tornado
sudo pip3 install RPI.GPIO
sudo pip3 install spidev
sudo pip3 install pynmea2
sudo pip3 install python-metar
sudo pip3 install adafruit-circuitpython-ssd1306
sudo pip3 install adafruit-circuitpython-framebuf
sudo pip3 install adafruit-circuitpython-rfm9x
sudo pip3 install numpy                          # pyLoraRFM9x dependency
sudo pip3 install pyLoraRFM9x
sudo pip3 install sparkfun-qwiic
sudo pip3 install sparkfun-qwiic-bme280
sudo pip3 install sparkfun-qwiic-vl53l1x

echo " "
echo "HASduck Install Fresh complete"
echo " "
echo " "
echo "  Next steps running the following in order from the $hasduck_install directory"
echo " "
echo " ./HASviolet_config.py"
echo " " 
echo " ./HASduck_config.py"
echo " "
echo " ./HASduck.sh install"
echo " "
echo "- Enjoy!"
echo "  -- The HASviolet Team at HVDN "
echo " "
exit 0