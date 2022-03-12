#!/bin/sh
project=$1
sn=$2
mode=$3
result=$4
desc=$5
log=$6

echo "1: "$1" 2: "$2" 3: "$3" 4: "$4" 5: "$5 
ls $6 
cp -r $6/* /mnt/card/logs/
echo "Logs copied to /mnt/card/logs"
