#! /bin/bash

mkdir -p /srv/tiva/apps
cp ./sbin/tivawebd /usr/sbin/tivawebd
cp ./init.d/tivawebd /etc/init.d/tivawebd
update-rc.d tivawebd defaults
