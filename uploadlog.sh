#!/bin/sh
echo "1: "$1" 2: "$2" 3: "$3" 4: "$4" 5: "$5 
ls $6 
cp -r $6/* /mnt/card/logs/
echo "Logs copied to /mnt/card/logs"
