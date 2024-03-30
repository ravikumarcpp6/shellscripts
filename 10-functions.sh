#!/bin/bash

ID=$(id -u)

VALIDATE()
{
if [ $1 -ne 0 ]
    then 
         echo "ERROR:: $2 FAILED"
         exit 1
    else 
         echo "$2 SUCCESS"
 fi
 }

if [ $ID -ne 0 ]
    then 
        echo "ERROR:: Run Script with root user"
        exit 1 # give other than zero to stop
    else
        echo "You Are ROOT USER"
fi  # fi means reverse of if, indicating condition end

yum install mysql -y
VALIDATE $? "INSTALLING SQL"

yum install git -y
VALIDATE $? "INSTALLING GIT"
