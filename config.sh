#!/bin/bash

# Device Information for Samsung A04
export FOX_BRANCH="fox_9.0"  # Use the appropriate branch for your OrangeFox version (likely 9.0 in this case)
export DT_LINK="https://github.com/maydoxx1/android_device_samsung_a04.git -b fox_9.0"  # Link to your device tree

export DEVICE="a04"  # Your device's codename (Samsung A04)
export OEM="samsung"  # The OEM for Samsung

# Build Target
## "recoveryimage" - For A-Only Devices without using Vendor Boot
## "bootimage" - For A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - For devices Using vendor boot for the recovery ramdisk
export TARGET="recoveryimage"  # A-Only devices should use recoveryimage, if your device uses A/B, adjust accordingly

export OUTPUT="OrangeFox*.zip"  # Output file name for recovery

# Additional Dependencies (For any extra dependencies)
DEPS=(
    # "https://github.com/OrangeFoxRecovery/Avatar.git misc"  # You can add dependencies here if needed
)

# Extra Command (Set your maintainer or any environment variable here)
export EXTRA_CMD="export OF_MAINTAINER=Maydo_Al-Dosery"  # Your name as the maintainer

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true  # Make sure it's true to use the latest version

# Cache Configuration
export SYNC_PATH="$HOME/work"  # Path to sync repositories (adjust according to your system)
export USE_CCACHE=1  # Enable CCACHE for faster builds
export CCACHE_SIZE="50G"  # Set the cache size to 50GB
export CCACHE_DIR="$HOME/work/.ccache"  # Cache directory path
export J_VAL=16  # Number of threads to use for the build (adjust according to your CPU)
