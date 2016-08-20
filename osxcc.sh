#!/bin/bash

# Script simples de limpeza de armazenamento temporário OSX
# Elaborado por Tiago Alves https://cegohub.gitbub.io 

# Variáveis
INI=`du -hs ~/Library/Caches | awk '{ print $1}'`
			
# Execução 
echo "Verificando tamanho do espaço utilizado no diretório de cache" 
sleep 2
clear
read -p "Deseja excluir $INI de dados em seu dispositivo? s/N " -n2 OPCAO
echo "#"
sleep 1
	if [ $OPCAO == 's' ]; then 

 		echo "Excluindo arquivos"
			cd ~/Library/Caches
			rm -rf * 2>/dev/null
		sleep 1
		echo "#"
		echo "Você liberou $INI de dados!"
	
	else 
		echo "Arquivos não excluídos" 
	fi 
