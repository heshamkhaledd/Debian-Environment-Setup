#! /usr/bin/bash
#Paravoid \(._.\)

echo "This script downloads the necessary packages"
echo -e "_____________________________________________\n\n"


dirct=${HOME}/Desktop/
output="CHECK_THIS"
mkdir -p ${dirct}/${output}
cd ${dirct}/${output}
echo -e "Install Your Gnome Extensions from: https://extensions.gnome.org/ \n\t 1.Activities configurator,\n\t 2.Dash to Dock,\n\t 3.User Themes,\n\t 4.Show Desktop Button" > notes.txt
echo -e "\n Move your Spotify tracks from Windows to Linux" >> notes.txt
cd ${dirct}


echo -e "*****Updating System Dependencies*****\n"
sudo apt-get -y update && sudo apt-get -y upgrade


echo -e "*****Adjusting Grub to Windows*****\n"
#grep menuentry /boot/grub/grub.cfg


echo -e "*****Installing Common Apps*****\n"

echo "Installing Google Chrome"
yes Y | wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo  "Installing Spotify"
yes Y | sudo snap install spotify
echo "Installing Discord"
yes Y | sudo snap install discord --classic
echo "Installing Piper"
sudo apt-get -y install piper
echo "Installing Gnome Tweak Tool"
sudo apt-get -y install gnome-tweak-tool
echo "Installing Mojave System Theme"
yes Y | wget -q -P ${dirct}/${output} https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDcwNjY4MjIiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImIzZjExMWM1MzQwYzE1ZjU2ZDdmNGIxZTFmMmUzOTFlMmJhMWNiMTY3MGNiMjIzZGY2NDhjZTFlMGU0YTAyYTc1MDAwZGZhZWEwMTMwMDA5YmNmYzg5M2NhMTc3NTcyYjM4MTc5MjVhNzc4YmNkMWM3M2RkOWE4YTlmMTdjNmVjIiwidCI6MTYwOTIxMzM4OSwic3RmcCI6IjE0ZTliNzc2ZmMyMGM3Y2ZkY2JjMzVkZGIwMDQ2ZTk1Iiwic3RpcCI6IjE1Ni4yMjMuMS41NCJ9.rcb-XAb3yMm0kgtwcmN22oWpWS-hclx-dhc_FPiirao/Mojave-dark-solid.tar.xz
yes Y | wget -q -P ${dirct}/${output} https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDc0MDk2MzUiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjMzYWRjYzM5ZDRjZDk1ZmJlMzliNjA0Yzc4OGZlZjBlZWQzODUxZDI0NWRmMjdhNTRmZTI4MWVhOTc0M2MzNGVjOWU5ZWNhNGVhZWI3YWFlZGRiOGJkYzA0N2IxY2Y2ZWE1NmVkMWFkNmMzOGQwMDI1NTE5OTcxNDMzNDQ1MmZlIiwidCI6MTYwOTIxMzYwMCwic3RmcCI6IjE0ZTliNzc2ZmMyMGM3Y2ZkY2JjMzVkZGIwMDQ2ZTk1Iiwic3RpcCI6IjE1Ni4yMjMuMS41NCJ9.cPAD831-zdOUmNguYHPCfExUrrhbi88dE28L3Jq17VE/01-McMojave-circle.tar.xz
echo "Installing NeoFetch"
sudo apt-get -y install neofetch
echo "Installing CMatrix"
sudo apt-get -y install cmatrix
echo "Installing gopen Tool"
sudp apt-get -y install gnustep-gui-runtime
echo "Installing Flameshot Screenshot Tool"
sudo apt-get -y install flameshot
echo "Installing ifconfig Tool"
sudo apt-get -y install ifconfig
echo "Installing Net-Tools"
sudo apt-get -y install net-tools
echo "Installing VLC"
sudo apt-get -y install vlc
echo "Installing Syncplay"
yes Y | wget -q -P ${dirct}/${output} https://github.com/Syncplay/syncplay/releases/download/v1.6.7/syncplay_1.6.7.deb
echo "Installing Slack"
yes Y | wget -q -P ${dirct}/${output} https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.0-amd64.deb

echo -e "*****Setting up Work Environment*****\n"

echo "Installing VSCode"
sudo apt-get -y install software-properties-common apt-transport-https wget
yes Y | wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo "Installing Python3"
sudo apt-get -y install python3.8
echo "Installing Pip"
sudo apt-get -y install python3-pip
echo "Installing ZMQ Networking Library"
sudo apt-get -y install python3-zmq
echo "Installing ROS-SERIAL Noetic"
yes Y | wget -c https://raw.githubusercontent.com/qboticslabs/ros_install_noetic/master/ros_install_noetic.sh && chmod +x ./ros_install_noetic.sh && ./ros_install_noetic.sh
sudo apt-get -y install python3-roslaunch
sudo apt-get -y install python3-rosnode
echo "Installing Remmina"
sudo apt-get -y install remmina
echo "Installing Arduino IDE"
sudo apt-get -y install arduino
echo "Installing PuTTy Serial Monitor"
sudo apt-get -y install putty
echo "Installing AVR Compiler and Libraries"
sudo apt-get -y install gcc-avr
sudo apt-get -y install avr-libc
sudo apt-get -y install gdb-avr

echo "Packages Installed Sucessfully!"
exit 0;
$SHELL