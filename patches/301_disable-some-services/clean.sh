#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/feeds/luci/applications/luci-app-privoxy/root/etc/uci-defaults/
rm -f *
git checkout .

rm_lock
cd $basedir/feeds/luci/applications/luci-app-p2pblock/root/etc/uci-defaults/
rm -f *
git checkout .

rm_lock
cd $basedir/feeds/packages/utils/watchcat/
rm -f Makefile
git checkout .
