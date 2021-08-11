#!/bin/bash

for f in $(find . -type f -name "*.jpeg")
do
	echo "Processing $f ..."
    mogrify -quality 70 $f
done
