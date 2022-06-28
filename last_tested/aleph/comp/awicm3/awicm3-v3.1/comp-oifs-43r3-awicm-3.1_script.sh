#!/bin/sh -l
# Dummy script generated by esm-tools, to be removed later: 
set -e
module unload craype
module load craype/2.6.2
module load PrgEnv-cray/6.0.4
module load pbs
module load cray-mpich/7.7.3
module load craype-x86-skylake
module load cmake/3.14.0
module load cray-hdf5-parallel/1.10.2.0
module load cray-netcdf-hdf5parallel/4.6.1.3
module load cdo/1.9.5
module load fftw/2.1.5.9
module load nco/4.9.4
module load proj4/5.1.0
module load python/3.9.1
module list

export LC_ALL=en_US.UTF-8
export HDF5ROOT=$HDF5_ROOT
export NETCDFFROOT=$NETCDF_DIR
export NETCDFROOT=$NETCDF_DIR
export NETCDF_Fortran_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_INCLUDE_DIRECTORIES=$NETCDFROOT/include
export NETCDF_CXX_LIBRARIES=$NETCDFROOT/lib
export PERL5LIB=/usr/lib64/perl5
export XML2ROOT=/usr
export ZLIBROOT=/usr
export TMPDIR=/tmp
export PMI_LABEL_ERROUT=1
export ECCODESROOT=/proj/awiiccp/software/ecmwf/eccodes_cce_mpich
export MPICH_MAX_THREAD_SAFETY=multiple
export MPICH_CRAY_OPT_THREAD_SYNC=0
export MPICH_OPT_THREAD_SYNC=0
export ENABLE_ALEPH_CRAYMPICH_WORKAROUNDS=
export FC=ftn
export CC=cc
export CXX=CC
export CRAYPE_LINK_TYPE=dynamic
export OIFS_GRIB_API_INCLUDE="-I$ECCODESROOT/include"
export OIFS_GRIB_API_LIB="-L$ECCODESROOT/lib -leccodes_f90 -leccodes"
export OIFS_GRIB_INCLUDE="$OIFS_GRIB_API_INCLUDE"
export OIFS_GRIB_LIB="$OIFS_GRIB_API_LIB"
export OIFS_GRIB_API_BIN="$ECCODESROOT/bin"
export GRIB_SAMPLES_PATH="$GRIBAPIROOT/share/grib_api/ifs_samples/grib1_mlgrib2/"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ECCODESROOT/lib:$PROJ4_DIR/lib
export OIFS_FFTW_INCLUDE='-I$FFTW_INC'
export OIFS_FFTW_LIB='-L$FFTW_DIR -ldfftw -ldrfftw'
export OIFS_OASIS_BASE=$(pwd)/oasis
export OIFS_OASIS_INCLUDE="-I$OIFS_OASIS_BASE/build/lib/psmile -I$OIFS_OASIS_BASE/build/lib/psmile/scrip -I$OIFS_OASIS_BASE/build/lib/psmile/mct -I$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu"
export OIFS_OASIS_LIB="-L$OIFS_OASIS_BASE/build/lib/psmile -L$OIFS_OASIS_BASE/build/lib/psmile/scrip -L$OIFS_OASIS_BASE/build/lib/psmile/mct -L$OIFS_OASIS_BASE/build/lib/psmile/mct/mpeu -lpsmile -lmct -lmpeu -lscrip"
export OIFS_NETCDF_INCLUDE=-I$NETCDF_DIR/include
export OIFS_NETCDF_LIB="-L$NETCDF_DIR/lib -lnetcdf"
export OIFS_NETCDFF_INCLUDE=-I$NETCDF_DIR/include
export OIFS_NETCDFF_LIB="-L$NETCDF_DIR/lib -lnetcdff"
export OIFS_FC=ftn
export OIFS_FFLAGS="-O2 -emf -hthread1 -hflex_mp=conservative -hfp1 -hadd_paren -hbyteswapio -J./ -hcpu=x86-skylake -U_CRAYFTN"
export OIFS_FFIXED="-s real64"
export OIFS_FCDEFS="BLAS LITTLE LINUX INTEGER_IS_INT"
export OIFS_LFLAGS="-dynamic -hbyteswapio"
export OIFS_CC=cc
export OIFS_CFLAGS="-emf -O2 -hcpu=x86-skylake"
export OIFS_CCDEFS="LINUX LITTLE INTEGER_IS_INT _ABI64 BLAS"
export OIFS_XIOS_LIB_NAME=cray-c++-rts
export OASIS_FFLAGS=-emf
export ENVIRONMENT_SET_BY_ESMTOOLS=TRUE


cd oifs-43r3
export OIFS_TOPLEVEL_DIR=<TEST_DIR>comp/awicm3/awicm3-v3.1/oifs-43r3; export OIFS_XIOS=enable ; export OIFS_XIOS_DIR=<TEST_DIR>comp/awicm3/awicm3-v3.1/oifs-43r3/../xios ; export OIFS_XIOS_INCLUDE=-I/<TEST_DIR>comp/awicm3/awicm3-v3.1/oifs-43r3/../xios/inc/; cd make; ../fcm/bin/fcm make -v -j8 -f oifs.fcm ; mv esm/oifs/bin/master.exe esm/oifs/bin/oifs
cd ..
