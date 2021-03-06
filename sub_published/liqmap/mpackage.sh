#!/bin/sh
# build a package
# by lcuk on #maemo  liquid@gmail.com

find . -print0 | xargs -r0 touch
chmod +x debian/rules
dpkg-buildpackage -rfakeroot -i -I.git
# for updating from scratchbox to my personal device
scp ../liqmap_0.1.1_armel.deb root@10.0.0.8:/root/liqmap_0.1.1_armel.deb
ssh root@10.0.0.8 "dpkg -i liqmap_0.1.1_armel.deb"
