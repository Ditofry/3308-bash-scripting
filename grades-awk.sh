#!/bin/bash
# Brandon Barrett
awk '{ print int(($4+$5+$6)/3) " ["$1"] " $3", "$2 }' $1 | sort -k 3 -k 2
