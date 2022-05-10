#!/bin/bash -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
module purge
module load git/2.31.1-gcc-11.2.0
module load cdo/2.0.5-gcc-11.2.0
module load nco/5.0.6-gcc-11.2.0
module load intel-oneapi-compilers/2022.0.1-gcc-11.2.0
module load intel-oneapi-mkl/2022.0.1-gcc-11.2.0
module load openmpi/4.1.2-intel-2021.5.0
module load netcdf-c/4.8.1-openmpi-4.1.2-intel-2021.5.0
module load netcdf-fortran/4.5.3-openmpi-4.1.2-intel-2021.5.0
module load hdf5/1.12.1-openmpi-4.1.2-intel-2021.5.0
module load libaec/1.0.5-intel-2021.5.0

export LC_ALL=en_US.UTF-8
export CPU_MODEL=AMD_EPYC_ZEN3
export FESOM_PLATFORM_STRATEGY=levante.dkrz.de
export I_MPI_PMI_LIBRARY=/usr/lib64/libpmi2.so
export I_MPI_PMI=pmi2
export FI_PROVIDER=mlx
export I_MPI_OFI_PROVIDER=mlx
export I_MPI_FABRICS=shm:ofi
export HCOLL_ENABLE_MCAST_ALL=1
export HCOLL_MAIN_IB=mlx5_0:1
export UCX_IB_ADDR_TYPE=ib_global
export UCX_NET_DEVICES=mlx5_0:1
export UCX_TLS=mm,knem,cma,dc_mlx5,dc_x,self
export UCX_UNIFIED_MODE=y
export FC=mpif90
export F77=mpif90
export MPICC=mpicc
export MPIFC=mpif90
export CC=mpicc
export CXX=mpicxx
export MPIROOT="$(mpif90 -show | perl -lne 'm{ -I(.*?)/include } and print $1')"
export MPI_LIB="$(mpif90 -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')"
export IO_LIB_ROOT=/work/ab0246/HPC_libraries/intel-oneapi-compilers/2022.0.1-gcc-11.2.0/openmpi/4.1.2-intel-2021.5.0
export HDF5ROOT=/sw/spack-levante/hdf5-1.12.1-tvymb5
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5_ROOT/include
export HDF5_ROOT=$HDF5ROOT
export NETCDFFROOT=/sw/spack-levante/netcdf-fortran-4.5.3-k6xq5g
export NETCDFROOT=/sw/spack-levante/netcdf-c-4.8.1-2k3cmu
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFFROOT/include
export NETCDF_C_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_LIBRARIES=$NETCDFROOT/lib
export PSMPIFLAGS="-lrt -lm -ldl"
export LAPACK_LIB='-mkl=sequential'
export ZLIBROOT=/usr
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export PERL5LIB=/usr/lib64/perl5
export LD_LIBRARY_PATH=$NETCDFROOT/lib:$NETCDFFROOT/lib:$HDF5ROOT/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sw/spack-levante/intel-oneapi-mkl-2022.0.1-ttdktf/mkl/2022.0.1/lib/intel64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sw/spack-levante/intel-oneapi-mpi-2021.5.0-mrcss7/mpi/2021.5.0/libfabric/lib:$LD_LIBRARY_PATH
export SZIPROOT=/sw/spack-levante/libaec-1.0.5-gij7yv
export ECCODESROOT=/work/ab0246/HPC_libraries/intel-oneapi-compilers/2022.0.1-gcc-11.2.0/openmpi/4.1.2-intel-2021.5.0
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
export OASIS_FFLAGS="-march=core-avx2 -mtune=core-avx2"
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd oifs-43r3
export OIFS_TOPLEVEL_DIR=/work/<ACCOUNT>/a270152/testing/comp/awicm3/awicm3-frontiers-xios/oifs-43r3; export OIFS_XIOS=enable ; export OIFS_XIOS_DIR=/work/<ACCOUNT>/a270152/testing/comp/awicm3/awicm3-frontiers-xios/oifs-43r3/../xios ; export OIFS_XIOS_INCLUDE=-I//work/<ACCOUNT>/a270152/testing/comp/awicm3/awicm3-frontiers-xios/oifs-43r3/../xios/inc/; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.fcm ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
