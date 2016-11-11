#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
 
cd $basedir

#patch -p1 < $patchdir/luci_speedup.patch

#patch -p1 < $patchdir/luci_config_bytecode.patch

#sed -i 's/luci-theme-bootstrap/luci-theme-material/g' $basedir/feeds/luci/collections/luci/Makefile
sed -i 's/\+luci-theme-bootstrap/\+luci-theme-atmaterial \+uhttpd-mod-lua/g' $basedir/feeds/luci/collections/luci/Makefile


sed -i 's/\+px5g$/+px5g-standalone/g' $basedir/feeds/luci/collections/luci-ssl-openssl/Makefile
