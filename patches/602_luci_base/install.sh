#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

patch -p1 --no-backup-if-mismatch < $patchdir/lua_dhcp.patch
#rm -f $basedir/feeds/luci/modules/luci-mod-admin-full/luasrc/model/cbi/admin_network/dhcp.lua.orig

