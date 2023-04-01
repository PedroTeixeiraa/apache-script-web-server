#!/bin/bash

echo "Atualizando dependencias do ubuntu"

apt-get update
apt-get upgrade -y

echo "Instalando dependencias do ubuntu"

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixar a aplicação do GIT"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar arquivo"
unzip /tmp/main.zip

echo "Copiar arquivos para pasta default do apache"
cd linux-site-dio-main
sudo cp -R * /var/www/html/