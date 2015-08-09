#!/bin/sh
BASEDIR=$(cd `dirname $0`;pwd)
BUILDROOT=$(cd `dirname $0`;cd ..;pwd)

cd  $BUILDROOT

[ -f $BUILDROOT/rules.mk ] || exit 1


ls $BASEDIR/patches/*/clean.sh | while read line
do
	bash ${line}
done

git pull || exit 1
./scripts/feeds update -a || exit 1
./scripts/feeds install -a || exit 1

ls $BASEDIR/patches/*/install.sh | while read line
do
	bash ${line}
done

#echo 'Now enter ./openwrt and do "make menuconfig" & "make V=99"'
#make menuconfig
#make V=99
