#!/bin/sh
old=`cat /mnt/card/currentDevicetree`
echo "Changing devicetree from " $old " to " $1 | tee -a /tmp/tester.log

if [ -e /mnt/card/devicetree/$1 ]; then
#	flash_erase /dev/mtd0 0x1A00000 0x1 >/dev/null 2>&1
#	nandwrite -p -s 0x1A00000 /dev/mtd0 /mnt/card/devicetree/$1 >/dev/null 2>&1
	flash_erase /dev/mtd0 0x1A00000 0x1 
	nandwrite -p -s 0x1A00000 /dev/mtd0 /mnt/card/devicetree/$1 
fi

echo $1 > /mnt/card/currentDevicetree
