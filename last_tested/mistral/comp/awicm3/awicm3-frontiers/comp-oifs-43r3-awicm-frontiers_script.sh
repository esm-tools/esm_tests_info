#!/bin/bash -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
module purge
module unload netcdf_c
module unload intel intelmpi
module load python3/2021.01-gcc-9.1.0
module load cmake/3.13.3
module load autoconf/2.69
module load nco
module load cdo
module load gcc/4.8.2
module unload intel intelmpi
module load intel/18.0.4 intelmpi/2018.5.288
module load libtool/2.4.6
module load automake/1.14.1

export LC_ALL=en_US.UTF-8
export FC=mpiifort
export F77=mpiifort
export MPIFC=mpiifort
export CC=mpiicc
export CXX=mpiicpc
export MPIROOT="$(mpiifort -show | perl -lne 'm{ -I(.*?)/include } and print $1')"
export MPI_LIB="$(mpiifort -show |sed -e 's/^[^ ]*//' -e 's/-[I][^ ]*//g')"
export HDF5ROOT=/sw/rhel6-x64/hdf5/hdf5-1.8.14-parallel-impi-intel14/
export HDF5_C_INCLUDE_DIRECTORIES=$HDF5ROOT/include
export HDF5_ROOT=$HDF5ROOT
export NETCDFFROOT=/sw/rhel6-x64/netcdf/netcdf_fortran-4.4.2-parallel-impi-intel14/
export NETCDFROOT=/sw/rhel6-x64/netcdf/netcdf_c-4.3.2-parallel-impi-intel14/
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFFROOT/include
export NETCDF_C_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_INCLUDE_DIRECTORIES=/sw/rhel6-x64/netcdf/netcdf_cxx-4.2.1-gcc48/include
export LAPACK_LIB='-mkl=sequential'
export LAPACK_LIB_DEFAULT='-L/sw/rhel6-x64/intel/intel-18.0.1/mkl/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential'
export PERL5LIB=/usr/lib64/perl5
export SZIPROOT=/sw/rhel6-x64/sys/libaec-0.3.2-gcc48
export ZLIBROOT=/usr
export OASIS3MCT_FC_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export LD_LIBRARY_PATH=$NETCDFROOT/lib:$NETCDFFROOT/lib:$HDF5ROOT/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/sw/rhel6-x64/gcc/gcc-4.8.2/lib64:$LD_LIBRARY_PATH
export I_MPI_FABRICS=shm:dapl
export I_MPI_FALLBACK=disable
export I_MPI_SLURM_EXT=1
export I_MPI_LARGE_SCALE_THRESHOLD=8192
export I_MPI_DYNAMIC_CONNECTION=1
export DAPL_NETWORK_NODES=$SLURM_NNODES
export DAPL_NETWORK_PPN=$SLURM_NTASKS_PER_NODE
export DAPL_WR_MAX=500
export OMPI_MCA_pml=cm
export OMPI_MCA_mtl=mxm
export OMPI_MCA_coll=^ghc
export OMPI_MCA_mtl_mxm_np=0
export MXM_RDMA_PORTS=mlx5_0:1
export MXM_LOG_LEVEL=FATAL
export MKLROOT=/sw/rhel6-x64/intel/intel-18.0.4/compilers_and_libraries_2018/linux/mkl/lib/intel64/
export LAPACK_LIB_DEFAULT="-L$MKLROOT -lmkl_intel_lp64 -lmkl_core -lmkl_sequential"
export ESM_NETCDF_C_DIR=$NETCDFROOT
export ESM_NETCDF_F_DIR=$NETCDFFROOT
export GRIBAPIROOT=/sw/rhel6-x64/grib_api/grib_api-1.15.0-intel14
export GRIBROOT=/sw/rhel6-x64/grib_api/grib_api-1.15.0-intel14
export UDUNITS2_ROOT=/sw/rhel6-x64/util/udunits-2.2.26-gcc64
export FFTW_ROOT=/sw/rhel6-x64/numerics/fftw-3.3.7-openmp-gcc64
export PROJ4_ROOT=/sw/rhel6-x64/graphics/proj4-4.9.3-gcc48
export PATH=/sw/rhel6-x64/gcc/binutils-2.24-gccsys/bin:${PATH}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GRIBAPIROOT/lib:$PROJ4_ROOT/lib:$FFTW_ROOT/lib:$SZIPROOT/lib
export GRIB_SAMPLES_PATH="$GRIBAPIROOT/share/grib_api/ifs_samples/grib1_mlgrib2/"
export PATH=$PATH:/mnt/lustre01/sw/rhel6-x64/devtools/fcm-2017.10.0/bin/
export OIFS_GRIB_API_INCLUDE="-I$GRIBAPIROOT/include"
export OIFS_GRIB_API_LIB="-L$GRIBAPIROOT/lib -lgrib_api_f90 -lgrib_api"
export OIFS_GRIB_INCLUDE="$OIFS_GRIB_API_INCLUDE"
export OIFS_GRIB_LIB="$OIFS_GRIB_API_LIB"
export OIFS_GRIB_API_BIN="$GRIBAPIROOT/bin"
export OIFS_OASIS_BASE=$(pwd)/oasis
export OIFS_OASIS_INCLUDE="-I$OIFS_OASIS_BASE/build/lib/psmile -I$OIFS_OASIS_BASE/build/lib/psmile/scrip -I$OIFS_OASIS_BASE/build/lib/psmile/mct -I$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu"
export OIFS_OASIS_LIB="-L$OIFS_OASIS_BASE/build/lib/psmile -L$OIFS_OASIS_BASE/build/lib/psmile/scrip -L$OIFS_OASIS_BASE/build/lib/psmile/mct -L$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu -lpsmile -lmct -lmpeu -lscrip"
export OIFS_NETCDF_INCLUDE="-I$NETCDFROOT/include"
export OIFS_NETCDF_LIB="-L$NETCDFROOT/lib -lnetcdf"
export OIFS_NETCDFF_INCLUDE="-I$NETCDFFROOT/include"
export OIFS_NETCDFF_LIB="-L$NETCDFFROOT/lib -lnetcdff"
export OIFS_FC=$FC
export OIFS_FFLAGS="-r8 -fp-model precise -align array32byte -O3 -qopenmp -xCORE_AVX2 -g -traceback -convert big_endian -fpe0"
export OIFS_FFIXED=""
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_LFLAGS="$OIFS_MPI_LIB -qopenmp"
export OIFS_CC=$CC
export OIFS_CFLAGS="-fp-model precise -O3 -qopenmp -xCORE_AVX2 -g -traceback -qopt-report=0 -fpe0"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS"
export OIFS_FFTW_DIR="$FFTW_ROOT"
export OIFS_FFTW_INCLUDE="-I$OIFS_FFTW_DIR/include/"
export OIFS_FFTW_LIB="-L$OIFS_FFTW_DIR/lib/ -lfftw3f"
export DR_HOOK_IGNORE_SIGNALS=-1
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE

unset SLURM_DISTRIBUTION
unset SLURM_NTASKS
unset SLURM_NPROCS
unset SLURM_ARBITRARY_NODELIST

cd oifs-43r3
export OIFS_TOPLEVEL_DIR=/mnt/lustre02/work/ab0995/a270152/testing/comp/awicm3/awicm3-frontiers/oifs-43r3; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.cfg ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
