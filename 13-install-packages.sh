#!/bin/bash

ID=$(id -u)
R=

if [ $ID -ne 0 ]
 then 
     echo -e "$RERROR:: Please Run with Root User$N"
 else
     echo "You are a ROOT user"    
fi    