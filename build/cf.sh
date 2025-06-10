../configure \
	--prefix=$(pwd)/install \
	--with-device=ch4:ofi \
	--with-libfabric=embedded \
	--with-cuda=/soft/compilers/cuda/cuda-12.3.0 \
	--with-ucc=$HOME/ucc/build/install \
	--enable-g=all |& tee configure.out
