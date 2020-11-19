#!/bin/bash
clear

echo -e "Atualizando as Listas do Apt"
    apt update

echo -e "Instalando o PHPMyAdmin no Ubuntu Server"
    #obs: na versão >= 8.0 do MySQL não utilizamos mais o usuário root
    #para se logar no PhpMyAdmin, sendo necessário criar um novo usuário
    #sudo mysql -u root -p
    #CREATE USER 'vaamonde'@'localhost' IDENTIFIED WITH mysql_native_password BY 'vaamonde';
    #GRANT ALL PRIVILEGES ON *.* TO 'vaamonde'@'localhost';
    #FLUSH PRIVILEGES;
    #EXIT
    apt -y install phpmyadmin
    #cuidado: selecionar a opção de Apache2, depois criar o banco de dados dbconfig e setar
    #uma senha para o PhpMyAdmin
