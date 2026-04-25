git clone https://github.com/YDLIDAR/YDLidar-SDK.git
mkdir YDLidar-SDK/build
cd YDLidar-SDK/build
cmake ..
make
sudo make install
cd ../
pip3 install .
cd ~/robocon/src
git clone https://github.com/YDLIDAR/ydlidar_ros2_driver.git
cd ~/robocon
./colcon_build.sh