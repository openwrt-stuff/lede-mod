#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock

cd $basedir/feeds/luci/modules/luci-mod-admin-full/luasrc/model/cbi/admin_system/
rm -f fstab.lua
git checkout fstab.lua

cd $basedir/target/linux/apm821xx/dts/
rm -f wndr4700.dts
git checkout wndr4700.dts

cd $basedir/package/system/opkg/files/
rm -f opkg.conf
git checkout opkg.conf
