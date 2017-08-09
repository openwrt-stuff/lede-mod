#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock

cd $basedir/feeds/luci/modules/luci-mod-admin-full/luasrc/model/cbi/admin_network/
rm -f wifi.lua
git checkout wifi.lua
