#!/bin/bash
# AX6S 专用插件源（安全稳定）
sed -i '$a src-git istore https://github.com/linkease/istore;main' feeds.conf.default
sed -i '$a src-git argon https://github.com/jerrykuku/luci-theme-argon;main' feeds.conf.default
sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2;main' feeds.conf.default
sed -i '$a src-git openclash https://github.com/vernesong/OpenClash;master' feeds.conf.default

# 更新并安装插件
./scripts/feeds update -a
./scripts/feeds install -a
