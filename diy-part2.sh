#!/bin/bash

# 默认IP修改
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 默认主机名
sed -i "s/OpenWrt/ZBT-WR8305RT/g" package/base-files/files/bin/config_generate

# 默认WiFi名称
sed -i "s/OpenWrt/ZBT-OpenWrt/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 删除不需要的语言包，节省空间
rm -rf feeds/luci/modules/luci-base/po/zh_Hans

# 编译优化
echo "MT7620A firmware build"