#!/bin/sh
BASEDIR=$(cd `dirname $0`;pwd)
[ -d openwrt.git ] || git clone --mirror git://git.openwrt.org/openwrt.git
cd $BASEDIR/openwrt.git && git remote update ; cd ..
#[ -d openwrt-dist-luci.git ] || git clone --mirror git://github.com/aa65535/openwrt-dist-luci.git
#cd $BASEDIR/openwrt-dist-luci.git && git remote update ; cd ..
[ -d openwrt-maz1 ] || git clone git://github.com/maz-1/openwrt-maz1.git
cd $BASEDIR/openwrt-maz1 && git pull origin master ; cd ..

cd $BASEDIR

if [ -d ./openwrt ] ; then
  while true; do
     read -p "Do you wish to completely remove ./openwrt?    " yn
     case $yn in
        [Yy]* ) rm -rf ./openwrt; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
     esac
  done
fi

git clone --depth=1 file://$BASEDIR/openwrt.git


cd $BASEDIR/openwrt
cp $BASEDIR/feeds.conf $BASEDIR/openwrt/feeds.conf
./scripts/feeds update -a
./scripts/feeds install -a
#git clone --depth=1 file://$BASEDIR/openwrt-dist-luci.git $BASEDIR/openwrt/package/openwrt-dist-luci
#git clone --depth=1 git://github.com/aa65535/openwrt-autossh.git $BASEDIR/openwrt/package/autossh

ls $BASEDIR/patches | grep -v Readme | while read line
do
	$BASEDIR/patches/${line}/install.sh
done

[ -d $BASEDIR/dl ] || mkdir $BASEDIR/dl
ln -s $BASEDIR/dl $BASEDIR/openwrt/dl


ln -s  $BASEDIR/openwrt-maz1 $BASEDIR/openwrt/package/openwrt-maz1

rm $BASEDIR/openwrt/package/libs/libiconv-full/patches/100-strip_charsets.patch

cd $BASEDIR/openwrt/package/base-files/files/etc ; ln -s ../lib/functions.sh ./functions.sh

cd $BASEDIR/openwrt
cp ../config ./.config

echo 'Now enter ./openwrt and do "make menuconfig" & "make V=99"'
#make menuconfig
#make V=99
