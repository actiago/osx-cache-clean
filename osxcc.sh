#!/usr/bin/env bash

# Author https://github.com/cegohub 

# Vars
INI=`du -hsc ~/Library/Caches | awk '{ print $1}'`
AvailableSpace=$(df -h / | tail -1 | awk '{print $4}')

# Run 
echo "Verificando o volume de dados contifos no diretório de cache de seu usuário" 
echo " "
echo "Espaço atual disponível em disco $AvailableSpace"
read -p "Deseja excluir $INI de dados em seu dispositivo? s/N " -n2 OPCAO
echo " "

	if [ $OPCAO == 's' ]; then 
 		echo "Excluindo arquivos"
			cd ~/Library/Caches
			rm -rf * 2>/dev/null
		echo " "
		echo "Você liberou $INI de dados e seu disco agora tem $AvailableSpace"
	else 
		echo "Você optou por não remover os arquivos." 
	fi
