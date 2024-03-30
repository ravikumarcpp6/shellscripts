#!/bin/bash

NUMBER1=$1
NUMBER2=$2
SUM=$((NUMBER1+NUMBER2))
echo "the sum is : $SUM"

echo  "how many arguments passed:: $#"
echo "what are the all arguments passed:: $@"
echo "scritp same is $0"