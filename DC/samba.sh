#!/bin/bash

sudo apt install -y samba
#service smbd status &
#sudo service smbd start
#sudo ufw allow samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bkp
cat /etc/samba/smb.conf.bkp
#sudo vi /etc/samba/smb.conf
#descomentar interfaces = 127.0.0.0/8 eth0 e bind interfaces only = yes
sudo service smbd restart
mkdir ~/Documentos/samba
ls -l ~/Documentos
#Set the group ownership to sambashare. This group is created during the Samba installation, later we will add all Samba users to this group.
sudo chgrp sambashare ~/Documentos/samba

sudo useradd -M -d /samba/usersamba -s /usr/sbin/nologin -G sambashare usersamba
sudo smbpasswd -a usersamba
sudo smbpasswd -e usersamba

#-M-não cria o diretório inicial do usuário. Criaremos este diretório manualmente.
#-d /samba/josh- defina o diretório inicial do usuário como /samba/josh.
#-s /usr/sbin/nologin - desativar o acesso ao shell para este usuário.
#-G sambashare- adicione o usuário ao sambasharegrupo.
sudo mkdir ~/Documentos/samba/usersamba
sudo chown usersamba:sambashare ~/Documentos/samba/usersamba
#para que os arquivos recém-criados neste diretório herdem o grupo do diretório pai
sudo chmod 2770 ~/Documentos/samba/usersamba
#usuarios adminitrativos
#https://linuxize.com/post/how-to-install-and-configure-samba-on-ubuntu-18-04/

sudo service smbd restart