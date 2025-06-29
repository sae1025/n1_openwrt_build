#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# 添加 passwall（避免重复）
if ! grep -q "src-git passwall" feeds.conf.default; then
    echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >> feeds.conf.default
fi

# 添加 amlogic（避免重复）
if ! grep -q "src-git amlogic" feeds.conf.default; then
    echo 'src-git amlogic https://github.com/ophub/luci-app-amlogic.git' >> feeds.conf.default
fi

# 添加 kenzo（避免重复）
if ! grep -q "src-git kenzo" feeds.conf.default; then
    echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git' >> feeds.conf.default
fi

# 添加 shadowsocks-rust（避免重复）
if ! grep -q "src-git shadowsocks-rust" feeds.conf.default; then
    echo 'src-git shadowsocks-rust https://github.com/shadowsocks/shadowsocks-rust.git' >> feeds.conf.default
fi

# 添加 luci-theme-argon（避免重复）
if ! grep -q "src-git luci-theme-argon" feeds.conf.default; then
    echo 'src-git luci-theme-argon https://github.com/jerrykuku/luci-theme-argon.git' >> feeds.conf.default
fi
