#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
    then 
        echo "ERROR:: Run Script with root user"
        exit 1 # give other than zero to stop
    else
        echo "You Are ROOT USER"
fi  # fi means reverse of if, indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
    then 
         echo "ERROR:: MYSQL INSTALLATION FAILED"
         exit 1
    else 
         echo "MYSQL INSTALLATION SUCCESS"
 fi   

 yum install git -y

 if [ $? -ne 0 ]
    then 
        echo "ERROR:: GIT INSTALLATION FAILED"
        exit 1
    else 
         echo "GIT INSTALLATION SUCCESS"
 fi            