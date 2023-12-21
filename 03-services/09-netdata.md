#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/04/2023<br>
#Data de atualização: 20/12/2023<br>
#Versão: 0.05<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud

Conteúdo estudado nesse desafio:<br>
#01_ Instalação das Dependência do Netdata<br>
#02_ Clonagem do Projeto do Netdata do Github<br>
#03_ Compilação e Instalação do Netdata no Ubuntu Server<br>
#04_ Verificando o Status do Serviço do Netdata<br>
#05_ Verificando a Versão do Netdata<br>
#06_ Verificando a Porta de Conexão do Netdata<br>
#07_ Habilitando o Recurso de Auto-Atualização do Netdata<br>
#08_ Arquivo e Diretórios de Configuração do Netdata<br>
#09_ Atualização os Arquivos de Monitoramento de Serviços do Netdata<br>
#10_ Criando o Usuário de Monitoramento do MySQL Server do Netdata<br>
#11_ Adicionando o Usuário Local do Grupo do Netdata<br>
#12_ Acessando o Netdata via Navegador<br>
#13_ Desafio do Netdata Cloud<br>

Site Oficial do Netdata: https://www.netdata.cloud/<br>

Netdata é uma ferramenta de código aberto projetada para coletar métricas em tempo real,<br>
como uso de CPU, atividade de disco, uso de largura de banda, visitas a sites etc..., e<br>
exibi-las em gráficos ao vivo e fáceis de interpretar.

[![Netdata Server](http://img.youtube.com/vi//0.jpg)]( "Netdata Server")

Link da vídeo aula:

#01_ Instalando as Dependências do Netdata Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Netdata Server
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates \
	zlib1g-dev gcc make git autoconf autogen automake pkg-config uuid-dev python3 python3-mysqldb python3-pip \
	python3-dev libmysqlclient-dev libuv1-dev netcat libwebsockets16 libwebsockets-dev libjson-c-dev libbpfcc-dev \
	liblz4-dev libjudy-dev libelf-dev libmnl-dev autoconf-archive curl cmake protobuf-compiler protobuf-c-compiler \
	lm-sensors python3-psycopg2 python3-pymysql libssl-dev libprotobuf-dev g++

#02_ Clonando o projeto do Netdata Server do Github<br>

	#clonando o projeto do Github do Netdata
	#opção do comando git clone: --recurse-submodules (initialize and clone submodules within based on the provided pathspec)
	#opção do comando git clone: --depth (create a shallow clone with a history truncated to the specified number of commits)
	git clone --recurse-submodules https://github.com/netdata/netdata --depth=100
	#git clone --recursive https://github.com/netdata/netdata.git --depth=100 

#03_ Compilando e Instalando o Netdata Server<br>

	#acessando o diretório clonado e instalando o Netdata Server
	#opção do ./: execução de script desenvolvido em Shell Script .sh
	cd netdata/
		sudo ./netdata-installer.sh
	cd ..

#04_ Verificando o Serviço e Versão do Netdata Server<br>

	#verificando o serviço do Netdata Server
	sudo systemctl status netdata
	sudo systemctl restart netdata
	sudo systemctl stop netdata
	sudo systemctl start netdata

	#verificando a versão do Netdata Server
	#opção do comando netdata: -v (version)
	sudo netdata -v

#05_ Verificando a Porta de Conexão do Netdata Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'19999' -sTCP:LISTEN

#06_ Habilitando as atualizações do Netdata Server<br>

	#habilitando o suporte para atualização do Netdata Server
	sudo /usr/libexec/netdata/netdata-updater.sh --enable-auto-updates

#07_ Criando o usuário de monitoramento do MySQL Server do Netdata Server<br>

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

		#criando o usuário do Netdata no MySQL
		CREATE USER 'netdata'@'localhost';

		#aplicando as permissões do usuário do Netdata no MySQL
		GRANT USAGE, REPLICATION CLIENT ON *.* TO 'netdata'@'localhost';

		#fazendo o flush das permissões e saindo do MySQL
		FLUSH PRIVILEGES;
		exit

#08_ Criando o usuário de monitoramento do MongoDB Server do Netdata Server<br>

	#opção do comando mongosh: admin (database) -u (username), -p (password)
	mongosh admin -u admin -p

		db.createUser({
			"user": "netdata",
			"pwd": "netdata",
			"roles" : [
			{role: 'read', db: 'admin' },
			{role: 'clusterMonitor', db: 'admin'},
			{role: 'read', db: 'local' }
			]
		})

#09_ Adicionado o Usuário Local no Grupo Padrão do Netdata Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G netdata $USER
	newgrp netdata
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#10_ Localização dos Arquivos de Configuração do Netdata Server<br>

	/etc/netdata/netdata.conf                      <-- arquivo de configuração do serviço do Netdata Server
	/etc/netdata/apps_groups.conf                  <-- arquivo de configuração dos Grupos de Aplicativos do Netdata Server
	/usr/lib/netdata/conf.d/python.d/apache.conf   <-- arquivo de monitoramento do Apache2 Server
	/usr/lib/netdata/conf.d/python.d/mongodb.conf  <-- arquivo de monitoramento do MongoDB Server
	/usr/lib/netdata/conf.d/python.d/mysql.conf    <-- arquivo de monitoramento do MySQL Server
	/usr/lib/netdata/conf.d/python.d/tomcat.conf   <-- arquivo de monitoramento do Apache Tomcat

#11_ Configurando os Serviços de Monitoramento do Netdata Server<br>

	#OBSERVAÇÃO IMPORTANTE: cuidado na hora de configurar os serviços de monitoramento do
	#Netdata Server, os arquivo de configuração são baseados na Linguagem de Programação
	#Python utilizando o conceito do YAML (YAML Ain't Markup Language), não se utiliza TAB
	#sempre utilizar 02 (dois) espaços para endentar o código.

	#acessando o diretório de configuração do Netdata Server
	cd /etc/netdata/

	#configuração do serviço de monitoramento do Apache Server
	#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/apache
	sudo ./edit-config go.d/apache.conf

	jobs:
	  - name: wsvaamonde
	    url: http://localhost/server-status?auto
	
	#configuração do serviço de monitoramento do Apache TomCAT Server
	#https://learn.netdata.cloud/docs/data-collection/web-servers-and-web-proxies/tomcat
	sudo ./edit-config python.d/tomcat.conf

	jobs:
	  - name: wsvaamonde
	    url: http://localhost:8080/manager/status?XML=true
	    user: admin
	    pass: pti@2018

	#configuração do serviço de monitoramento do MySQL Server
	#https://learn.netdata.cloud/docs/data-collection/databases/mysql
	sudo ./edit-config go.d/mysql.conf

	jobs:
	  - name: wsvaamonde
	    dsn: netdata@tcp(127.0.0.1:3306)/

	#configuração do serviço de monitoramento do MongoDB Server
	#https://learn.netdata.cloud/docs/data-collection/databases/mongodb
	sudo ./edit-config go.d/mongodb.conf

	jobs:
	  - name: wsvaamonde
	    uri: mongodb://netdata:netdata@localhost:27017

#12_ Acessando e configurando o Netdata Server no navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:19999

#12_ DESAFIO-01: FAZER A INTEGRAÇÃO DO NETDATA CLIENT COM O NETDATA CLOUD, UTILIZE O VÍDEO DE 
INTEGRAÇÃO: 15-netdata.sh Configurando o Netdata Cloud integrado com o Netdata Agent, LINK:
https://www.youtube.com/watch?v=5MrH8L5cSIU

#13_ DESAFIO-02: ADICIONAR O USUÁRIO: admin E O: seu_usuário CRIADOS NO DESAFIO DO OPENSSH NO
GRUPO DO NETDATA PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

#14_ DESAFIO-03: ADICIONAR O HYPER LINK NO WORDPRESS PARA FACILITAR O ACESSO AO NETDATA, IGUAL
A TODOS OS DESAFIOS ATÉ AGORA.

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO WAR-TOMCAT SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Netdata realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-netdata.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetdata #desafionetdatacloud