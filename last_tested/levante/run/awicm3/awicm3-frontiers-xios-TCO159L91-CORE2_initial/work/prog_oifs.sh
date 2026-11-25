#!/bin/sh
if [ -z ${PMI_RANK+x} ]; then PMI_RANK=$PMIX_RANK; fi
slot=$(awk -v r=$((PMI_RANK + 1)) 'NR == r {print $2; exit}' rank_placement)
echo oifs taskset -c $slot-$((slot + 2 - 1))
taskset -c $slot-$((slot + 2 - 1)) ./script_oifs.sh
