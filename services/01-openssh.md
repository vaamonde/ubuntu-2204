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
	/etc/issue.net        <-- Arquivo de configuração do Banner do Ubuntu Server para acesso remoto
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
	ESC SHIFT :x <Enter>

#06_ Atualizando e editando os arquivos de configuração do OpenSSH Server e do Banner<br>

	#opção do comando wget: -v (verbose), -O (output file)
	
	#arquivo de configuração do OpenSSH Server
	sudo wget -v -O /etc/ssh/sshd_config https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/sshd_config

	#arquivo de configuração do Banner do Ubuntu Server
	sudo wget -v -O /etc/issue.net https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/issue.net

	#editando o arquivo de configuração do OpenSSH Server
	sudo vim /etc/ssh/sshd_config
	INSERT

		#alterar a linha do: ListenAddress 10.26.44.xxx para: 10.26.44.SEU_IPV4
		ListenAddress 10.26.44.xxx

	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

	#editando o arquivo de configuração do Banner do Ubuntu Server
	sudo vim /etc/issue.net
	INSERT

		#alterar a linha do: Servidor: wsseunome - Aluno: Nome e Sobrenome
		Servidor: wsseunome - Aluno: Nome e Sobrenome

	#sair e salvar o arquivo
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do OpenSSH Server
	sudo systemctl restart ssh
	sudo systemctl status ssh

#07_ Acessando remotamente o OpenSSH via Powershell e pelo PuTTY

	Windows
		Pesquisa do Windows
			Powershell

	ssh senac@10.26.44.XXX (alterar para o endereço IPv4 do seu servidor)

	Windows
		Pesquisa do Windows
			PuTTY

	Category
		Session
			Host Name (or IP address): senac@10.26.44.XXX (alterar para o endereço IPv4 do seu servidor)
			Port: 22
			SSH: On
	<Open>

#08_ Criando um usuário Administrador no Ubuntu Server

	