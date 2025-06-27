#!/bin/bash

echo "Atualizando servidor..."
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando Apache e Unzip..."
sudo apt-get install apache2 unzip -y

echo "Baixando aplicação web da DIO..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html/

echo "Iniciando serviço Apache..."
sudo systemctl restart apache2
sudo systemctl enable apache2

echo "Script de provisionamento finalizado com sucesso!"