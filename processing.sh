#!/bin/bash

for f in $(find . -type f -name "*.png")
do
	echo "Processing $f ..."
	convert $f -strip PNG32:$f
done

#find . -type f -name "*.png" -exec convert {} -strip {} \;
