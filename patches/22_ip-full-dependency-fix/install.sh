#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir
patch -p1 < $patchdir/ip-full-dependency-fix_provides.patch
patch -p1 < $patchdir/ip-full-dependency-fix-mwan3.patch
patch -p1 < $patchdir/disable_mwan.patch
#rm -rf package/feeds/packages/mwan3
#rm -rf package/feeds/packages/mwan3-luci
