#!/bin/bash -e

#replacing UI files/configs for system
on_chroot << EOF
    git clone --depth 1 https://github.com/Jagrajsinghji/raspberrypi-ui-mods.git -b custom
    cd raspberrypi-ui-mods
    rsync ./usr / -a -v
    rsync ./etc / -a -v
EOF
#to do write rsync