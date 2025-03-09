#!/bin/bash

# Update ROS
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y git libarmadillo-dev ros-"$ROS_DISTRO"-pcl-conversions ros-"$ROS_DISTRO"-pcl-ros

# Clone repos
git clone -b v2.7.1 https://github.com/stevengj/nlopt.git
cd nlopt
mkdir build
cd build
cmake ..
make
sudo make install

wget http://akira.ruc.dk/~keld/research/LKH-3/LKH-3.0.6.tgz
tar xvfz LKH-3.0.6.tgz
cd LKH-3.0.6
make
sudo cp LKH /usr/local/bin

cd ~/code/racer_env
catkin_make