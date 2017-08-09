#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/package/kernel/mac80211/files/lib/wifi/
rm -f mac80211.sh
git checkout mac80211.sh

rm_lock
cd $basedir/package/kernel/mac80211/files/
rm -f regdb.txt
git checkout regdb.txt
