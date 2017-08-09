#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
cp $patchdir/603-napt66-disable-ipv6-forward-error.patch $basedir/target/linux/generic/patches-3.18
cp $patchdir/603-napt66-disable-ipv6-forward-error.patch $basedir/target/linux/generic/patches-4.0
cp $patchdir/603-napt66-disable-ipv6-forward-error.patch $basedir/target/linux/generic/patches-4.4
