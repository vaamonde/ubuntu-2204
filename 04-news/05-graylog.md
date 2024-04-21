#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 21/04/2024<br>
#Data de atualização: 21/04/2024<br>
#Versão: 0.02<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAYLOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Graylog realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/16-graylog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiograylog #desafioopensearch

Conteúdo estudado nessa implementação:<br>
#01_ Criando os Grupos e o Usuários do Prometheus e do Node Exporter<br>

Site Oficial do Graylog: https://graylog.org/<br>

Graylog, Inc é uma empresa de software de gerenciamento de log e análise de segurança<br>
com sede em Houston, Texas. Seu principal produto é um software de gerenciamento de log,<br>
também chamado de Graylog.

[![Graylog](http://img.youtube.com/vi//0.jpg)]( "Graylog")

Link da vídeo aula: 

#01_ Instalando as Dependências do Graylog Server<br>

	#OBSERVAÇÃO IMPORTANTE: O GRAYLOG POSSUI AS DEPENDÊNCIAS DO BANCO DE DADOS NO-SQL
	#MONGODB E DO OPENJDK/OPENJRE, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: 06
	#DO TOMCAT SERVER (VERSÃO DO OPENJDK E DO OPENJRE INSTALADO: 17) E NA ETAPA: 08 DO
	#MONGODB (VERSÃO 7).

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Graylog Server
	sudo apt install apt-transport-https software-properties-common git vim wget curl \
	gnupg2 uuid-runtime pwgen dirmngr

#02_ Baixando e instalando a Chave GPG do OpenSearch<br>

	#baixando a chave GPG do OpenSearch
	#opção do comando curl: -o- (output file)
	#opção do comando gpg: -o (output file)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	curl -o- https://artifacts.opensearch.org/publickeys/opensearch.pgp | sudo gpg --dearmor --batch --yes -o /usr/share/keyrings/opensearch-keyring

	#criando o repositório do OpenSearch
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb [signed-by=/usr/share/keyrings/opensearch-keyring] https://artifacts.opensearch.org/releases/bundle/opensearch/2.x/apt stable main" | sudo tee /etc/apt/sources.list.d/opensearch-2.x.list

#03_ Instalando o OpenSearch no Ubuntu Server<br>

	#atualizando as listas do Apt com o Sources List do OpenSearch
	sudo apt update

	#OBSERVAÇÃO IMPORTANTE: o OpenSearch 2.12 e superior agora requer a configuração da #OPENSEARCH_INITIAL_ADMIN_PASSWORD variável de ambiente durante a instalação. A senha
	#deve ter no mínimo oito caracteres com pelo menos uma letra maiúscula, uma letra 
	#minúscula, um número e um caractere especial.

	#instalando o OpenSearch
	#opção do comando tr: -d (delete), -c (complement)
	#opção do comando head: -c (bytes)
	#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
	#opção do bloco de agrupamento ${}: Agrupa comandos em um bloco
	#opção do bloco de agrupamento $(): Executa comandos numa subshell, retornando o resultado
	sudo OPENSEARCH_INITIAL_ADMIN_PASSWORD=$(tr -dc A-Z-a-z-0-9_@#%^-_=+ < /dev/urandom  | head -c${1:-32}) apt install --install-recommends opensearch

#04_ Editando o arquivo de configuração do OpenSearch<br>

	#editando o arquivo de configuração do OpenSearch
	sudo vim /etc/opensearch/opensearch.yml
	INSERT

		#descomentar e alterar o valor da variável cluster.name na linha: 17
		cluster.name: graylog

		#descomentar e alterar o valor da variável node.name na linha: 23
		node.name: wsvaamonde

		#descomentar e alterar o valor da variável network.host na linha: 55
		network.host: 0.0.0.0
		
		#adicionar as opção abaixo no final do arquivo a partir da linha: 159
		discovery.type: single-node
		action.auto_create_index: false
		plugins.security.disabled: true
	
	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#05_ Editando o arquivo de configuração JVM (Java Virtual Machine)<br>

	#editando o arquivo de configuração JVM (Java Virtual Machine)
	sudo vim /etc/opensearch/jvm.options
	INSERT

		#manter o padrão das configurações do Heap Space a parti da linha: 22
		#padrão de tamanho inicial e máximo de: 1GB
		-Xms1g
		-Xmx1g

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#06_ Alterando as opções de inicialização do Kernel do Ubuntu Server<br>

	#alterando as opção do Sysctl de memória do JVM
	#opção do comando sysctl: -w (write)
	sudo sysctl -w vm.max_map_count=262144
	
	#adicionando as informações de memória na inicialização do Kernel
	#opção do comando tee: -a (append)
	#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
	echo 'vm.max_map_count=262144' | sudo tee -a /etc/sysctl.conf

#07_ Habilitando o Serviço do OpenSearch<br>

	#habilitando o serviço do Telegraf
	sudo systemctl daemon-reload
	sudo systemctl enable opensearch
	sudo systemctl restart opensearch

#08_ Verificando o Serviço e Versão do OpenSearch<br>

	#verificando o serviço do Telegraf
	sudo systemctl status opensearch
	sudo systemctl restart opensearch
	sudo systemctl stop opensearch
	sudo systemctl start opensearch

	#analisando os Log's e mensagens de erro do Servidor do OpenSearch
	#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)nsearch
	sudo journalctl -xeu opensearch

	#verificando a versão do OpenSearch
	curl -X GET "http://localhost:9200"

#09_ Verificando a Porta de Conexão do OpenSearch<br>

	#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
	#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
	#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
	#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'9200' -sTCP:LISTEN

#10_ Adicionando o Repositório do Graylog Server no Ubuntu Server<br>

	#baixando o repositório do Graylog Server
	wget https://packages.graylog2.org/repo/packages/graylog-6.0-repository_latest.deb

	#instalando o repositório do Graylog
	#opção do comando dpkg: -i (install)
	sudo dpkg -i graylog-*.deb

#11_ Instalando o Graylog Server no Ubuntu Server<br>

	#atualizando as listas do Apt com o Sources List do Graylog Server
	sudo apt update

	#instalando o Graylog Server
	#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
	sudo apt install --install-recommends graylog-server

#12_ Gerando as senhas das Variáveis: password_secret e root_password_sha2 do Graylog Server<br>

	#gerando a senha aleatório da variável: password_secret
	#OBSERVAÇÃO IMPORTANTE: COPIAR A SENHA GERADA NO BLOCO DE NOTAS PARA ALTERAR NAS 
	#CONFIGURAÇÕES DA VARIÁVEL DO GRAYLOG
	< /dev/urandom tr -dc A-Z-a-z-0-9 | head -c${1:-96};echo;

	#gerando a senha aleatório da variável: root_password_sha2
	#OBSERVAÇÃO IMPORTANTE: COPIAR A SENHA GERADA NO BLOCO DE NOTAS PARA ALTERAR NAS 
	#CONFIGURAÇÕES DA VARIÁVEL DO GRAYLOG
	echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
		Enter Password: pti@2018
	
#13_ Editando o arquivo de configuração do Graylog Server<br>

	#editando o arquivo de configuração do Graylog
	sudo vim /etc/graylog/server/server.conf
	INSERT

		#copiar e colar a senha da variável password_secret na linha: 57
		password_secret = COLAR_SUA_SENHA_GERADA

		#copiar e colar a senha da variável root_password_sha2 na linha: 68
		password_secret = root_password_sha2

		#descomentar e alterar o valor da variável http_bind_address na linha: 104
		http_bind_address = 0.0.0.0:9000

		#descomentar e alterar o valor da variável elasticsearch_hosts na linha: 193
		elasticsearch_hosts = http://172.16.1.20:9200

		#alterando o valor da variável mongodb_uri na linha: 576
		mongodb_uri = mongodb://graylog:graylog@localhost:27017/graylog

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#14_ Criando o usuário de autenticação do MongoDB Server<br>

	#acessando o MongoDB Shell
	#opção do comando mongosh: admin (database) -u (username), -p (password)
	sudo mongosh admin -u admin -p

	#criando a base de dados Graylog Server
	use graylog;

#criando o usuário e senha de acesso a base de dados do Graylog Server
```json
db.createUser({
	"user": "graylog",
	"pwd": "graylog",
	"roles" : [
	{ role: 'root', db: 'admin' }
	]
})
```

	#verificando o usuário criado no MongoDB
	db.getUser("graylog")

	#saindo do MongoDB
	quit

#15_ Habilitando o Serviço do Graylog Server<br>

	#habilitando o serviço do Graylog Server
	sudo systemctl daemon-reload
	sudo systemctl enable graylog-server
	sudo systemctl restart graylog-server

#16_ Verificando o Serviço e Versão do Graylog Server<br>

	#verificando o serviço do Graylog Server
	sudo systemctl status graylog-server
	sudo systemctl restart graylog-server
	sudo systemctl stop graylog-server
	sudo systemctl start graylog-server

	#analisando os Log's e mensagens de erro do Servidor do Graylog Server
	#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)nsearch
	sudo journalctl -xeu graylog-server

	#verificando a versão do Graylog Server
	sudo apt list grep -i graylog

#17_ Verificando a Porta de Conexão do Graylog Server<br>

	#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
	#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
	#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
	#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'9000' -sTCP:LISTEN

#18_ Adicionado o Usuário Local nos Grupos do OpenSearch e do Graylog Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G opensearch $USER
	sudo usermod -a -G graylog $USER
	newgrp graylog
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#19_ Localização dos diretórios principais do OpenSearch e do Graylog Server<br>

	/etc/opensearch/*                <-- Diretório das configurações do OpenSearch
	/etc/opensearch/opensearch.yml   <-- Arquivo de configuração do Serviço do OpenSearch
	/etc/opensearch/jvm.options      <-- Arquivo de configuração do JVM do OpenSearch
	/etc/graylog/*                   <-- Diretório das configurações do Graylog Server
	/etc/graylog/server/server.conf  <-- Arquivo de configuração do Graylog Server
	/var/log/opensearch/*            <-- Diretório dos Logs do OpenSearch
	/var/log/graylog/*               <-- Diretório dos Logs do Graylog Server

#20_ Configurando o Graylog Server via Navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9000

	Welcome to Graylog
		Username: admim
		Password: pti@2018
	<Sign In>

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAYLOG SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Graylog realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/16-graylog.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiograylog #desafioopensearchh