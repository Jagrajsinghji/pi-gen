#!/bin/bash -e

on_chroot << EOF
    git clone https://github.com/ilpincy/argos3.git argos3
    cd argos3
    mkdir build
    cd build
    cmake ../src 
    make install
    make doc
    sudo make install
    sudo ldconfig
EOF
