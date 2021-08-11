#!/bin/bash

for f in $(find . -type f -name "*.mp3")
do
	echo "Processing $f ..."
	#pngquant --speed 1 $f -o $f
	#pngquant --force --quality=40-100 --strip --skip-if-larger --verbose --output $f $f
	lame --mp3input -b 64 $f tmp && mv tmp $f
done
