#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[30m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

#echo "All Arguments Passed: $@"
#git mysql postfix net-tools
#package=git for first time

if [ $ID -ne 0 ]
    then 
     echo -e "$R ERROR:: Please Run with Root User $N"
     exit 1
    else
     echo -e "$G You are a ROOT user $N"    
fi    

VALIDATE()
         { 
            if [ $1 -ne 0 ]
            then echo -e "$2...$R FAILED $N"
                          exit 1
            else 
                 echo -e "$2...$G Success $N"       
            fi            

           }

#echo "TIME IS ::$TIMESTAMP"

for package in $@
do 
    yum list installed $package
        if [ $? -ne 0 ]
           then 
                yum install $package -y &>> $LOGFILE
                VALIDATE $? "Installing $package" 
                exit 1
            else 
                echo -e "$G $package has already installed....$N $Y SKIPPING...$N"
        fi
done