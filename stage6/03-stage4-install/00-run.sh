#!/bin/bash -e

on_chroot << EOF
    git clone https://github.com/rtv/Stage.git stage
    cd stage
    mkdir build
    cd build
    cmake ..
    sudo make install -j6
    sudo ldconfig
    cd ../../
    sudo rm -r -f ./stage
EOF
