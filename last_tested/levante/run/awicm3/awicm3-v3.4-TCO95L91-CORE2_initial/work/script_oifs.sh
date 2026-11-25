#!/bin/sh
export OMP_NUM_THREADS=1
export OASIS_OMP_NUM_THREADS=1
./OpenIFS -v ecmwf -e awi3
