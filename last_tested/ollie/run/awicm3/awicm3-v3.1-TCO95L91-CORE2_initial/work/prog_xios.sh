#!/bin/sh
if [ -z ${PMI_RANK+x} ]; then PMI_RANK=$PMIX_RANK; fi
slot=$(awk -v r=$((PMI_RANK + 1)) 'NR == r {print $2; exit}' rank_placement)
echo xios taskset -c $slot-$((slot + 36 - 1))
taskset -c $slot-$((slot + 36 - 1)) ./script_xios.sh
