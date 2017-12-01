#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)
rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock
cd $basedir/package/libs/popt
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/sound/alsa-utils
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/net/rsync
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/net/tcpreplay
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/package/utils/util-linux
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/utils/bash
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/utils/grep
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/utils/gnupg
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/utils/nano
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/utils/tar
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/libs/gnutls
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/libs/libv4l
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/net/netcat
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/net/ntpd
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/lang/python
rm -f Makefile
git checkout Makefile 

rm_lock
cd $basedir/feeds/packages/lang/python3
rm -f Makefile
git checkout Makefile 

