#!/bin/bash
clear

echo -e "Atualizando as listas dos Apts"
apt update

echo -e "Instalando o LAMP Server np Ubuntu Server"
#obs: utilizar a expressão regular ^ que casa com todas as versões ao LAMP (Linux, Apache, MySql e PHP7.x)
apt -y install lamp-server^ perl python
