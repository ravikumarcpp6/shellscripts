#!/bin/bash

ID=$(id -u)
R=

if [ $ID -ne 0 ]
 then 
     echo -e "$R ERROR:: Please Run with Root User$N"
     exit 1
 else
     echo "You are a ROOT user"    
fi    