#!/bin/bash

for f in $(find . -type f -name "*.png")
do
	echo "Processing $f ..."
	find=".png"
	replace=".jpeg"
	out=${$f/${find}/${replace}}
	convert $f out
done
