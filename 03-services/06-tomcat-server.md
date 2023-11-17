#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 19/01/2023<br>
#Data de atualização: 11/05/2023<br>
#Versão: 0.07<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Tomcat realizado com sucesso!!! #BoraParaPrática

Site Oficial do Apache2: https://httpd.apache.org/<br>
Site Oficial do Apache Tomcat: https://tomcat.apache.org/<br>
Site Oficial do OpenJDK: https://openjdk.org/

Site Oficial do W3C School HTML5: https://www.w3schools.com/html/default.asp<br>
Site Oficial do W3C School CSS: https://www.w3schools.com/css/default.asp<br>
Site Oficial do W3C School JavaScript: https://www.w3schools.com/js/default.asp<br>
Site Oficial do W3C School Java: https://www.w3schools.com/java/default.asp

O Tomcat é um servidor web Java, mais especificamente, um container de servlets. O Tomcat<br>
implementa, dentre outras de menor relevância, as tecnologias Java Servlet e JavaServer<br>
Pages e não é um container Enterprise JavaBeans. Desenvolvido pela Apache Software Foundation,<br> 
é distribuído como software livre.

#01_ Instalando as Dependências do Apache Tomcat Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Apache Tomcat
	sudo apt install git vim openjdk-17-jdk openjdk-17-jre software-properties-common build-essential

#02_ Verificando as Versões do Java instalado<br>

	#opção do comando grep: -i (ignore-case)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	sudo java -version
	sudo apt list --installed | grep -i openjdk
	sudo update-alternatives --list java
	sudo update-java-alternatives --list

#03_ Download do Apache Tomcat Server 10.1.x do site Oficial<br>

	OBSERVAÇÃO IMPORTANTE: recomendo que o procedimento abaixo seja feito utilizando o usuário: 
	Root do Ubuntu para facilitar a instalação e configuração do Apache Tomcat Server 10.1.x.
	
	Link Oficial das versões do Apache Tomcat Server: https://dlcdn.apache.org/tomcat/

	#opção do comando sudo: -i (login)
	sudo -i
	
	#opção do comando wget: -v (verbose), -O (output file)
	wget -v -O /tmp/tomcat10.tar.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.16/bin/apache-tomcat-10.1.16.tar.gz

#04_ Descompactando e instalando o Apache Tomcat 10.1.x<br>

	#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
	tar -xzvf /tmp/tomcat10.tar.gz -C /tmp
	
	#opção do comando mv: -v (verbose)
	mv -v /tmp/apache-tomcat* /opt/tomcat

#05_ Atualizando os arquivos de configuração do Apache Tomcat Server 10.1.x<br>

	#opção do comando wget: -v (verbose), -O (output file)
	
	#arquivo de configuração do Servidor Tomcat
	wget -v -O /opt/tomcat/conf/server.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/server.xml
	
	#arquivo de configuração dos Usuários do Tomcat
	wget -v -O /opt/tomcat/conf/tomcat-users.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat-users.xml
	
	#arquivo de configuração do Contexto do Tomcat
	wget -v -O /opt/tomcat/conf/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml
	
	#arquivo de configuração do Meta Dados do Contexto Manager do Tomcat
	wget -v -O /opt/tomcat/webapps/manager/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml
	
	#arquivo de configuração do Meta Dados do Contexto Host Manager do Tomcat
	wget -v -O /opt/tomcat/webapps/host-manager/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml

	#arquivo de configuração do Meta Dados do Contexto Examples do Tomcat
	wget -v -O /opt/tomcat/webapps/examples/META-INF/context.xml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/context.xml
	
	#arquivo de configuração da Inicialização do Tomcat
	wget -v -O /etc/systemd/system/tomcat10.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat10.service

#06_ Criando o Usuário de Serviço do Apache Tomcat Server 10.1.x<br>

	#opção do comando useradd: -m (create-home), -d (home-dir), -U (user-group), -s (shell)
	useradd -m -d /opt/tomcat -U -s /bin/false tomcat

#07_ Alterando as Permissões do Diretório do Apache Tomcat Server 10.1.x<br>

	#opção do comando chown: -R (recursive), -v (verbose), tomcat:tomcat (user and group)
	chown -Rv tomcat:tomcat /opt/tomcat

	#opção do comando chmod: -R (recursive), -v (verbose), u+x (user added execute/search)
	chmod -Rv u+x /opt/tomcat/bin

#08_ Habilitando o Serviço do Apache Tomcat Server 10.1.x<br>

	#habilitando o serviço do Apache Tomcat Server
	systemctl daemon-reload
	systemctl enable tomcat10
	systemctl start tomcat10
	exit

#09_ Verificando o Serviço e Versão do Apache Tomcat Server 10.1.x<br>

	#verificando o serviço do Apache Tomcat Server
	sudo systemctl status tomcat10
	sudo systemctl restart tomcat10
	sudo systemctl stop tomcat10
	sudo systemctl start tomcat10

	#verificando a versão do Apache Tomcat Server
	sudo bash /opt/tomcat/bin/version.sh

#10_ Verificando a Porta de Conexão do Apache Tomcat Server 10.1.x<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN

#11_ Localização dos Arquivos de Configuração do Apache Tomcat Server<br>

	/opt/tomcat                        <-- Diretório de configuração do Apache Tomcat Server
	/opt/tomcat/bin                    <-- Diretório do binário (executável) do Apache Tomcat Server
	/opt/tomcat/conf                   <-- Diretório das configurações do Apache Tomcat Server
	/opt/tomcat/conf/server.xml        <-- Arquivo de configuração do Servidor do Apache Tomcat Server
	/opt/tomcat/conf/tomcat-users.xml  <-- Arquivo de configuração dos Usuários do Apache Tomcat Server
	/opt/tomcat/conf/context.xml       <-- Arquivo de configuração do Contexto do Apache Tomcat Server
	/opt/tomcat/logs                   <-- Diretório dos Logs do Apache Tomcat Server
	/opt/tomcat/webapps                <-- Diretório das Aplicações Web do Apache Tomcat Server

#12_ Adicionado o Usuário Local no Grupo Padrão do Apache Tomcat Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G tomcat $USER
	newgrp tomcat
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#13_ Editando o arquivo de configuração de usuários do Apache Tomcat Server

	#editando o arquivo de criação de usuários do Tomcat
	sudo vim /opt/tomcat/conf/tomcat-users.xml
	INSERT

		#alterar a partir da linha: 31
		<user username="admin" password="pti@2018" roles="manager-gui,manager,admin-gui,admin,tomcat,role1"/>

	#sair e salvar
	ESC SHIFT : x <Enter>

	#reiniciando e verificando o serviço do Apache Tomcat Server
	sudo systemctl restart tomcat10
	sudo systemctl status tomcat10

#14_ Testando o Apache Tomcat Server no navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080

#15_ Administrando o Apache Tomcat Server<br>

	Clique em: Manager App
		Usuário padrão: admin
		Senha padrão..: pti@2018
	<Fazer Login>

#16_ DESAFIO: FAZER A CRIAÇÃO DE 02 (DOIS) NOVOS USUÁRIOS PARA ADMINISTRAR O APACHE TOMCAT SERVER
PRIMEIRO USUÁRIO: tomcat10 (TUDO EM MINÚSCULO) SENHA: tomcat10, SEGUNDO USUÁRIO: seu_nome (TUDO EM 
MINÚSCULO) SENHA: sua_senha, TESTAR O ACESSO AO TOMCAT COM OS USUÁRIOS E VERIFICAR SE ESTÃO TENDO
DIREITOS PARA ADMINISTRAR O SERVIDOR.

#17: DESAFIO: ADICIONAR O USUÁRIO: admin E O SEU: seu_usuário NO GRUPO DO TOMCAT PARA ADMINISTRAR
O TOMCAT SERVER SEM PRECISAR DO COMANDO SUDO.

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Tomcat realizado com sucesso!!! #BoraParaPrática