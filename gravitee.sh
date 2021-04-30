#!/bin/bash

startGravitee(){
    
    cd gateway/
    echo "Starting Gateway...\n"
    sudo ./bin/gravitee -d -p=/var/run/gio.pid

    sleep 35
    clear
    cd ../
    

    
    cd management/
    echo "Starting Management...\n"
    sudo ./bin/gravitee -d -p=/var/run/management.pid

    sleep 35
    clear
    kill $PPID

}

killGravitee(){
    echo "Killing Gateway..."
    sudo kill `cat /var/run/gio.pid`
    sleep 5
    echo "Killing Management..."
    sudo kill `cat /var/run/management.pid`

}
 
 usage() { echo "Usage [s] [k]" }

case "$1" in 
    s) 
        startGravitee
        ;;
    k)
        killGravitee
        ;;
    *)
        usage
        ;;

esac