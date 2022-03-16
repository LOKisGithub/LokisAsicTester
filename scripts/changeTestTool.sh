#!/bin/sh
old=`cat /mnt/card/currentTestTool`
echo "Changing testTool from "$old" to "$1 >> /tmp/tester.log
echo "#!/bin/sh" > /mnt/card/single-board-test
echo "date >> /tmp/tester.log" >> /mnt/card/single-board-test
echo "echo \"Executing $1\" | tee -a /tmp/tester.log" >> /mnt/card/single-board-test
if echo $1|grep bmminer - > /dev/null; then
   
   if echo $1|grep "17" - > /dev/null; then
      echo "/mnt/card/utils/unbuffer.elf /mnt/card/testtool/"$1" --debug --verbose --logfile /tmp/tester.log --default-config /config/cgminer.conf| tee -a /tmp/tester.log" >> /mnt/card/single-board-test
   else
      echo "/mnt/card/utils/unbuffer.elf /mnt/card/testtool/"$1" --debug --verbose --logfile /tmp/tester.log --fixed-freq --no-pre-heat --default-config /config/cgminer.conf| tee -a /tmp/tester.log" >> /mnt/card/single-board-test
   fi
   
else
   echo "/mnt/card/utils/unbuffer.elf /mnt/card/testtool/"$1" | tee -a /tmp/tester.log" >> /mnt/card/single-board-test
fi

killall $old
echo $1 > /mnt/card/currentTestTool
