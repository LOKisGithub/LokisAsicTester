#!/bin/sh

echo "set gpio943 direction out"
echo out > /sys/class/gpio/gpio943/direction

echo "set gpio943 output 0"
echo 0 > /sys/class/gpio/gpio943/value

sleep 1

echo "set gpio943 output 1"
echo 1 > /sys/class/gpio/gpio943/value

echo "set gpio943 direction in"
echo in > /sys/class/gpio/gpio943/direction

