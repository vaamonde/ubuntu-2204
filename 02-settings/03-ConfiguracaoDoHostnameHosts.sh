#Autor: Robson Vaamonde
#Procedimentos em TI: http://procedimentosemti.com.br
#Bora para Prática: http://boraparapratica.com.br
#Robson Vaamonde: http://vaamonde.com.br
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
#LinkedIn Robson Vaamonde: https://www.linkedin.com/in/robson-vaamonde-0b029028/
#Github Procedimentos em TI: https://github.com/vaamonde
#Data de criação: 18/01/2023
#Data de atualização: 20/04/2023
#Versão: 0.02
#Testado e homologado no GNU/Linux Ubuntu Server 22.04.1 LTS
#
# Hostname: é usado para exibir o nome DNS do sistema e para exibir ou defina seu nome 
# de host ou nome de domínio NIS. O arquivo /etc/hostname armazena as informações de 
# nome de máquina e domínio no formato FQDN (Fully Qualified Domain Name)
#
# FQDN, algumas vezes denominado nome de domínio absoluto, é um nome de domínio que 
# especifica sua localização exata na árvore hierárquica do Domain Name System. Ele 
# especifica todos os níveis de domínio, incluindo, pelo menos, um domínio de segundo 
# nível e um domínio de nível superior.
#
# Hosts: pesquisa de tabela estática para nomes de host, é utilizado quando não temos 
# servidores DNS (Domain Name System) e fazermos o apontamento diretamente no arquivo 
# localizado em /etc/hosts
#
# Alterando o nome do servidor
sudo vim /etc/hostname
	INSERT
		
		#adicionar o nome de domínio na linha 1
		wsseunome.senac.intra
	
	#sair e salvar o arquivo
	ESC SHIFT : x <Enter>
#
# Adicionando as informações de pesquisa de IP e nome no servidor
sudo vim /etc/hosts
	INSERT
		
		#adicionar o nome de domínio e apelido na linha 2
		127.0.0.1 wsseunome.senac.intra 	wsseunome
	
	#sair e salvar o arquivo
	ESC SHIFT : x <Enter>
#
# Reinicializando o servidor para aplicar as mudanças
sudo reboot
#
# Checando as informações do servidor
# opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
sudo hostname
sudo hostname -A
sudo hostname -d
sudo hostname -i