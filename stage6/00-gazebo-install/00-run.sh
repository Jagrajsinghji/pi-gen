#!/bin/bash -e

#replacing UI files/configs for system
on_chroot << EOF
    sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/debian-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
    wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install gazebo9
EOF
