#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate


git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/ophub/luci-app-amlogic.git package/amlogic
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/kenzok8/small-package.git package/small-package
rm -rf package/feeds/packages/shadowsocks-libev
git clone https://github.com/msdos03/openwrt-package-shadowsocks-libev.git package/shadowsocks-libev
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate
