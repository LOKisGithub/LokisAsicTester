#!/bin/sh
old=`cat /mnt/card/currentBoot`
echo "Changing BOOT from " $old " to " $1 | tee -a /tmp/tester.log

if [ -e /mnt/card/BOOT/$1 ]; then
	flash_erase /dev/mtd0 0x0 0x40 >/dev/null 2>&1
	nandwrite -p -s 0x0 /dev/mtd0 /mnt/card/BOOT/$1 >/dev/null 2>&1
fi

echo $1 > /mnt/card/currentBOOT
