#!/bin/bash

function spinner {
	pid=$1

	spin[0]="-"
	spin[1]="\\"
	spin[2]="|"
	spin[3]="/"

	while [[ "$(ps -ef | awk '{print $2}' | grep $pid)" ]]
	do
	  for i in "${spin[@]}"
	  do
	        echo -ne "\b$i"
	        # sleep 0.1 - in AIX OS sleep doesn't accept fraction numbers
	        perl -e 'select(undef,undef,undef,.1)'
	  done
	done

	echo -ne ""
}
