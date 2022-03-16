#!/bin/sh
old=`cat /mnt/card/currentConfig`
echo "Changing config from " $old " to " $1 >> /tmp/tester.log
cp /mnt/card/configs/$1 /mnt/card/Config.ini
cp /mnt/card/configs/$1 /config/Config.ini
echo $1 > /mnt/card/currentConfig
