#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm -f $basedir/.git/index.lock

ls $patchdir | grep -P "^\d\.\d+$" | while read KVER
do
    cp $patchdir/${KVER}/* \
        $basedir/target/linux/generic/patches-${KVER}/
done
        
cd $basedir/target/linux/generic/

ls | grep -oP "(?<=config-)\d\.\d+$" | while read KVER
do
  sed -i 's:^.*CONFIG_KSM.*$:CONFIG_KSM=y\nCONFIG_UKSM=y\n# CONFIG_KSM_LEGACY is not set:g' config-${KVER}
  if [ "$KVER" == "3.18" ] || [ "$KVER" == "4.4" ]; then
    sed -i 's:^CONFIG_DEFAULT_DEADLINE=y$:# CONFIG_DEFAULT_DEADLINE is not set\nCONFIG_DEFAULT_BFQ=y\nCONFIG_SCHED_BFS=y\nCONFIG_IOSCHED_BFQ=y:g' config-${KVER}
  fi
  #cp $patchdir/256-wake_up_state.diff $basedir/target/linux/generic/patches-${KVER}/
done
