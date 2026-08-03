#!/bin/bash
# Fix for Ralink/MediaTek MT7601U USB Wi-Fi adapter firmware loading issues.
# Common symptom in dmesg: "Direct firmware load for mt7601u.bin failed"
set -e

echo "==> Checking for MT7601U device (usb id 148f:7601)..."
lsusb | grep -i "148f:7601" || echo "!! Not detected — check the USB connection first."

echo "==> Installing firmware package..."
if command -v pacman &> /dev/null; then
    sudo pacman -S linux-firmware --needed
elif command -v apt &> /dev/null; then
    sudo apt update && sudo apt install -y firmware-misc-nonfree
else
    echo "!! Unknown package manager — install linux-firmware manually."
fi

echo "==> Reloading kernel module..."
sudo modprobe -r mt7601u 2>/dev/null || true
sudo modprobe mt7601u

echo "==> Last 20 dmesg lines mentioning mt7601u:"
dmesg | grep -i mt7601u | tail -n 20

echo "Done. If it still fails, confirm /lib/firmware/mt7601u.bin exists."
