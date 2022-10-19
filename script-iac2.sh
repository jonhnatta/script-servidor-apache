#! /bin/bash

echo "atualizar servior"
apt-get update
apt-get upgrade -y

echo "instalar apache"
apt-get install apache2 -y

echo "baixa e instalar aplicação"
apt-get install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

