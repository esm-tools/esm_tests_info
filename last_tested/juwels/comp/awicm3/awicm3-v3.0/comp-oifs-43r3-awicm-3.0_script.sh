#!/usr/bin/bash -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
module --force purge
module use $OTHERSTAGES
module --force purge
module use /gpfs/software/juwels/otherstages
module load Stages/2022
module load Intel/2021.4.0
module load OpenMPI/4.1.2
module load CMake/3.21.1
module load Python/3.9.6
module load imkl/2021.4.0
module load Perl/5.34.0
module load git

export LC_ALL=en_US.UTF-8
export TMPDIR=/tmp
export FC=mpifort
export F77=mpifort
export MPIFC=mpifort
export FCFLAGS=-free
export CC=mpicc
export CXX=mpic++
export MPIROOT="$($FC -show | perl -lne 'm{ -I(.*?)/include } and print $1')"
export MPI_LIB="$($FC -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')"
export PROJECT_ID=$(for i in $(id -Gn $whoami);do echo "  - $i" ;done | grep chhb | head -1 | cut -c 5-10)
export IO_LIB_ROOT=/p/project/$PROJECT_ID/HPC_libraries/intel-2021.4.0_openmpi-4.1.2_20220129
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
export PATH=$IO_LIB_ROOT/bin:$PATH
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
export OIFS_FFLAGS="-r8 -fp-model precise -align array32byte -O1 -qopenmp -xCORE_AVX2 -g -traceback -convert big_endian -fpe0"
export OIFS_FFIXED=""
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_LFLAGS="$OIFS_MPI_LIB -qopenmp"
export OIFS_CC=$CC
export OIFS_CFLAGS="-fp-model precise -O3 -xCORE_AVX2 -g -traceback -qopt-report=0 -fpe0 -qopenmp"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS _OPENMP"
export MAIN_LDFLAGS=-openmp
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd oifs-43r3
export OIFS_TOPLEVEL_DIR=<TEST_DIR>comp/awicm3/awicm3-v3.0/oifs-43r3; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.cfg ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
