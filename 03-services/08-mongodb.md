#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/01/2023<br>
#Data de atualização: 23/04/2023<br>
#Versão: 0.08<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática

Site Oficial do MongoDB: https://www.mongodb.com/<br>
Site Oficial do MongoDB Compass: https://www.mongodb.com/products/compass

Site Oficial do W3C School MongoDB: https://www.w3schools.com/mongodb/

MongoDB é um software de banco de dados orientado a documentos livre, de código aberto e<br>
multiplataforma, escrito na linguagem C++. Classificado como um programa de banco de dados<br>
NoSQL, o MongoDB usa documentos semelhantes a JSON com esquemas.

#01_ Instalando as Dependências do MongoDB Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do MongoDB Server
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates
	
	#opção do comando dpkg: -i (install)
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb
	sudo dpkg -i libssl*.deb

#02_ Baixando e instalando a Chave GPG do MongoDB Server<br>

	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando gpg: -o (output)
	curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg

#03_ Criando o repositório do MongoDB Server<br>

	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

#04_ Atualizando as Lista do Apt com o novo Repositório do MongoDB Server<br>

	sudo apt update

#05_ Instalando o MongoDB Server e Client<br>

	sudo apt install mongodb-org

#06_ Habilitando o Serviço do MongoDB Server<br>

	sudo systemctl daemon-reload
	sudo systemctl enable mongod
	sudo systemctl start mongod

#07_ Verificando o Serviço e Versão do MongoDB Server e do Client<br>

	sudo systemctl status mongod
	sudo systemctl restart mongod
	sudo systemctl stop mongod
	sudo systemctl start mongod

	#verificando as versões do MongoDB Server e do Client
	mongod --version
	mongosh --version

#08_ Verificando a Porta de Conexão do MongoDB Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'27017' -sTCP:LISTEN

#09_ Localização dos Arquivos de Configuração do MongoDB Server<br>

	/etc/mongod.conf  <-- arquivo de configuração do MongoDB Server
	/var/log/mongodb  <-- diretório dos arquivos de Log do MongoDB Sever
	/var/lib/mongodb  <-- diretório dos arquivos de Banco de Dados do MongoDB Server

#10_ Adicionado o Usuário Local no Grupo Padrão do MongoDB Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G mongodb $USER
	newgrp mongodb
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#11_ Testando a Conexão Local com o MongoDB Server<br>

	mongosh

#12_ Comandos Básicos do MongoDB Server<br>

	#exibir os bancos de dados existentes no MongoDB
	show dbs

	#alterar o database informe no MongoDB
	use admin

	#listar o database informe atual no MongoDB
	db

	#exibir os collections do database informe atual no MongoDB
	show collections

	#sair do MongoDB
	quit

#13_ Criando o usuário de administração do MongoDB Server<br>

	mongosh
	
	#alterar o database informe no MongoDB
	use admin

	#criando o usuário admin e suas roles (papéis) do MongoDB
	db.createUser(
	{
		user: "admin",
		pwd: "pti@2018",
		roles: [ "userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase" ]
	}
	)

	#visualizando os usuários do MongoDB
	db.getUsers()

	#saindo do MongoDB
	exit

#14_ Configurando o MongoDB Server para suportar autenticação e acesso Remoto<br>

	sudo vim /etc/mongod.conf
		
		INSERT
			
			#habilitando o suporte remoto do MongoDB Server
			#alterar a linha: bindIp: 127.0.0.1 para: bindIp: 0.0.0.0
			net:
			  port: 27017
			  bindIp: 0.0.0.0
			
			#habilitando o recurso de autenticação do MongoDB Server
			#descomentar a linha: #security, adicionar o valor: authorization: enabled
			security:
			  authorization: enabled
		
		#sair e salvar o arquivo
		ESC SHIFT :x <ENTER>

	#reiniciar o serviço do MongoDB Server
	sudo systemctl restart mongod
	sudo systemctl status mongod

#15_ Acessando o MongoDB com e sem autenticação<br>

	mongosh

	#exibir os bancos de dados existentes no MongoDB
	show dbs

	#saindo do MongoDB Server
	quit
		
	#opção do comando mongosh: admin (database) -u (username), -p (password)
	mongosh admin -u admin -p

	#exibir os bancos de dados existentes no MongoDB
	show dbs

	#saindo do MongoDB Server
	quit

#16_ Integrando o MongoDB Server com o Compass GUI<br>

	#criando uma nova conexão
	<New connection+>
		New Connection
			URL: mongodb://172.16.120:27017
		Advanced Connection Options
			Connection String Scheme
				mongodb
			Host:
				172.16.1.20:27017
		Authentication
			Username/Password
				Username: admin
				Password: pti@2018
				Authentication Database: admin
			Authentication Mechanism
				Default
		<Save & Connect>

#17_ Integrando o MongoDB Server com o Visual Studio Code VSCode<br>

	#instalando a Extensão do MongoDB
	VSCode
		Extensões
			Pesquisar
				MongoDB for VS Code
					Instalar

	#configurando a conexão com o MongoDB
	VSCode
		MongoDB
			CONNECTIONS
				Add Connection
					Advanced Connection String: <Open From>
						New Connection
							General
								Connection Type: Standalone
								Hostname: 172.16.1.20
								Port: 27017
								Authentication: Username/Password
									Username: admin
									Password: pti@2018
									Authentication Database: admin
						<Connect>
					<Close>

#18_ DESAFIO: CRIAR UM BANCO DE DADOS COM O: seu_nome (TUDO EM MINÚSCULO), DENTRO DESSE BANCO 
DE DADOS CRIAR UM COLLECTION CHAMADO: cadastro (TUDO EM MINÚSCULO) E DENTRO DESSE COLLECTION
INSERIR OS DOCUMENTS: nome: Seu Nome, idade: Sua Idade LISTAR AS INFORMAÇÕES NO VSCODE OU NO
COMPASS (VEJA O SITE W3SCHOOLS).

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática