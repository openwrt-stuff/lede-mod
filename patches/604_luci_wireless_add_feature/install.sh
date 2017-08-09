#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

patch -p1 --no-backup-if-mismatch < $patchdir/luci-wifi-add-feature.patch
#rm -f $basedir/feeds/luci/modules/luci-mod-admin-full/luasrc/model/cbi/admin_network/wifi.lua.orig

