apt update
apt install nfs-kernel-server
mkdir compartilhamento
chmod -R 755 compartilhamento
chown nobody:nogroup compartilhamento
vim /etc/exports
/compartilhamento 192.168.0.66(rw,sync,no_subtree_check,no_root_squash)# * no lugar do ip para todos
service nfs-kernel-server restart
#ufw allow from 192.168.0.66 to any port nfs
#instalar nos client
apt update
apt install nfs-common
#criar ponto de montagem no cliente
cd /mnt
mkdir compartilhado
mount 192.168.0.65:/compartilhamento /mnt/compartilhado
cd /etc/
vim fstab
192.168.0.65:/compartilhamento /mnt/compartilhado nfs auto,nofail,noatime,nolock,intrntcp,actimeo=1800 0 0

