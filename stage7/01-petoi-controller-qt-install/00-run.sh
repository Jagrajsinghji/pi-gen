#!/bin/bash -e

on_chroot << EOF
    git clone --depth 1 https://github.com/PetoiCamp/PetoiControllerQt.git
    cd PetoiControllerQt
    qmake PetoiControllerQt.pro
    make
EOF
