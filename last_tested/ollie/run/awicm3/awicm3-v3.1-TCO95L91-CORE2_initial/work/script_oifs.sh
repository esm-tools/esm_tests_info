#!/bin/sh
export OMP_NUM_THREADS=2
export OASIS_OMP_NUM_THREADS=2
./oifs -v ecmwf -e awi3
