#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 19/01/2023<br>
#Data de atualização: 19/01/2023<br>
#Versão: 0.01<br>

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School Java: https://www.w3schools.com/java/default.asp

#02_ Instalando as Dependências do Apache Tomcat Server no Linux Mint<br>

	#instalando as dependências do Apache Tomcat
	sudo apt install git vim openjdk-17-jdk openjdk-17-jre software-properties-common build-essential

#03_ Verificando as Versões do Java instalado<br>

	#opção do comando grep: -i (ignore-case)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo java -version
	sudo apt list --installed | grep -i openjdk
	sudo update-alternatives --list java
	sudo update-java-alternatives --list

#04_ Download do Apache Tomcat Server 10.1.x do site Oficial<br>

	OBSERVAÇÃO IMPORTANTE: recomendo que o procedimento abaixo seja feito utilizando o usuário: 
	Root do Linux Mint para facilitar a instalação e configuração do Apache Tomcat Server 10.1.x.
	Link Oficial das versões do Apache Tomcat Server: https://dlcdn.apache.org/tomcat/

	#opção do comando sudo: -i (login)
	sudo -i
	
	#opção do comando wget: -v (verbose), -O (output file)
	wget -v -O /tmp/tomcat10.tar.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.5/bin/apache-tomcat-10.1.5.tar.gz

#05_ Descompactando e instalando o Apache Tomcat 10.1.x<br>

	#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
	tar -xzvf /tmp/tomcat10.tar.gz -C /tmp
	
	#opção do comando mv: -v (verbose)
	mv -v /tmp/apache-tomcat* /opt/tomcat

#06_ Atualizando os arquivos de configuração do Apache Tomcat 10.1.x<br>

	#opção do comando wget: -v (verbose), -O (output file)
	wget -v -O /opt/tomcat/conf/server.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/server.xml
	wget -v -O /opt/tomcat/conf/tomcat-users.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat-users.xml
	wget -v -O /opt/tomcat/conf/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml
	wget -v -O /etc/systemd/system/tomcat10.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat10.service

#07_ Criando o Usuário de Serviço do Apache Tomcat Server 10.1.x<br>

	#opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
	useradd -m -d /opt/tomcat -U -s /bin/false tomcat

#08_ Alterando os Permissões do Diretório do Apache Tomcat Server 10.1.x<br>

	#opção do comando chown: -R (recursive), -v (verbose), tomcat:tomcat (user and group)
	chown -Rv tomcat:tomcat /opt/tomcat

	#opção do comando chmod: -R (recursive), -v (verbose), u+x (user added execute/search)
	chmod -Rv u+x /opt/tomcat/bin

#09_ Habilitando o Serviço do Apache Tomcat Server 10.1.x<br>

	systemctl daemon-reload
	systemctl enable tomcat10
	systemctl start tomcat10
	exit

#10_ Verificando o Serviço e Versão do Apache Tomcat Server 10.1.x<br>

	sudo systemctl status tomcat10
	sudo systemctl restart tomcat10
	sudo systemctl stop tomcat10
	sudo systemctl start tomcat10

	sudo bash /opt/tomcat/bin/version.sh

#11_ Verificando a Porta de Conexão do Apache Tomcat Server 10.1.x<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN

#12_ Localização dos Arquivos de Configuração do Apache Tomcat Server<br>

	/opt/tomcat <-- Diretório de configuração do Apache Tomcat Server
	/opt/tomcat/bin <-- Diretório do binário (executável) do Apache Tomcat Server
	/opt/tomcat/conf <-- Diretório das configurações do Apache Tomcat Server
	/opt/tomcat/conf/server.xml <-- Arquivo de configuração do Servidor do Apache Tomcat Server
	/opt/tomcat/conf/tomcat-users.xml <-- Arquivo de configuração dos Usuários do Apache Tomcat Server
	/opt/tomcat/logs <-- Diretório dos Logs do Apache Tomcat Server
	/opt/tomcat/webapps <-- Diretório das Aplicações Web do Apache Tomcat Server

#13_ Adicionado o Usuário Local no Grupo Padrão do Apache Tomcat Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G tomcat $USER
	newgrp tomcat
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#14_ Testando o Apache Tomcat Server no navegador utilizando o Linux Mint<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080
		Usuário padrão: admin
		Senha padrão..: 123@senac