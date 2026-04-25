cd ~
git clone https://github.com/unitreerobotics/unilidar_sdk.git
cd unilidar_sdk/unitree_lidar_sdk
mkdir build
cd build
cmake .. && make -j2
cd ~/unilidar_sdk/
mv unitree_lidar_ros2 ~/robocon/src/unitree_lidar_ros2
cd ~/robocon
./colcon_build.sh