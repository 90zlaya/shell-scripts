#!/bin/bash

################################################################################
# Script name : rtl8821ce-install.sh
# Description : Install RTL8821ce (wireless) driver
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Navigate to the Downloads
cd ~/Downloads/

# Display git version
git --version

# Clone rtl8821ce repository from GitHub
git clone https://github.com/tomaspinho/rtl8821ce.git

# Install dkms
sudo apt-get update && sudo apt-get install dkms

# Go to cloned repository and run installation script
cd rtl8821ce/ && sudo ./dkms-install.sh

# Add a loadable kernel module to the Linux kernel
sudo modprobe 8821ce

# Display parameters of the network interface
iwconfig
