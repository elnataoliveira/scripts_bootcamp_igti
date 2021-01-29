#!/bin/bash
sudo vim /etc/network/interfaces

allow-htoplug enp0s3
	iface enp0s3 inet static
	address 192.168.25.9
	network 192.168.25.0
	netmask 255.255.225.0
	broadcast 192.168.25.255
	gateway	192.168.25.1
	dns-nameservers 192.168.25.9 192.168.25.1
	
	 sudo vim /etc/hosts
	 127.0.1.1
	 192.168.25.9 
	 vim /etc/resolv.conf
	 nameserver 192.18.25.9
	 
sudo vim /etc/hostname 

 sudo service NetworkManager restart
 hostname
 hostname -f


apt install samba krd5-config windind smbclient

samba-tool domain provision
cp /var/lib/samba/private/krb5.conf /etc/
stop smbd
disable smbd nmdb winbind
systemctl umask samba-ad-dc
systemctl start samba-ad-dc
systemctl enable samba-ad-dc

smbclient -L localhost -U%

samba-tool user list

samba-tool user create user
samba-tools user setexpriry user --days=7





#-------------------------#

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
