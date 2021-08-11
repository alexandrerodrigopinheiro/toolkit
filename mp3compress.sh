#!/bin/bash

for f in $(find . -type f -name "*.mp3")
do
	echo "Processing $f ..."
	lame --mp3input -b 64 $f tmp && mv tmp $f
done
