#!/bin/sh

echo "Writing eeprom ("$2") on chain "$1 | tee -a /tmp/tester.log
/mnt/card/utils/eeprom_test -w $1 0 `/mnt/card/utils/file2dec.elf $2 0 100`  
/mnt/card/utils/eeprom_test -w $1 100 `/mnt/card/utils/file2dec.elf $2 100 100`  
/mnt/card/utils/eeprom_test -w $1 200 `/mnt/card/utils/file2dec.elf $2 200 56`  
