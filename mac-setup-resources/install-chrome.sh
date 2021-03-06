#!/bin/bash
# This is a chrome installation script for macOS.
# This script has not been fully tested.

# Make sure extra files end up where you will find them
cd ~/Desktop

# Download Chrome .dmg
curl -O https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg

# Open/mount .dmg
hdiutil mount googlechrome.dmg

# Move .app to /Applications
cp -r '/Volumes/Google Chrome/Google Chrome.app' '/Applications'

# Unmount .dmg
hdiutil unmount /Volumes/Google\ Chrome

# Remove .dmg
rm googlechrome.dmg
