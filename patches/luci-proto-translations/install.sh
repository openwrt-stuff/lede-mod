#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
cd $basedir
cat $patchdir/translations.txt >>  $basedir/feeds/luci/modules/luci-base/po/zh-cn/base.po