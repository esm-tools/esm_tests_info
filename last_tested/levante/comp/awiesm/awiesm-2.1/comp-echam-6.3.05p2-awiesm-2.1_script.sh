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
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5ROOT/include
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
export OASIS3MCT_FC_LIB=$(pwd)/lib/
export PERL5LIB=/usr/lib64/perl5
export LD_LIBRARY_PATH=$HDF5ROOT/lib:$NETCDFROOT/lib:$NETCDFFROOT/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sw/spack-levante/intel-oneapi-mkl-2022.0.1-ttdktf/mkl/2022.0.1/lib/intel64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sw/spack-levante/intel-oneapi-mpi-2021.5.0-mrcss7/mpi/2021.5.0/libfabric/lib:$LD_LIBRARY_PATH
export OIFS_OASIS_BASE=$(pwd)/oasis
export OIFS_OASIS_INCLUDE="-I$OIFS_OASIS_BASE/build/lib/psmile -I$OIFS_OASIS_BASE/build/lib/psmile/scrip -I$OIFS_OASIS_BASE/build/lib/psmile/mct -I$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu"
export OASIS3MCTROOT=$(pwd)/oasis/
export configure_opts=--with-coupler=oasis3-mct
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE


cd echam-6.3.05p2
./config/createMakefiles.pl; autoreconf -i --force; mkdir -p src/.deps yaxt/src/.deps yaxt/tests/.deps; ./configure $configure_opts --with-fortran=intel INSTALL='/usr/bin/install -p'; make -j `nproc --all`; make install -j `nproc --all`; mkdir -p src/echam/bin; cp  bin/echam6 src/echam/bin/echam6
cd ..
