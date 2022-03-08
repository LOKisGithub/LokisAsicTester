#!/bin/sh

rm -rf /tmp/eeprom.hex
rm -rf /tmp/eeprom.bin
echo "Dumping eeprom from chain "$1 | tee -a /tmp/tester.log
/mnt/card/utils/eeprom_test -d $1 | tail -n 17 | head -n 16 > /tmp/eeprom.hex
/mnt/card/utils/xxd.elf -r /tmp/eeprom.hex /tmp/eeprom.bin
/mnt/card/utils/xxd.elf /tmp/eeprom.bin | tee -a /tmp/tester.log
