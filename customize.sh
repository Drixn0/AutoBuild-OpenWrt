#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.10.10.2/g' openwrt/package/base-files/files/bin/config_generate

#2. Set DISTRIB_REVISION
sed -i "s/OpenWrt /Deng Build $(TZ=UTC-8 date "+%Y.%m.%d") Compiled by Drixn /g" openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
