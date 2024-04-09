#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/01/2023<br>
#Data de atualização: 06/04/2024<br>
#Versão: 0.18<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/08-mongodb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomongodb #desafiocompass

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do MongoDB Server<br>
#02_ Adicionando o Repositório do MongoDB Server<br>
#03_ Instalando o MongoDB Server no Ubuntu Server<br>
#04_ Verificando o Serviço e Versão do MongoDB Server<br>
#05_ Verificando a Porta de Conexão do MongoDB Server<br>
#06_ Diretórios e Arquivos de Configuração do MongoDB Server<br>
#07_ Adicionando o Usuário Local no Grupo do MongoDB Server<br>
#08_ Acessando o Console do MongoDB Server<br>
#09_ Comandos Básicos do MongoDB Server<br>
#10_ Criando o Usuário de Administração do MongoDB Server<br>
#11_ Configurando o Acesso Remoto do MongoDB com Autenticação<br>
#12_ Acessando o MongoDB Server com Compass GUI<br>
#13_ Acessando o MongoDB Server com Visual Studio Code VSCode<br>
#14_ Desafios do Banco de Dados MongoDB Server.

Site Oficial do MongoDB: https://www.mongodb.com/<br>
Site Oficial do MongoDB Compass: https://www.mongodb.com/products/compass<br>
Site Oficial da MongoDB Atlas: https://www.mongodb.com/atlas/database

Site Oficial do W3C School MongoDB: https://www.w3schools.com/mongodb/<br>
Site Oficial do W3C School JSON: https://www.w3schools.com/js/js_json.asp

MongoDB é um software de banco de dados orientado a documentos livre, de código aberto e<br>
multiplataforma, escrito na linguagem C++. Classificado como um programa de banco de dados<br>
NoSQL, o MongoDB usa documentos semelhantes a JSON com esquemas.

[![MongoDB Server](http://img.youtube.com/vi/qs-zRXaSmuM/0.jpg)](https://www.youtube.com/watch?v=qs-zRXaSmuM "MongoDB Server")

Link da vídeo aula: https://www.youtube.com/watch?v=qs-zRXaSmuM

#01_ Instalando as Dependências do MongoDB Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do MongoDB Server
	sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates

	#download da última versão do Libssl (link atualizado em 06/03/2024)
	#OBSERVAÇÃO IMPORTANTE: o tempo todo a Biblioteca Libssl sofre alteração, antes de faze o download do 
	#arquivo verifique a versão no link: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/
	#opção do comando dpkg: -i (install)
	wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb
	sudo dpkg -i libssl*.deb

#02_ Baixando e instalando a Chave GPG do MongoDB Server<br>

	#download da Chave GPG do MongoDB Server (VERSÃO ESTÁVEL ATÉ O MOMENTO: 7.0 EM: 06/04/2024)
	#OBSERVAÇÃO IMPORTANTE: o MongoDB Server possui várias versões, para verificar as
	#chaves GPG de cada versão acesse o link: https://www.mongodb.org/static/pgp/
	#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do comando gpg: -o (output)
	curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-7.0.gpg

#03_ Criando o repositório do MongoDB Server<br>

	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

#04_ Atualizando as Lista do Apt com o novo Repositório do MongoDB Server<br>

	#atualizando as listas do Apt
	sudo apt update

#05_ Instalando o MongoDB Server e Client<br>

	#instalando o MongoDB Server e Client (Console)
	sudo apt install mongodb-org

#06_ Habilitando o Serviço do MongoDB Server<br>

	#habilitando o serviço do MongoDB Server
	sudo systemctl daemon-reload
	sudo systemctl enable mongod
	sudo systemctl start mongod

#07_ Verificando o Serviço e Versão do MongoDB Server e do Client<br>

	#verificando o serviço do MongoDB Server
	sudo systemctl status mongod
	sudo systemctl restart mongod
	sudo systemctl stop mongod
	sudo systemctl start mongod

	#analisando os Log's e mensagens de erro do Servidor do MongoDB (NÃO COMENTADO NO VÍDEO)
	#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
	sudo journalctl -t mongod
	sudo journalctl -xeu mongod

	#verificando as versões do MongoDB Server e do Client
	sudo mongod --version
	sudo mongosh --version

#08_ Verificando a Porta de Conexão do MongoDB Server<br>

	#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
	#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
	#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
	#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

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

	#acessando o MongoDB Server via Client (MongoDB Shell/Console)
	mongosh

#12_ Comandos Básicos do MongoDB Server<br>

	#exibindo os bancos de dados existentes no MongoDB
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

	#acessando o MongoDB Server via Client (MongoDB Shell/Console)
	mongosh
	
	#alterar o database informe no MongoDB
	use admin

	#OBSERVAÇÃO IMPORTANTE: na gravação do vídeo não consta os dois papeis que foram adicionados
	#posteriormente na linha roles: "root" e "clusterAdmin", conforme testes e comentários nos
	#vídeos, no momento do desenvolvimento de aplicações utilizando o Node.JS junto com o recurso
	#de conexão com o MongoDB utilizando o Mongoose acontecia uma falha de: "Erro de permissão",
	#essa falha foi corrigida adicionando essas "Roles" e também na conexão com o Banco de Dados
	#foi adicionado a opção: ?authSource=admin 

```json
db.createUser(
{
	user: "admin",
	pwd: "pti@2018",
	roles: [ "root", "userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase", "clusterAdmin" ]
}
)
```

	#visualizando os usuários do MongoDB
	db.getUsers()

	#saindo do MongoDB
	exit

#14_ Configurando o MongoDB Server para suportar autenticação e Acesso Remoto<br>

	#editando o arquivo de configuração do MongoDB Server
	sudo vim /etc/mongod.conf
	INSERT
		
		#habilitando o suporte remoto do MongoDB Server na linha: 18
		#alterar a linha: bindIp: 127.0.0.1 para: bindIp: 0.0.0.0
		net:
		  port: 27017
		  bindIp: 0.0.0.0
		
		#habilitando o recurso de autenticação do MongoDB Server na linha: 28
		#descomentar a linha: #security, adicionar o valor: authorization: enabled
		security:
		  authorization: enabled
	
	#salvar e sair do arquivo
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

	Link de download do MongoDB Compass: https://www.mongodb.com/products/tools/compass

	#criando uma nova conexão com o MongoDB Server
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

	#configurando a conexão com o MongoDB Server
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

#18_ DESAFIO-01: CRIAR UM BANCO DE DADOS COM O: seu_nome (TUDO EM MINÚSCULO), DENTRO DESSE BANCO 
DE DADOS CRIAR UM COLLECTION CHAMADO: cadastro (TUDO EM MINÚSCULO) E DENTRO DESSE COLLECTION
INSERIR OS DOCUMENTS: nome: Seu Nome, idade: Sua Idade LISTAR AS INFORMAÇÕES NO VSCODE OU NO
COMPASS (VEJA O SITE W3SCHOOLS).

#19_ DESAFIO-02: CONHECER O PROJETO: MongoDB Atlas, FAZER O CADASTRO NO SITE OFFICIAL PARA A 
CRIAÇÃO DE UMA CONTA FREE NO LINK: https://www.mongodb.com/cloud/atlas/register, ESCOLHER A
OPÇÃO: LEARN FREE, FINALIZAR O CADASTRO CRIANDO UM USUÁRIO E FAZER A CRIAÇÃO DO MESMO BANCO
DE DADOS DO DESAFIO-O1, TESTAR A CONEXÃO NO MONGODB COMPASS E NO VSCODE. OBSERVAÇÃO: VEJA A
DOCUMENTAÇÃO NA OPÇÃO DE: CONNECT EM: MongoDB for VS Code, CUIDADO PRINCIPALMENTE COM AS
OPÇÕES DE CARACTERES ESPECIAIS NA SENHA, VEJA A DOCUMENTAÇÃO ABAIXO:

https://www.mongodb.com/docs/atlas/troubleshoot-connection/#special-characters-in-connection-string-password

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/08-mongodb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomongodb #desafiocompass