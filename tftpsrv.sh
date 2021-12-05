#!/bin/bash
echo ""
echo ""
echo ""
echo "Desenvolvido por: Abner Cordeiro - 10/03/2021"

echo ""
echo ""
echo ""


sudo apt-get update

sudo apt-get install atftpd

sudo touch /var/log/atftpd.log
sudo chown nobody.nogroup /var/log/atftpd.log


sudo mkdir /srv/tftp -p
sudo chown nobody /srv/tftp -R


sudo rm /etc/default/atftpd
sudo cp atftpd /etc/default/atftpd


sudo gedit /etc/inetd.conf

echo "comente a linha que começa com: tftp dgram udp wait nobody"

echo "Pressione ENTER para continuar..."

read

sudo /etc/init.d/atftpd start

sudo /etc/init.d/inetutils-inetd restart

sudo /etc/init.d/atftpd restart

sudo gedit /var/log/atftpd.log

echo "Pressione ENTER para sair..."

read