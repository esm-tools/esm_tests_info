#!/usr/bin/bash -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
source /etc/profile.d/modules.sh
module purge
module load cmake
module load udunits
module load gribapi/1.28.0
module unload intel.compiler
module load intel.compiler
module unload netcdf
module load hdf5
module load centoslibs cdo nco netcdf/4.6.2_intel
module load automake
module load python3/3.7.7_intel2020u2
module load git
module list
module unload intel.mpi
module load intel.mpi
module unload gribapi

export LC_ALL=en_US.UTF-8
export FC="mpiifort -mkl"
export F77="mpiifort -mkl"
export MPIFC=mpiifort
export MPICC=mpiicc
export CC=mpiicc
export CXX=mpiicpc
export IO_LIB_ROOT=/work/ollie/jstreffi/software/HPC_libraries/intel2018.0.5_intelmpi_18.0.4_20210804
export HDF5ROOT=$IO_LIB_ROOT
export NETCDFFROOT=$IO_LIB_ROOT
export NETCDFROOT=$IO_LIB_ROOT
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFFROOT/include
export NETCDF_CXX_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_LIBRARIES=$NETCDFROOT/lib
export PERL5LIB=/usr/lib64/perl5
export LAPACK_LIB="-lmkl_intel_lp64 -lmkl_core -mkl=sequential -lpthread -lm -ldl"
export LAPACK_LIB_DEFAULT="-L$MKLROOT/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential"
export XML2ROOT=/usr
export ZLIBROOT=/usr
export MPIROOT=${I_MPI_ROOT}/intel64
export MPI_LIB=$(mpiifort -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')
export PATH=/work/ollie/jhegewal/sw/cmake/bin:$PATH
export LD_LIBRARY_PATH=$IO_LIB_ROOT/lib:$LD_LIBRARY_PATH
export SZIPROOT=$IO_LIB_ROOT
export HDF5_ROOT=$HDF5ROOT
export ECCODESROOT=$IO_LIB_ROOT
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5_ROOT/include
export NETCDF_C_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export ESM_NETCDF_C_DIR=$NETCDFROOT
export ESM_NETCDF_F_DIR=$NETCDFFROOT
export OIFS_GRIB_API_INCLUDE="-I$ECCODESROOT/include"
export OIFS_GRIB_API_LIB="-L$ECCODESROOT/lib -leccodes_f90 -leccodes"
export OIFS_GRIB_INCLUDE="$OIFS_GRIB_API_INCLUDE"
export OIFS_GRIB_LIB="$OIFS_GRIB_API_LIB"
export OIFS_GRIB_API_BIN="$ECCODESROOT/bin"
export OIFS_OASIS_BASE=$(pwd)/oasis
export OIFS_OASIS_INCLUDE="-I$OIFS_OASIS_BASE/build/lib/psmile -I$OIFS_OASIS_BASE/build/lib/psmile/scrip -I$OIFS_OASIS_BASE/build/lib/psmile/mct -I$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu"
export OIFS_OASIS_LIB="-L$OIFS_OASIS_BASE/build/lib/psmile -L$OIFS_OASIS_BASE/build/lib/psmile/scrip -L$OIFS_OASIS_BASE/build/lib/psmile/mct -L$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu -lpsmile -lmct -lmpeu -lscrip"
export OIFS_NETCDF_INCLUDE="-I$NETCDFROOT/include"
export OIFS_NETCDF_LIB="-L$NETCDFROOT/lib -lnetcdf"
export OIFS_NETCDFF_INCLUDE="-I$NETCDFFROOT/include"
export OIFS_NETCDFF_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export OIFS_FC=$FC
export OIFS_FFLAGS="-r8 -fp-model precise -align array32byte -O3 -qopenmp -xCORE_AVX2 -g -traceback -convert big_endian"
export OIFS_FFIXED=""
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_LFLAGS="$OIFS_MPI_LIB -qopenmp"
export OIFS_CC=$CC
export OIFS_CFLAGS="-fp-model precise -O3 -xCORE_AVX2 -g -traceback -qopt-report=0 -fpe0 -qopenmp"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS _OPENMP"
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_MEM_PER_NODE
unset SLURM_MEM_PER_CPU
unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd oifs-43r3
export OIFS_TOPLEVEL_DIR=/work/ollie/mandresm/testing/comp/awicm3/awicm3-frontiers/oifs-43r3; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.cfg ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
