#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then 
        echo "ERROR:: Run Script with root user"
        exit 1 # give other than zero to stop
    else
        echo "You Are ROOT USER"
fi  # fi means reverse of if, indicating condition end