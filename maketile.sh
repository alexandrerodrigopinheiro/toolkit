#!/bin/bash

COL=$1
ORG=$2
DST="${2}tile.png"
STR=""
NUM=0


for i in $ORG*.png;
do
	STR="${STR} ${i}";
	((NUM++));
done;

if [ $NUM -lt $COL ]
then
	((COL=NUM));
fi

montage -mode concatenate -background none -tile ${COL} ${STR} ${DST}