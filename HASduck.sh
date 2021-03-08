#!/bin/bash
#
# HASduck.sh
#
# 20210225-1100
#


##
## INIT VARIABLES 
##

hasduck_install=$HOME/HASduck


case $1 in
    status)
        sudo systemctl status HASduck.service
        ;;
    start)
        sudo systemctl start HASduck.service
        ;;
    stop)
        sudo systemctl stop HASduck.service
        ;;
    remove)
        sudo systemctl stop HASduck.service
        sudo systemctl disable HASduck.service
        sudo rm -rf /lib/systemd/system/HASduck.service
        ;;
    install)
        sudo cp $hasduck_install/HASduck.service /lib/systemd/system/HASduck.service
        sudo chown root:root /lib/systemd/system/HASduck.service
        sudo chmod 644 /lib/systemd/system/HASduck.service
        sudo systemctl daemon-reload
        sudo systemctl enable HASduck.service
        sudo systemctl start HASduck.service
        ;;
    *)
        echo "Usage: $0 {start | stop | kill}"
        echo "   start    : Start service"
        echo "   stop     : Stop Service"
        echo "   status   : Service Status"
        echo "   remove   : Nuke Service"
        ;;
esac