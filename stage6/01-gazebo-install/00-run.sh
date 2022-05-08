#!/bin/bash -e

on_chroot << EOF
    git clone --depth 1 https://github.com/osrf/gazebo.git gazebo
    cd gazebo
    mkdir build
    cd build
    cmake ..
    make install
    make doc
    sudo make install
    sudo ldconfig
    cd ../../
    sudo rm -r -f ./gazebo
EOF
