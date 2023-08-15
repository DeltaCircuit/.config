#!/bin/zsh

function install() {
	
# Ask for Sudo
sudo -v

# Install build tools  

sudo apt install git wget flex bison gperf  cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 -y

# Create Conda Environment  
conda create -n iot -y
conda activate iot
conda install pip -y

# Fetch ESP IDF
mkdir -p ~/esp
cd ~/esp
git clone --recursive https://github.com/espressif/esp-idf.git

# Setup Tools
cd ~/esp/esp-idf
./install.sh esp32

}
function remove() {
	echo "Remocing ESP Folder"
	rm -rf ~/esp

	echo "Removing Conda Env"
	conda remove -n iot --all -y
}

case $1 in 
	install)
	  install
	  ;;
  remove)
    remove
    ;;
  *)
    echo "Unhandled Command!"
    ;;
esac

