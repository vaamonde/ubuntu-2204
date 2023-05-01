#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 23/04/2023<br>
#Versão: 0.08<br>

VIDEO AULA DE APOIO: https://www.youtube.com/watch?v=ClnoU4-x5oI

Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do MariaDB: https://mariadb.org/<br>
Site Oficial do Workbench: https://www.mysql.com/products/workbench/

Site Oficial do W3C School MySQL: https://www.w3schools.com/mysql/default.asp

O MySQL é um sistema de gerenciamento de banco de dados, que utiliza a linguagem SQL como<br>
interface. É atualmente um dos sistemas de gerenciamento de bancos de dados mais populares<br>
da Oracle Corporation, com mais de 10 milhões de instalações pelo mundo. 

#01_ Instalando o MySQL Server e Client<br>

	#atualizando as listas do Apt
	sudo apt update
	
	#instalando o MySQL Server e Client
	sudo apt install git vim libproj22 proj-data mysql-server-8.0 mysql-client-8.0 

#02_ Verificando o Serviço e Versão do MySQL Server<br>

	#verificando o serviço do MySQL
	sudo systemctl status mysql
	sudo systemctl restart mysql
	sudo systemctl stop mysql
	sudo systemctl start mysql

	#verificando as versões do MySQL Server e Client
	sudo mysqld --version
	sudo mysql --version

#03_ Verificando a Porta de Conexão do MySQL Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN

#04_ Localização dos Arquivos de Configuração do MySQL Server<br>

	/etc/mysql                          <-- Diretório de configuração do SGBD MySQL Server
	/etc/mysql/mysql.conf.d/mysqld.cnf  <-- Arquivo de configuração do Servidor SGBD do MySQL Server
	/etc/mysql/mysql.conf.d/mysql.cnf   <-- Arquivo de configuração do Cliente SGBD do MySQL Client
	/var/log/mysql                      <-- Diretório padrão dos Logs do SGBD Mysql Server
	/var/lib/mysql                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server

#05_ Acessando o MySQL Server utilizando o MySQL Client (Console)<br>

	OBSERVAÇÃO IMPORTANTE: por padrão o usuário Root do MySQL Server não tem senha para
	se logar no MySQL Client Console.

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

#06_ Aplicando a segurança de acesso do usuário Root no MySQL Server<br>

	#visualizando as bases de dados do MySQL
	SHOW DATABASES;

	#utilizando a base de dados mysql
	USE mysql;
		
		#mostrando as tabelas criadas na base de dados mysql
		SHOW TABLES;

		#selecionando o dados da tabela user, filtrando somente as colunas: user e host
		SELECT user,host FROM user;

		#alterando a senha do usuário Root Localhost
		ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123@senac';
		
		#alterando as permissões do usuário Root Localhost
		GRANT ALL ON *.* TO 'root'@'localhost';
		
		#aplicando todas as mudanças na base de dados
		FLUSH PRIVILEGES;
		
		#saindo do MySQL Client Console
		exit

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u root -p

#07_ Criando um usuário DBA (Data Base Administrator) no MySQL Server<br>

	#criando o usuário DBA Localhost
	CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY '123@senac';
	
	#alterando as permissões do usuário DBA Localhost
	GRANT ALL ON *.* TO 'dba'@'localhost';
	
	#aplicando todas as mudanças na base de dados
	FLUSH PRIVILEGES;

	#saindo do MySQL Client Console
	exit

	#opções do comando mysql: -u (user), -p (password)
	sudo mysql -u dba -p

#08_ Adicionado o Usuário Local no Grupo Padrão do MySQL Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G mysql $USER
	newgrp mysql
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

	#opções do comando mysql: -u (user), -p (password)
	mysql -u dba -p

#09_ Permitindo o Root do MySQL se Logar Remotamente no MySQL Client Console<br>
	
	#editar o arquivo de configuração do MySQL Server
	sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
	INSERT
	
		#alterar a linha do: bind-address = 127.0.0.1 para: 0.0.0.0
		bind-address = 0.0.0.0

		#comentar a linha do mysqlx-bind-address
		#mysqlx-bind-address = 127.0.0.1

	#sair e salvar o arquivo	
	ESC SHIFT :x <Enter>

	#reiniciar o serviço do MySQL Server
	sudo systemctl restart mysql
	sudo systemctl status mysql

	#acessar o MySQL Server como Root
	sudo mysql -u root -p

	#criando o usuário Root Remoto do MySQL Server
	CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '123@senac';
	GRANT ALL ON *.* TO 'root'@'%';
	FLUSH PRIVILEGES;

	#verificando o usuário Root Remoto do MySQL Server
	USE mysql;
	SELECT user,host FROM user;
	exit

#10_ Conectando no MySQL Server utilizando o MySQL Workbench<br>

	#conectando com o usuário Root do MySQL no Workbench
	MySQL Connections: +
		Connection Name: UbuntuServer
		Connection Method: Standard (TCP/IP)
		Parameters:
			Hostname: 10.26.44.XXX
			Port: 3306
			Username: root
			Password:
				Store in Keychain
					Password: 123@senac
				<OK>
		<Test Connection>
			<OK>
		<OK>

#11_ Integrando o MySQL Server com o Visual Studio Code VSCode<br>

	#instalando a Extensão do MySQL Server
	VSCode
		Extensões
			Pesquisar
				MySQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
					Instalar

	#configurando a conexão com o MySQL Server
	VSCode
		Database
			<Create Connection>
				Name: UbuntuServer
				Server Type:
					MySQL
						Host: 10.26.44.XXX
						Port: 3306
						Username: root
						Password: 123@senac
				<Save>

#12_ DESAFIO: CRIAR UM BANCO DE DADOS COM O: seu_nome (TUDO EM MINÚSCULO), DENTRO DESSE 
BANCO DE DADOS CRIAR UMA TABELA COM O: seu_nome (TUDO EM MINÚSCULO) COM AS SEGUINTES 
COLUNAS: Nome (Tipo Texto) e Idade (Tipo Numérico) (TUDO EM MINÚSCULO) (VEJA O SITE W3SCHOOLS). 
OBSERVAÇÃO IMPORTANTE: NÃO PRECISA CRIAR CHAVE PRIMÁRIA (Primary Key) NA SUA TABELA.