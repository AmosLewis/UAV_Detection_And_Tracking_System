#!/bin/bash  

SEQ_IN=$1
FACTOR=$2

FILES="$SEQ_IN/*.png"

for f in $FILES
do
	echo "Processing $f"
	convert $f -filter point -resize $FACTOR% -define png:color-type=2 $f
done


