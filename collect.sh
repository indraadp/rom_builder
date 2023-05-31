#!/bin/bash
cd ~/rom

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 50G -F 0
ccache -o compression=true
ccache -z
export BUILD_USERNAME="IndraDP"
export BUILD_HOSTNAME="idev"
export WITHOUT_CHECK_API=true
lunch nad_juice-userdebug
mka nad &
sleep 97m
kill %1
ccache -s
