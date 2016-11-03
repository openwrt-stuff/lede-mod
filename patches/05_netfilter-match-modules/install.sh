#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

KVER=4.4
mkdir -p $basedir/network/utils/ebtables/patches
cp $patchdir/ebtables_100-arpnat.patch \
  $basedir/package/network/utils/ebtables/patches/100-arpnat.patch
cp $patchdir/iptables_650-custom_netfilter_match_modules.patch \
  $basedir/package/network/utils/iptables/patches/650-custom_netfilter_match_modules.patch

  
cd $basedir
patch -p1 < $patchdir/custom_netfilter_match_modules.patch

CONFIGARR=( CONFIG_BRIDGE_EBT_ARP CONFIG_BRIDGE_EBT_ARPREPLY CONFIG_BRIDGE_EBT_BROUTE CONFIG_BRIDGE_EBT_DNAT 
                CONFIG_BRIDGE_EBT_IP CONFIG_BRIDGE_EBT_IP6 CONFIG_BRIDGE_EBT_LIMIT CONFIG_BRIDGE_EBT_LOG 
                CONFIG_BRIDGE_EBT_MARK CONFIG_BRIDGE_EBT_MARK_T CONFIG_BRIDGE_EBT_NFLOG CONFIG_BRIDGE_EBT_PKTTYPE 
                CONFIG_BRIDGE_EBT_REDIRECT CONFIG_BRIDGE_EBT_SNAT CONFIG_BRIDGE_EBT_ARPNAT CONFIG_BRIDGE_EBT_STP 
                CONFIG_BRIDGE_EBT_T_FILTER CONFIG_BRIDGE_EBT_T_NAT CONFIG_BRIDGE_EBT_ULOG CONFIG_BRIDGE_EBT_VLAN 
                CONFIG_BRIDGE_NETFILTER CONFIG_BRIDGE_NF_EBTABLES )
cd $basedir/target/linux/generic/
ls | grep -oP "(?<=config-)\d\.\d+$" | while read KVER
do
    cp $patchdir/linux_650-custom_netfilter_match_modules.patch \
        $basedir/target/linux/generic/patches-${KVER}/650-custom_netfilter_match_modules.patch 
    cp $patchdir/linux_666-arpnat.patch \
        $basedir/target/linux/generic/patches-${KVER}/666-arpnat.patch
    for CONFIG in ${CONFIGARR[@]}
    do 
        if [[ z$(cat config-${KVER}|grep "${CONFIG}[ =]") != "z" ]]
        then
            sed -i "s/.*${CONFIG}[ =].*/${CONFIG}=y/g" config-${KVER}
        else
            echo "$CONFIG=y" >> config-${KVER}
        fi;done
done
