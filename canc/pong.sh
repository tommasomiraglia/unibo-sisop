#!/bin/bash

while (true);do
	sleep 2
	if [[ -e pong.txt ]];then
		echo $0 
		rm pong.txt
		touch ping.txt
	fi
done 
