#!/bin/bash
NUMBER=$1
if [ $NUMBER -gt 100 ]
then 
    echo "The number $NUMBER is greater than 100"
else 
    echo "The given number $NUMBER is not greater than 100"
fi