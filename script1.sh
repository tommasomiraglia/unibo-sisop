#!/bin/bash
VAR=$#
NUM=1
while ((${NUM}<=$VAR )); do
	echo "arg ${NUM} is ${!NUM}"
	((NUM=${NUM}+1))
done
./script2.sh "$@"
