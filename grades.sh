#!/bin/bash
# Brandon Barrett
while read sid first last g1 g2 g3
do
	average=$(( (g1+g2+g3)/3 ))
	echo "$average [$sid] $last, $first"
done < $1 | sort -k 3 -k 2
