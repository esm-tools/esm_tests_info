#!/bin/sh
if [ -z ${PMI_RANK+x} ]; then PMI_RANK=$PMIX_RANK; fi
slot=$(awk -v r=$((PMI_RANK + 1)) 'NR == r {print $2; exit}' rank_placement)
echo lpj_guess taskset -c $slot-$((slot + 8 - 1))
taskset -c $slot-$((slot + 8 - 1)) ./script_lpj_guess.sh
