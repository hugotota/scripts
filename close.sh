#!/bin/bash

processes=`ps -el | grep $1 | awk '{print $4}'`
other_process=`ps aux | grep $1 | awk '{print $2}'`

for process in $processes; do
	kill -9 $process
done

for pid in $other_process; do
	kill -9 $pid
done
