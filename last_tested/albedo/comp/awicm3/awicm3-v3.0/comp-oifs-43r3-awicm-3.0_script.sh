#!/usr/bin/bash
# Dummy script generated by esm-tools, to be removed later: 
set -e
module purge
module load intel-oneapi-compilers/2022.1.0
module load intel-oneapi-mkl/2022.1.0-gcc12.1.0
module load openmpi/4.1.3-intel2021.6.0
module load udunits/2.2.28
module load hdf5/1.12.2-openmpi4.1.3-intel2021.6.0
module load netcdf-c/4.8.1-openmpi4.1.3-intel2021.6.0
module load netcdf-fortran/4.5.4-openmpi4.1.3-intel2021.6.0
module load netcdf-cxx4/4.3.1-openmpi4.1.3-intel2021.6.0
module load eccodes/2.25.0-openmpi4.1.3-intel2021.6.0
module load cdo/2.0.5
module load nco/5.0.1
module load git/2.35.2
module load python/3.10.4
module list

export LC_ALL=en_US.UTF-8
export FC=mpif90
export F77=mpif90
export MPIFC=mpif90
export MPICC=mpicc
export CC=mpicc
export CXX=mpic++
export CPU_MODEL=AMD_EPYC_ZEN2
export FESOM_PLATFORM_STRATEGY=albedo
export PERL5LIB=<HOME_DIR>/my_libs/perl-5.32.0/lib
export HDF5ROOT=/albedo/soft/sw/spack-sw/hdf5/1.12.2-mstdrjw/
export NETCDFROOT=/albedo/soft/sw/spack-sw/netcdf-c/4.8.1-vvxxdc3/
export NETCDFFROOT=/albedo/soft/sw/spack-sw/netcdf-fortran/4.5.4-uwfs3bu/
export ECCODESROOT=<HOME_DIR>/.spack/sw/eccodes/2.25.0-hwsa4h3/
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export MPIROOT=$(mpif90 -show | perl -lne 'm{ -I(.*?)/include } and print $1')
export MPI_LIB=$(mpif90 -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')
export LAPACK_LIB='-L/albedo/soft/sw/spack-sw/intel-oneapi-mkl/2022.1.0-akthm3n/mkl/2022.1.0 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential -lm -ldl'
export LD_LIBRARY_PATH=/albedo/soft/sw/spack-sw/intel-oneapi-mkl/2022.1.0-akthm3n/mkl/2022.1.0/lib/intel64:$LD_LIBRARY_PATH
export PATH=$PERL5LIB/../bin:$PATH
export PATH=$PATH:$ECCODESROOT/bin
export HDF5_ROOT=$HDF5ROOT
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5_ROOT/include
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFFROOT/include
export NETCDF_C_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export ESM_NETCDF_C_DIR=$NETCDFROOT
export ESM_NETCDF_F_DIR=$NETCDFFROOT
export OIFS_GRIB_API_INCLUDE="-I$ECCODESROOT/include"
export OIFS_GRIB_API_LIB="-L$ECCODESROOT/lib64 -leccodes_f90 -leccodes"
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
export OIFS_FFLAGS="-r8 -fp-model precise -align array32byte -O3 -qopenmp -g -traceback -convert big_endian -march=core-avx2 -mtune=core-avx2"
export OIFS_FFIXED=""
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_MPI_LIB="$MPI_LIB"
export OIFS_LFLAGS="$OIFS_MPI_LIB -qopenmp"
export OIFS_CC=$CC
export OIFS_CFLAGS="-fp-model precise -O3 -g -traceback -qopt-report=0 -fpe0 -qopenmp -march=core-avx2 -mtune=core-avx2"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS _OPENMP"
export OASIS_FFLAGS="-march=core-avx2"
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_MEM_PER_NODE
unset SLURM_MEM_PER_CPU
unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd oifs-43r3
export OIFS_TOPLEVEL_DIR=<TEST_DIR>comp/awicm3/awicm3-v3.0/oifs-43r3; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.cfg ; chmod -R 700 . ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
