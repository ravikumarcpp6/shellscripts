#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[30m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFIE

if [ $ID -ne 0 ]
 then 
     echo -e "$R ERROR:: Please Run with Root User$N"
     exit 1
 else
     echo "You are a ROOT user"    
fi    

echo "TIME IS ::$TIMESTAMP"