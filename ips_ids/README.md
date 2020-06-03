IDS e IPS

- Ids

Fail2ban
sudo apt install fail2ban
init.d/ ./fail2ban start ou service fail2ban restart
cd /etc/fail2ban
cp jail.con jail.conf.old << backup
sudo vi jail.conf
Tail -F /var/log/fail2ban.log


- ips

Suricata
sudo add-apt-repository ppa:iosf/suricata-stable
sudo apt update
apt-cache policy suricata
sudo apt install suricata

wget http://rules.emergingthreats.net/open/suricata/emerging.rules.tar.gz
tar xvfz emerging.tar.gz
cd rules
mv */etc/suricata/rules/
cp suricata.yaml suricata.old.yalm
vi /etc/suricata/suricata.yalm
vi alert-regra.rules
suricata -i enp0s3 --init-errors-fatal

Sophos ips

Install sophos


Monitoramento e gerenciamento de rede 

NTOP

apt install -y ntopng
ifconfig >>> saber a interface de rede
vi /etc/ntopng.conf >>> alterar a interface

no browser acessar localhost:3000