#!/bin/bash

# Script simples de limpeza de armazenamento temporário OSX
# Elaborado por Tiago Alves https://cegohub.gitbub.io 

# Variáveis
INI=`du -hs ~/Library/Caches | awk '{ print $1}'`

echo "Verificando tamanho do espaço utilizado no diretório de cache" 
echo "#"
sleep 1
echo "#"
sleep 1
echo "#"
sleep 1
echo "#"
sleep 1
echo "Deseja excluir $INI de dados em seu dispositivo? s/N"
read OPCAO
	
	if [ $OPCAO == 's' ]; then 

 		echo "Excluindo arquivos"
			cd ~/Library/Caches
			rm -rf * 2>/dev/null
		sleep 1
		echo "Você liberou $INI de dados!"
	
	else 
		echo "Arquivos não excluídos" 
	fi 
