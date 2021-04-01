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

    sleep 1m
    clear
    cd ../

}

killGravitee(){
    echo "Killing Gateway..."
    sudo kill `cat /var/run/gio.pid`
    sleep 5
    echo "Killing Management..."
    sudo kill `cat /var/run/management.pid`

}


while getopts s:k: flag
do
    case "${flag}" in
        s) startGravitee;;
        k) killGravitee;;
    esac
done