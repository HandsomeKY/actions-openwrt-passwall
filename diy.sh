#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.123.99/g' package/base-files/files/bin/config_generate
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone https://github.com/bin20088/luci-theme-argon-mc.git package/luci-theme-argon-mc
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb.git
git clone https://github.com/schen39/luci-app-serverchan package/luci-app-serverchan
./scripts/feeds update -a
./scripts/feeds install -a
