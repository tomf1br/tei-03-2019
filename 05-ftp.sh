#!/bin/bash
clear

echo -e "Atualizando as Listas do Apt"
    apt update

echo -e "Instalando o ProFTPD no Ubuntu Server"
    apt -y install proftpd-basic

echo -e "Criando o usuário Wordpress do usuário do ProFTPD"
    useradd -d /var/www/html/wordpress -s /bin/bash -M wordpress -G www-data
    echo -e "wordpress\nwordpress" | passwd wordpress 

echo -e "Alterando as permissões do diretório do Wordpress"
    cd /var/www/html/
    chmod -Rfv 777 wordpress/
    chown -Rfv www-data.www-data wordpress/
