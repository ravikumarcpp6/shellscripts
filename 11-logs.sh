#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e " $G script name:: $0 $N"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE()
{
if [ $1 -ne 0 ]
    then 
         echo -e "ERROR:: $2... $R FAILED $N"
         exit 1
    else 
         echo -e "$2... $G SUCCESS $N"
 fi
 }

if [ $ID -ne 0 ]
    then 
        echo -e "ERROR:: Run Script with root user"
        exit 1 # give other than zero to stop
    else
        echo -e "$Y You Are $R ROOT $N USER"
fi  # fi means reverse of if, indicating condition end

yum install mysql -y &>> $LOGFILE
VALIDATE $? "INSTALLING SQL"

yum install git -y &>> $LOGFILE
VALIDATE $? "INSTALLING GIT"
