#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 替换更新adguardhome
# rm -rf package/diy/luci-app-adguardhome && git clone https://github.com/limi00/luci-app-adguardhome.git package/diy/luci-app-adguardhome

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i'$a src-git project https://github.com/project-openwrt/openwrt' feeds.conf.default
# sed -i'$a src-git openwrt https://github.com/openwrt/packages' feeds.conf.default
echo ' src-git small8 https://github.com/kenzok8/small-package' >> feeds.conf.default
echo ' src-git small https://github.com/kenzok8/small' >> feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
# echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

# # Define My Package
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/diy/luci-app-adguardhome
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/diy/luci-app-passwall
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
# git clone https://github.com/rufengsuixing/luci-app-usb3disable.git package/diy/luci-app-usb3disable
# git clone https://github.com/sirpdboy/netspeedtest.git package/diy/luci-app-netspeedtest
# git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/diy/luci-app-autotimeset
# git clone https://github.com/zzsj0928/luci-app-pushbot package/diy/luci-app-pushbot
# git clone https://github.com/linkease/istore.git package/diy/luci-app-store
# git clone https://github.com/tty228/luci-app-serverchan.git package/mine/luci-app-serverchan

#appstore
# svn co https://github.com/cloudysky9/openwrt-packages/trunk/app-store-ui package/app-store-ui
# svn co https://github.com/cloudysky9/openwrt-packages/trunk/luci-app-store package/luci-app-store

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
