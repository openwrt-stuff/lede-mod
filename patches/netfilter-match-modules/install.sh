#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../openwrt;pwd)
KVER=3.18
KVER2=4.1
cp $patchdir/iptables_650-custom_netfilter_match_modules.patch \
  $basedir/package/network/utils/iptables/patches/650-custom_netfilter_match_modules.patch
cp $patchdir/linux_650-custom_netfilter_match_modules.patch \
  $basedir/target/linux/generic/patches-${KVER}/650-custom_netfilter_match_modules.patch
cp $patchdir/linux_650-custom_netfilter_match_modules.patch \
  $basedir/target/linux/generic/patches-${KVER2}/650-custom_netfilter_match_modules.patch
cd $basedir
patch -p1 < $patchdir/custom_netfilter_match_modules.patch
patch -p1 < $patchdir/linux-config-3.18.patch
patch -p1 < $patchdir/linux-config-4.1.patch