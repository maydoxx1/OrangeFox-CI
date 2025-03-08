#!/bin/bash

# Device
export FOX_BRANCH="fox_9.0"
export DT_LINK="https://github.com/maydoxx1/android_device_samsung_a04.git -b fox_9.0"  # Link to your device tree

export DEVICE="a04"  # Your device's codename (Samsung A04)
export OEM="samsung"  # The OEM for Samsung

# Build Target
export TARGET="recoveryimage"  # A-Only devices should use recoveryimage

export OUTPUT="OrangeFox*.zip"  # Output file name for recovery

# Cache Configuration
export SYNC_PATH="$HOME/work"  # Path to sync repositories (adjust according to your system)
export USE_CCACHE=1  # Enable CCACHE for faster builds
export CCACHE_SIZE="25G"  # Reduce CCACHE size to 25GB
export CCACHE_DIR="$HOME/work/.ccache"  # Cache directory path
export J_VAL=8  # Lower number of threads for reduced CPU load

# Extra Command (Set your maintainer or any environment variable here)
export EXTRA_CMD="export OF_MAINTAINER=Maydo_Al-Dosery"  # Your name as the maintainer

# Magisk
export OF_USE_LATEST_MAGISK=true  # Use the Latest Release of Magisk for the OrangeFox addon
