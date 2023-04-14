#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 14/04/2023<br>
#Versão: 0.01<br>

VIDEO AULA DE APOIO: https://www.youtube.com/watch?v=JUWuyTHvLVY

Site Oficial do Netdata: https://www.netdata.cloud/<br>

#01_ Instalando as Dependências do Netdata Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Netdata Server
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates \
	zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 python3-mysqldb python3-pip \
	python3-dev libmysqlclient-dev python-ipaddress libuv1-dev netcat libwebsockets15 libwebsockets-dev \
	libjson-c-dev libbpfcc-dev liblz4-dev libjudy-dev libelf-dev libmnl-dev autoconf-archive curl cmake \
	protobuf-compiler protobuf-c-compiler lm-sensors python3-psycopg2 python3-pymysql
	
	#opção do comando dpkg: -i (install)
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.17_amd64.deb
	sudo dpkg -i libssl*.deb

#02_ Clonando o projeto do Netdata Server do Github<br>

	#opção do comando git clone: --recurse-submodules (initialize and clone submodules within based on the provided pathspec)
	#opção do comando git clone: --depth (create a shallow clone with a history truncated to the specified number of commits)
	git clone --recurse-submodules https://github.com/netdata/netdata --depth=100

#03_ Compilando e Instalando o Netdata Server<br>

	#opção do ./: execução de script desenvolvido em Shell Script .sh
	cd netdata/
		sudo ./netdata-installer.sh
	cd ..

#04_ Verificando o Serviço e Versão do Netdata Server<br>

	#verificando o serviço do Netdata
	sudo systemctl status netdata
	sudo systemctl restart netdata
	sudo systemctl stop netdata
	sudo systemctl start netdata

	#verificando a versão do Netdata
	#opção do comando netdata: -v (version)
	sudo netdata -v

#05_ Verificando a Porta de Conexão do Netdata Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'19999' -sTCP:LISTEN

#06_ Localização dos Arquivos de Configuração do Netdata Server<br>

	/etc/netdata/netdata.conf                      <-- arquivo de configuração do serviço do Netdata Server
	/etc/netdata/apps_groups.conf                  <-- arquivo de configuração dos Grupos de Aplicativos do Netdata Server
	/usr/lib/netdata/conf.d/python.d/apache.conf   <-- arquivo de monitoramento do Apache2 Server
	/usr/lib/netdata/conf.d/python.d/mongodb.conf  <-- arquivo de monitoramento do MongoDB Server
	/usr/lib/netdata/conf.d/python.d/mysql.conf    <-- arquivo de monitoramento do MySQL Server
	/usr/lib/netdata/conf.d/python.d/tomcat.conf   <-- arquivo de monitoramento do Apache Tomcat

#07_ Atualizando os arquivos de configuração do Netdata Server<br>

	#opção do comando wget: -v (verbose), -O (output file)

	#arquivo de configuração dos grupos de aplicativos do Netdata
	sudo wget -v -O /etc/netdata/apps_groups.conf 

	#arquivo de monitoramento do Apache2 Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/apache.conf 

	#arquivo de monitoramento do MongoDB Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/mongodb.conf 

	#arquivo de monitoramento do MySQL Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/mysql.conf 

	#arquivo de monitoramento do Tomcat Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/tomcat.conf 

#08_ Adicionado o Usuário Local no Grupo Padrão do Netdata Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G netdata $USER
	newgrp netdata
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

