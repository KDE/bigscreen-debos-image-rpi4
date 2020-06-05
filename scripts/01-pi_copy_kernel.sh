#!/bin/sh -x

cd /boot

if [ $1 = "armhf" ]; then
    cp /boot/vmlinuz-* /boot/firmware/kernel7.img
else
    cp /boot/Image.gz-* /boot/firmware/kernel8.img.gz
    gunzip /boot/firmware/kernel8.img.gz
fi
