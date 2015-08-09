#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

cd $basedir/feeds/luci/applications/luci-app-privoxy/root/etc/uci-defaults/
rm -f *
git checkout .

cd $basedir/feeds/luci/applications/luci-app-p2pblock/root/etc/uci-defaults/
rm -f *
git checkout .
