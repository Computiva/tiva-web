#! /bin/bash

mkdir -p /srv/tiva/{apps,static}
cp ./sbin/tivawebd /usr/sbin/tivawebd
cp ./init/tivaweb.conf /etc/init/tivaweb.conf
