#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
 then 
     echo "ERROR:: Please Run with Root User"
 else
     echo "You are a ROOT user"    
fi    