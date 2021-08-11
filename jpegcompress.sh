#!/bin/bash

for f in $(find . -type f -name "*.jpeg")
do
	echo "Processing $f ..."
	# convert  $f -quality 100  $f
    mogrify -quality 70 $f
done
