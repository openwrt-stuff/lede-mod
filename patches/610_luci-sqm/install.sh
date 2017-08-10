#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cd $basedir

patch -p1 --no-backup-if-mismatch < $patchdir/luci-sqm-add-zh-cn.patch
mkdir -p $basedir/package/feeds/packages/sqm-scripts/i18n
cp -f $patchdir/sqm.zh-cn.po $basedir/package/feeds/packages/sqm-scripts/i18n/sqm.zh-cn.po
