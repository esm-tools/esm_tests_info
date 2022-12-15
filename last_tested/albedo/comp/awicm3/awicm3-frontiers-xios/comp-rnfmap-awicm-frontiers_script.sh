#!/usr/bin/bash
# Dummy script generated by esm-tools, to be removed later: 
set -e
module purge
module load udunits/2.2.28
module load <HOME_DIR>/.spack/modules/intel-oneapi-compilers-2022.0.1-gcc-12.1.0-mech5is
module load <HOME_DIR>/.spack/modules/intel-oneapi-mkl-2022.0.1-gcc-12.1.0-ebd776q
module load <HOME_DIR>/.spack/modules/openmpi-4.1.3-intel-2021.5.0-uyqbpcs
module load <HOME_DIR>/.spack/modules/hdf5-1.12.2-intel-2021.5.0-okkbjga
module load <HOME_DIR>/.spack/modules/netcdf-c-4.8.1-intel-2021.5.0-24hqns7
module load <HOME_DIR>/.spack/modules/netcdf-fortran-4.5.4-intel-2021.5.0-h37jgao
module load <HOME_DIR>/.spack/modules/eccodes-2.25.0-intel-2021.5.0-bjv3v4v
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
export MPIROOT=$(mpif90 -show | perl -lne 'm{ -I(.*?)/include } and print $1')
export MPI_LIB=$(mpif90 -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')
export LAPACK_LIB='-mkl=sequential'
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export PERL5LIB=<HOME_DIR>/my_libs/perl-5.32.0/lib
export HDF5ROOT=<HOME_DIR>/.spack/sw/hdf5/1.12.2-okkbjga/
export NETCDFROOT=<HOME_DIR>/.spack/sw/netcdf-c/4.8.1-24hqns7/
export NETCDFFROOT=<HOME_DIR>/.spack/sw/netcdf-fortran/4.5.4-h37jgao/
export ECCODESROOT=<HOME_DIR>/.spack/sw/eccodes/2.25.0-hwsa4h3/
export PATH=$PERL5LIB/../bin:$PATH
export LD_LIBRARY_PATH=<HOME_DIR>/.spack/sw/intel-oneapi-mkl/2022.0.1-ebd776q/mkl/2022.0.1/lib/intel64:$LD_LIBRARY_PATH
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
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_MEM_PER_NODE
unset SLURM_MEM_PER_CPU
unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd rnfmap
rm -rf bin; mkdir bin; cd src; make ; cd .. ; cp bin/rnfmap.exe ./bin/rnfma
cd ..
