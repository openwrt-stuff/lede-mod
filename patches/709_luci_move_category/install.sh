#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)


cd $basedir

patch --no-backup-if-mismatch -p1 < $patchdir/luci_move_category.patch

sed -i 's/\"services\"/\"nas\"/g' $basedir/feeds/luci/applications/luci-app-minidlna/luasrc/controller/minidlna.lua
sed -i 's;admin/services;admin/nas;g' $basedir/feeds/luci/applications/luci-app-minidlna/luasrc/view/minidlna_status.htm

sed -i 's/"services"/"network"/g' $basedir/feeds/luci/applications/luci-app-adblock/luasrc/controller/adblock.lua

#patch -p1 < $patchdir/openconnect-disable-gssapi.patch
#sed -i 's/\tend$/\tend\n\n\tentry({"admin", "nas"}, firstchild(), "NAS", 45).dependent = false/g' $basedir/

