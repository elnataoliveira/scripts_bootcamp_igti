#!/bin/bash

wget https://ftp.samba.org/pub/samba/stable/samba-4.0.2.tar.gz
tar zxvf samba-4.0.2.tar.gz
./configure --prefix=/opt/samba -j 5
make -j 5
make install -j 5
cat /boot/config