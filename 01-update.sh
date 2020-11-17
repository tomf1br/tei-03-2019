#!/bin/bash

echo -e "Atualizando as listas do Apt"
    apt update

echo -e "Atualizando os Softwares"
    apt -y upgrade

echo -e "Forçando a atualização do sistema"
    apt -y full-upgrade

echo -e "Forçado a atualização de Segurança"
    apt -y dist-upgrade

echo -e "Removendo Softwares desnecessarios"
    apt -y autoremove
    apt -y autoclean
    apt clean                