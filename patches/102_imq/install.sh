#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

cd $basedir
( patch -p1 < $patchdir/integrate_imq.patch ) && ( rm -f include/netfilter.mk.rej package/kernel/linux/modules/netfilter.mk.rej package/network/utils/iptables/Makefile.rej )

#patch -p1 < $patchdir/linux-config-3.18.patch
#patch -p1 < $patchdir/linux-config-4.1.patch
cp $patchdir/300-imq.patch $basedir/package/network/utils/iptables/patches/

ls $patchdir | grep -P "^\d\.\d+$" | while read KVER
do
    cp $patchdir/${KVER}/* \
        $basedir/target/linux/generic/patches-${KVER}/
done

#rm -f include/netfilter.mk.rej package/kernel/linux/modules/netfilter.mk.rej package/network/utils/iptables/Makefile.rej target/linux/generic/config-3.18.rej target/linux/generic/config-4.1.rej

cd $basedir/target/linux/generic/

ls | grep -oP "(?<=config-)\d\.\d+$" | while read KVER
do
    [[ -n $(cat config-${KVER}|grep CONFIG_IMQ_BEHAVIOR_AA) ]] || \
        echo -e "# CONFIG_IMQ_BEHAVIOR_AA is not set\n# CONFIG_IMQ_BEHAVIOR_AB is not set\n# CONFIG_IMQ_BEHAVIOR_BB is not set\n" >> config-${KVER}
    
done
