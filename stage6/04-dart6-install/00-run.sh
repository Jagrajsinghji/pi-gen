#!/bin/bash -e

on_chroot << EOF
    git clone https:////github.com/dartsim/dart.git dart --depth 1 --branch v6.12.0
    cd dart
    mkdir build
    cd build
    cmake ..
    make
    make install
    sudo ldconfig
    cd ../../
    sudo rm -r -f ./dart
EOF
