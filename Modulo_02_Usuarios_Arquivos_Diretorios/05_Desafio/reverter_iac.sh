#!/bin/bash

echo "Iniciando reversão da infraestrutura..."

# Removendo usuários
echo "Removendo usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Removendo grupos
echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Removendo diretórios
echo "Removendo diretórios..."
rm -rf /publico /adm /ven /sec

echo "Reversão concluída com sucesso!"
