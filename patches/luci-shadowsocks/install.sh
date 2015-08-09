#!/bin/sh
exit 0
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
patch -p1 < $patchdir/luci-shadowsocks.patch