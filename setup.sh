#! /usr/bin/bash
#Paravoid \(._.\)

echo "This script downloads the necessary packages"
echo -e "_____________________________________________\n\n"


dirct=${HOME}/Desktop
output="CHECK_THIS"
mkdir -p ${dirct}/${output}
cd ${dirct}/${output}
echo -e "Install Your Gnome Extensions from: https://extensions.gnome.org/ \n\t 1.Activities configurator,\n\t 2.Dash to Dock,\n\t 3.User Themes,\n\t 4.Show Desktop Button" > notes.txt
echo -e "\n Move your Spotify tracks from Windows to Linux" >> notes.txt


echo -e "*****Updating System Dependencies*****\n"
sudo apt-get -y update && sudo apt-get -y upgrade


echo -e "*****Adjusting Grub to Windows*****\n"
#grep menuentry /boot/grub/grub.cfg


echo -e "*****Installing Common Apps*****\n"

echo "Changing Wallpaper"
cd ${HOME}
yes Y | wget -q https://download1349.mediafire.com/66fkie8v7mtg/8xow4969hoyszpc/kde2.jpg
gsettings set org.gnome.desktop.background picture-uri file:${HOME}/kde2.jpg
yes Y | wget -q https://download1475.mediafire.com/tjf41osrpikg/eda2ukcp4l23t77/Terminator-512.png
cd ${dirct}/${output}
echo -e "\nChange Activities configurator icon, You'll find it in home" >> notes.txt

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
echo "Installing unzip"
sudo apt-get -y install unzip
echo "Installing Mojave System Theme"
#This will be extracted and moved to ${HOME}/.themes
yes Y | wget -q -P ${dirct}/${output} https://download849.mediafire.com/llbfsdmcpyfg/u6i0m3m5ibjgzhk/Mojave-dark-solid.tar.xz
tar -xf Mojave-dark-solid.tar.xz
mkdir -p ${HOME}/.themes
mv ${dirct}/${output}/Mojave-dark-solid ${HOME}/.themes

# Repository: https://codeload.github.com/vinceliuice/McMojave-circle/zip/master
yes Y | wget -q -P ${dirct}/${output} https://download938.mediafire.com/ic6fvlz2fm6g/xzm544nh3691fzv/master
unzip master
cd ${dirct}/${output}/McMojave-circle-master
./install.sh
cd ..


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
sudo apt-get -y install python3-serial
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