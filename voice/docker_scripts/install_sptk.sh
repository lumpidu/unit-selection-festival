#!/bin/bash

if [ -d /usr/local/src/SPTK-3.6]
then exit 0
else
    cd /usr/local/src
    export ESTDIR=`pwd`/speech_tools
    export FLITEDIR=`pwd`/flite
    export FESTVOXDIR=`pwd`/festvox
    export SPTKDIR=`pwd`/SPTK
    wget http://festvox.org/packed/SPTK-3.6.tar.gz
    tar zxvf SPTK-3.6.tar.gz
    mkdir SPTK
    patch -p0 <festvox/src/clustergen/SPTK-3.6.patch 
    cd SPTK-3.6
    ./configure --prefix=$SPTKDIR
    make
    make install
fi