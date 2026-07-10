#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 设置时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate

# 添加软件源
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git" >> feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git" >> feeds.conf.default

# 更新feeds
./scripts/feeds update -a
./scripts/feeds install -a