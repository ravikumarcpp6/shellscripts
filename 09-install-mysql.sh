#!/bin/bash

ID=$(id -u)

if[ $ID -ne 0 ]
    then 
        echo "ERROR:: Run Script with root user"
    else
        echo "You Are ROOT USER"

        fi
