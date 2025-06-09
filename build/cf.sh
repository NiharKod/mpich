#!/bin/bash

../configure \
	--prefix=$(pwd)/install \
	--with-device=ch4:ucx \
	--with-ucx=/home/nkodkani/ucx/build/install \
	--with-hip=/soft/compilers/rocm/rocm-6.3.2 \
	--with-ucc=/home/nkodkani/ucc/build/install \
	LDFLAGS="-Wl,-rpath,/home/nkodkani/ucx/build/install/lib -Wl,-rpath,/soft/compilers/rocm/rocm-6.3.2/lib"
