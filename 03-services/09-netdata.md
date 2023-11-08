#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 23/04/2023<br>
#Versão: 0.03<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática

Site Oficial do Netdata: https://www.netdata.cloud/<br>

Netdata é uma ferramenta de código aberto projetada para coletar métricas em tempo real,<br>
como uso de CPU, atividade de disco, uso de largura de banda, visitas a sites etc..., e<br>
exibi-las em gráficos ao vivo e fáceis de interpretar.

#01_ Instalando as Dependências do Netdata Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Netdata Server
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates \
	zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 python3-mysqldb python3-pip \
	python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 libwebsockets-dev libjson-c-dev libbpfcc-dev \
	liblz4-dev libjudy-dev libelf-dev libmnl-dev autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler \
	lm-sensors python3-psycopg2 python3-pymysql

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

#06_ Habilitando as atualizações do Netdata Server

	sudo /usr/libexec/netdata/netdata-updater.sh --enable-auto-updates

#07_ Localização dos Arquivos de Configuração do Netdata Server<br>

	/etc/netdata/netdata.conf                      <-- arquivo de configuração do serviço do Netdata Server
	/etc/netdata/apps_groups.conf                  <-- arquivo de configuração dos Grupos de Aplicativos do Netdata Server
	/usr/lib/netdata/conf.d/python.d/apache.conf   <-- arquivo de monitoramento do Apache2 Server
	/usr/lib/netdata/conf.d/python.d/mongodb.conf  <-- arquivo de monitoramento do MongoDB Server
	/usr/lib/netdata/conf.d/python.d/mysql.conf    <-- arquivo de monitoramento do MySQL Server
	/usr/lib/netdata/conf.d/python.d/tomcat.conf   <-- arquivo de monitoramento do Apache Tomcat

#08_ Atualizando os arquivos de configuração do Netdata Server<br>

	#opção do comando wget: -v (verbose), -O (output file)

	#arquivo de configuração dos grupos de aplicativos do Netdata
	sudo wget -v -O /etc/netdata/apps_groups.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/apps_groups.conf

	#arquivo de monitoramento do Apache2 Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/apache.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/apache.conf

	#arquivo de monitoramento do MongoDB Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/mongodb.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/mongodb.conf

	#arquivo de monitoramento do MySQL Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/mysql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/mysql.conf

	#arquivo de monitoramento do Apache Tomcat Server
	sudo wget -v -O /usr/lib/netdata/conf.d/python.d/tomcat.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/tomcat.conf

#09_ Criando o usuário de monitoramento do MySQL Server do Netdata Server<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

		#criando o usuário do Netdata no MySQL
		CREATE USER 'netdata'@'localhost';

		#aplicando as permissões do usuário do Netdata no MySQL
		GRANT USAGE, REPLICATION CLIENT ON *.* TO 'netdata'@'localhost';

		#fazendo o flush das permissões e saindo do MySQL
		FLUSH PRIVILEGES;
		exit

#10_ Adicionado o Usuário Local no Grupo Padrão do Netdata Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G netdata $USER
	newgrp netdata
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#11_ Acessando e configurando o Netdata Server no navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:19999

#12_ DESAFIO: FAZER A INTEGRAÇÃO DO NETDATA CLIENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE 
INTEGRAÇÃO: 15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent, LINK:
https://www.youtube.com/watch?v=5MrH8L5cSIU

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO NETDATA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática