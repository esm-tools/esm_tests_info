#!/bin/sh
export OMP_NUM_THREADS=8
export OASIS_OMP_NUM_THREADS=8
./guess -parallel run_coupled_4_1_2.ins
