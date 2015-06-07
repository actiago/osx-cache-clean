# Script simples de limpeza de armazenamento temporário OSX

echo "Verificando tamanho do espaço utilizado no diretório de cache" 

	du -hs ~/Library/Caches

echo "Deseja apagar arquivos de cache? s/N"
read OPCAO
	
	if [ $OPCAO == 's' ]; then 

 		echo "Apagando arquivos"

		cd ~/Library/Caches
		rm -rf *
	 
		echo "Verificando armazenamento"
		
		sleep 2
		du -hs ~/Library/Caches
		sleep 1

		echo "Limpeza concluida"
	
	else 
		echo "Arquivos não excluídos" 
	fi 
