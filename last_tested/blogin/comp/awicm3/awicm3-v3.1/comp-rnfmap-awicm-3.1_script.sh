#!/bin/bash -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
module purge
module load slurm
module load HLRNenv
module load sw.skl
module load cmake
module load cdo nco
module load git
module load intel/19.0.5
module load impi/2019.5

export LC_ALL=en_US.UTF-8
export FC=mpiifort
export F77=mpiifort
export MPIFC=mpiifort
export FCFLAGS=-free
export CC=mpiicc
export CXX=mpiicpc
export MPIROOT="$(mpiifort -show | perl -lne 'm{ -I(.*?)/include } and print $1')"
export MPI_LIB="$(mpiifort -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')"
export IO_LIB_ROOT=/home/shkifmsw/sw/HPC_libraries/intel2019.0.5_impi2019.5_20200811
export PATH=$IO_LIB_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$IO_LIB_ROOT/lib:$LD_LIBRARY_PATH
export SZIPROOT=$IO_LIB_ROOT
export HDF5ROOT=$IO_LIB_ROOT
export HDF5_ROOT=$HDF5ROOT
export NETCDFROOT=$IO_LIB_ROOT
export NETCDFFROOT=$IO_LIB_ROOT
export ECCODESROOT=$IO_LIB_ROOT
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5_ROOT/include
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFFROOT/include
export NETCDF_C_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export I_MPI_SLURM_EXT=0
export LAPACK_LIB='-mkl=sequential'
export LAPACK_LIB_DEFAULT='-L$MKLROOT/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential'
export OIFS_FFTW_DIR='-L$MKLROOT/lib/intel64'
export OIFS_FFTW_INCLUDE='-I$OIFS_FFTW_DIR/include/'
export OIFS_FFTW_LIB='-L$OIFS_FFTW_DIR/lib/ -lmkl_intel_lp64 -lmkl_core -lmkl_sequential'
export ESM_NETCDF_C_DIR=$NETCDFROOT
export ESM_NETCDF_F_DIR=$NETCDFFROOT
export OIFS_GRIB_API_INCLUDE="-I$ECCODESROOT/include"
export OIFS_GRIB_API_LIB="-L$ECCODESROOT/lib -leccodes_f90 -leccodes"
export OIFS_GRIB_INCLUDE="$OIFS_GRIB_API_INCLUDE"
export OIFS_GRIB_LIB="$OIFS_GRIB_API_LIB"
export OIFS_GRIB_API_BIN="$ECCODESROOT/bin"
export LAPACK_LIB_DEFAULT="-L$MKLROOT/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential"
export OIFS_OASIS_BASE=$(pwd)/oasis
export OIFS_OASIS_INCLUDE="-I$OIFS_OASIS_BASE/build/lib/psmile -I$OIFS_OASIS_BASE/build/lib/psmile/scrip -I$OIFS_OASIS_BASE/build/lib/psmile/mct -I$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu"
export OIFS_OASIS_LIB="-L$OIFS_OASIS_BASE/build/lib/psmile -L$OIFS_OASIS_BASE/build/lib/psmile/scrip -L$OIFS_OASIS_BASE/build/lib/psmile/mct -L$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu -lpsmile -lmct -lmpeu -lscrip"
export OIFS_NETCDF_INCLUDE="-I$NETCDFROOT/include"
export OIFS_NETCDF_LIB="-L$NETCDFROOT/lib -lnetcdf"
export OIFS_NETCDFF_INCLUDE="-I$NETCDFFROOT/include"
export OIFS_NETCDFF_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export OIFS_FC=$FC
export OIFS_FFLAGS="-qopenmp -r8 -fp-model precise -align array32byte -O1 -xCORE_AVX2 -g -traceback -convert big_endian -fpe0"
export OIFS_FFIXED=""
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_LFLAGS="$OIFS_MPI_LIB -qopenmp"
export OIFS_CC=$CC
export OIFS_CFLAGS="-qopenmp -fp-model precise -O1 -xCORE_AVX2 -g -traceback -qopt-report=0 -fpe0"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS"
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd rnfmap
rm -rf bin; mkdir bin; cd src; make ; cd .. ; cp bin/rnfmap.exe ./bin/rnfma
cd ..
