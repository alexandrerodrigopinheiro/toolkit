#!/bin/bash

for f in $(find . -type f -name "*.png")
do
	echo "Processing $f ..."
	#pngquant --speed 1 $f -o $f
	pngquant --force --quality=40-100 --strip --skip-if-larger --output $f $f
done
