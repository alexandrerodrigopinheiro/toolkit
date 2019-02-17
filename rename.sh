#!/bin/bash

ORG=$1
NUM=0
for i in $ORG*.png;
do
	((COL=NUM));
	if [ $NUM -lt 10 ]
	then
		cp "${i}" "${ORG}0${NUM}.png";
	else
		cp "${i}" "${ORG}${NUM}.png";
	fi
	((NUM++));
done


