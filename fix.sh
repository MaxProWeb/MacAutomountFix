#!/bin/bash

AFP_DIR=~/root/       # mouting point 
REMOVE_DS=~/.DS_Store # remove DS file in parent directory 

networksetup -setairportpower en0 off
sleep 1
ls -la $AFP_DIR
networksetup -setairportpower en0 on
sleep 5
ls -la $AFP_DIR
rm $REMOVE_DS
