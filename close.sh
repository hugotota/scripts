#!/bin/bash

processes=`ps -el | grep $1 | awk '{print $4}'`

for process in $processes; do
	kill -9 $process
done
