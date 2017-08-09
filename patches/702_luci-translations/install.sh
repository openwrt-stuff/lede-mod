#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir

cat $patchdir/i18n_proto.txt >>  $basedir/feeds/luci/modules/luci-base/po/zh-cn/base.po
cat $patchdir/i18n_wifi.txt >>  $basedir/feeds/luci/modules/luci-base/po/zh-cn/base.po
