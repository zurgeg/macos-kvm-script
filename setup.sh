#!/bin/sh
echo Creating a macOS KVM with {$1}GBs of storage
echo Press CTRL+C to stop
sudo apt-get install qemu uml-utilities virt-manager git \
    wget libguestfs-tools p7zip-full -y
git clone --depth 1 https://github.com/kholia/OSX-KVM.git
cd OSX-KVM
./fetch-macOS-v2.py
qemu-img convert BaseSystem.dmg -O raw BaseSystem.img
qemu-img create -f qcow2 mac_hdd_ng.img {$1}G
cd ~
echo Complete! Type cd OSX-KVM && ./OpenCore-Boot.sh to start!
