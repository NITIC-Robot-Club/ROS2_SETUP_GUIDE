locale
sudo apt update -y && sudo apt install locales -y
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale
sudo apt install software-properties-common -y
sudo add-apt-repository universe -y
sudo apt update -y && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb
sudo apt update -y && sudo apt install ros-dev-tools -y
sudo apt update -y
sudo apt upgrade -y
sudo apt install ros-jazzy-desktop -y
echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
source ~/.bashrc
cat ~/.bashrc
sudo rosdep init
rosdep update
cd ~/
mkdir robocon
cd robocon
echo "source /opt/ros/jazzy/setup.bash" >> colcon_build.sh
echo "colcon build --symlink-install --continue-on-error --cmake-args -DBUILD_TESTING=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS='-Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -Wshadow -Wnon-virtual-dtor'" >> colcon_build.sh
chmod +x colcon_build.sh
mkdir src
echo "source ~/robocon/install/setup.bash" >> ~/.bashrc