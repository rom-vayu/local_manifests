#!/bin/bash
# Remove Old Trees
rm -rf hardware/xiaomi
rm -rf device/xiaomi
rm -rf vendor/xiaomi
rm -rf vendor/lineage-priv
rm -rf kernel/xiaomi
#init rom source 
repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b QPR3 -g default,-mips,-darwin,-notdefault
git clone https://github.com/rom-vayu/local_manifests.git -b prx .repo/local_manifests
# Sync Rom Source 
/opt/crave/resync.sh
git clone https://gitlab.com/ArmSM/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera
export BUILD_USERNAME=momen001
export BUILD_HOSTNAME=crave
. build/envsetup.sh && brunch vayu user
