#!/bin/bash

make -j 8 2>&1 | tee make.log
make install 2>&1 | tee install.log
