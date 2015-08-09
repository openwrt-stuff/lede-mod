#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

exit 0

KVER=4.4
cp $patchdir/iptables_650-custom_netfilter_match_modules.patch \
  $basedir/package/network/utils/iptables/patches/650-custom_netfilter_match_modules.patch
cp $patchdir/linux_650-custom_netfilter_match_modules.patch \
  $basedir/target/linux/generic/patches-${KVER}/650-custom_netfilter_match_modules.patch 
  
cd $basedir
patch -p1 < $patchdir/custom_netfilter_match_modules.patch
#patch -p1 < $patchdir/linux-config-3.18.patch

#rm -f include/netfilter.mk.rej package/kernel/linux/modules/netfilter.mk.rej package/network/utils/iptables/Makefile.rej target/linux/generic/config-3.18.rej target/linux/generic/config-4.1.rej
