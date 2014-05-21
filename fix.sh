#!/bin/bash

networksetup -setairportpower en0 off
sleep 1
for FILE1 in "$@"
do
	ls -la $FILE1
done
networksetup -setairportpower en0 on
sleep 5
for FILE1 in "$@"
do
   ls -la $FILE1
done


