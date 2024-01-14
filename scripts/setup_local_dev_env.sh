#!/bin/bash
set -e

echo "Installing system dependencies..."
apt update
apt install -y python3-pip clang-format clang-tidy

echo "Cleaning up..."
rm -rf /var/lib/apt/lists/*

echo "Installing Python-based tools..."
pip3 install pre-commit cmakelang

echo "Installing ROS2..."

apt update
apt install software-properties-common -y
add-apt-repository universe -y
apt update
apt install curl -y
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
apt update
apt upgrade -y
apt install ros-humble-ros-base -y
apt install ros-dev-tools -y
source /opt/ros/humble/setup.bash
