#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 18/04/2023<br>
#Versão: 0.01<br>

VIDEO AULA DE APOIO: 

Site Oficial do OpenSSH: https://www.openssh.com/<br>
Site Oficial do OpenSSL: https://www.openssl.org/

#01_ Instalando o OpenSSH<br>

	#atualizando as listas do Apt
	sudo apt update
	
	OBSERVAÇÃO IMPORTANTE: executar a instalação somente se você no processo de instalar
	o Ubuntu Server não marcou a opção: Install OpenSSH, caso contrário o mesmo já está
	instalado e pré-configurado.

	#instalando o OpenSSH Server e Client
	sudo apt install openssh-server openssh-client openssl 

#02_ Verificando o Serviço e Versão do OpenSSH Server e Client<br>

	#verificando o serviço do OpenSSH
	sudo systemctl status ssh
	sudo systemctl restart ssh
	sudo systemctl stop ssh
	sudo systemctl start ssh

	#verificando as versões do OpenSSH
	sudo sshd -V (Server)
	sudo ssh -V (Client)

#03_ Verificando a Porta de Conexão do OpenSSH Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'22' -sTCP:LISTEN

#04_ Localização dos Arquivos de Configuração do OpenSSH Server<br>

	/etc/ssh/             <-- Diretório de configuração do OpenSSH Server e Client
	/etc/ssh/sshd_config  <-- Arquivo de configuração do OpenSSH Server
	/etc/ssh/ssh_config   <-- Arquivo de configuração do OpenSSH Client
	/etc/hosts.deny       <-- Arquivo de configuração do Firewall de Aplicação TCPWrappers Deny
	/etc/hosts.allow      <-- Arquivo de configuração do Firewall de Aplicação TCPWrappers Allow
	/var/log/             <-- Diretório de Logs do Sistema Operacional Ubuntu Server
	/var/log/syslog       <-- Log principal do Sistema Operacional Ubuntu Server
	/var/log/auth.log     <-- Log principal das autenticações do Sistema Operacional Ubuntu Server

#05_ Habilitando a segurança de acesso ao OpenSSH Server<br>

	sudo vim /etc/hosts.deny
	INSERT

		#inserir as informações na linha 17
		ALL: ALL

	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

	sudo vim /etc/hosts.allow
	INSERT

		#inserir as informações na linha 10
		sshd: 10.26.44.0/24

	#sair e salvar o arquivo
	ESC SHIFT :x <Enter

#06_ Atualizando e editando o arquivo de configuração do OpenSSH Server<br>

	#opção do comando wget: -v (verbose), -O (output file)
	
	#arquivo de configuração do Servidor Tomcat
	sudo wget -v -O /etc/ssh/sshd_config 