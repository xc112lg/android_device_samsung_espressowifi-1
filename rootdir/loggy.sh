#!/bin/sh
# loggy.sh.

date=`date +%F_%H-%M-%S`
logcat -b all -v time -f  /cache/logcat_${date}.txt &
dmesg -w > /cache/kmsg_${date}.txt
