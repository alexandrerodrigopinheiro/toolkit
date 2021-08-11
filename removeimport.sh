#!/bin/bash

for f in $(find . -type f -name "*.import")
do
	echo "Processing $f ..."
	rm -f $f
done
