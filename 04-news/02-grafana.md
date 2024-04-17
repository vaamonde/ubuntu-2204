#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 12/04/2024<br>
#Versão: 0.10<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Grafana realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Grafana Server<br>
#02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server<br>
#03_ Instalando o Grafana Server no Ubuntu Server<br>
#04_ Editando os arquivos de configuração do Grafana Server<br>
#05_ Habilitando o Serviço do Grafana Server<br>
#06_ Verificando o Serviço e Versão do Grafana Server<br>
#07_ Verificando a Porta de Conexão do Grafana Server<br>
#08_ Adicionado o Usuário Local no Grupo Padrão do Grafana Server<br>
#09_ Localização dos diretórios principais do Grafana Server<br>
#10_ Configurando o Grafana Server via Navegador<br>
#11_ Criando um Data Sources do MySQL Server no Grafana Server<br>
#12_ Criando um Dashboard do Banco de Dados DBAgenda<br>
#13_ Adicionando o Plugin do Dashboard do Zabbix Server no Grafana<br>
#14_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico

Site Oficial do Grafana: https://grafana.com/<br>

Grafana é uma aplicação web de análise de código aberto multiplataforma e visualização<br>
interativa da web. Ele fornece tabelas, gráficos e alertas para a Web quando conectado a<br>
fontes de dados suportadas. É expansível através de um sistema de plug-in.

[![Grafana](http://img.youtube.com/vi/vD1aFVcgdlo/0.jpg)](https://www.youtube.com/watch?v=vD1aFVcgdlo "Grafana")

Link da vídeo aula: https://www.youtube.com/watch?v=vD1aFVcgdlo

#01_ Instalando as Dependências do Grafana Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Grafana Server
	sudo apt install apt-transport-https software-properties-common git vim

#02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server<br>

	#baixando a Chave GPG do Grafana Server
	#opção do comando wget: -q (quiet), -O (output-document)
	#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
	#opção do redirecionador > (maior): Redireciona a saída padrão (STDOUT)
	sudo wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/grafana.gpg > /dev/null

	#adicionando o Repositório do Grafana Server (versão BETA)
	#OBSERVAÇÃO IMPORTANTE: caso queira instalar a versão atual altere a palavra: beta por: stable
	#opção do comando tee: -a (append)
	#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
	echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://apt.grafana.com beta main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

#03_ Instalando o Grafana Server no Ubuntu Server<br>

	#atualizando as listas do Apt com o novo repositório
	sudo apt update

	#instalando o Grafana
	#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
	sudo apt install --install-recommends grafana

#04_ Editando os arquivos de configuração do Grafana Server<br>

	#editando o arquivo de configuração do Grafana Server
	sudo vim /etc/default/grafana-server
	INSERT

		#principais variáveis do Grafana Server (padrão não alterar)
		GRAFANA_USER=grafana		(usuário do serviço do Grafana Server)
		GRAFANA_GROUP=grafana		(grupo do serviço do Grafana Server)
		LOG_DIR=/var/log/grafana	(localização dos arquivos de Log do Grafana Server)
		DATA_DIR=/var/lib/grafana	(localização do banco de dados do Grafana Server)

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

	#editando o arquivo de inicialização do Grafana Server
	sudo vim /etc/grafana/grafana.ini
	INSERT

		#descomentar a variável protocol = na linha: 32
		protocol = http

		#descomentar a variável ;http_port = na linha 41
		http_port = 3000

		#descomentar a variável ;domain = = na linha 44
		domain = pti.intra

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#05_ Habilitando o Serviço do Grafana Server<br>

	#habilitando o serviço do Grafana Server
	sudo systemctl daemon-reload
	sudo systemctl enable grafana-server
	sudo systemctl restart grafana-server

#06_ Verificando o Serviço e Versão do Grafana Server<br>

	#verificando o serviço do Grafana Server
	sudo systemctl status grafana-server
	sudo systemctl restart grafana-server
	sudo systemctl stop grafana-server
	sudo systemctl start grafana-server

	#analisando os Log's e mensagens de erro do Servidor do Grafana
	#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
	sudo journalctl -t grafana
	sudo journalctl -xeu grafana-server

	#verificando a versão do Grafana Server
	#opção do comando grafana-server: -v (version)
	#opção do comando grafana-cli: -v (version)
	sudo grafana-server -v
	sudo grafana-cli -v

#07_ Verificando a Porta de Conexão do Grafana Server<br>

	#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
	#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
	#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
	#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

	#OBSERVAÇÃO IMPORTANTE: CUIDADO NO PROCEDIMENTO DE INSTALAR E CONFIGURAR O NODE.JS E
	#OS SEUS DESAFIOS, POR PADRÃO A PRIMEIRA APLICAÇÃO EM JAVASCRIPT FEITA UTILIZANDO O
	#RECURSO DE EXPRESS ESTÁ NA PORTA 3000, RECOMENDO MUDAR A PORTA DA APLICAÇÃO OU
	#DESATIVAR A MESMA PARA NÃO ENTRAR EM CONFLITO COM O GRAFANA SERVER.

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN

#08_ Adicionado o Usuário Local no Grupo Padrão do Grafana Server<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G grafana $USER
	newgrp grafana
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#09_ Localização dos diretórios principais do Grafana Server<br>

	/usr/share/grafana*          <-- Diretório do Site do Grafava Server
	/var/log/grafana*            <-- Diretório dos arquivos de Log's do serviço do Grafana Server
	/var/lib/grafana*            <-- Diretório dos banco de dados do Grafana Server
	/etc/grafana/*               <-- Diretório das configurações do Grafana Server
	/etc/grafana/grafana.ini     <-- Arquivo de Configuração e Inicialização do Grafana Server
	/etc/default/grafana-server  <-- Arquivo de Configuração do Serviço do Grafana Server
	/var/lib/grafana/plugins*  <-- Diretório dos Plugins do Grafana Server

#10_ Configurando o Grafana Server via Navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

	#configurações iniciais do Grafana Server
	Welcome to Grafana
		Email or username: admin
		Password: admin 
	<Log In>
	
	Update your password
		New password: pti@2018
		Confirm new password: pti@2018 
	<Submit>

#11_ Criando um Data Sources do MySQL Server no Grafana Server<br>

	#criando um Data Sources do Banco de Dados DBAgenda do MySQL Server
	Open Menu
		Connections
			Data Sources
				<Add data source>
					Filter by name or type: MySQL
						Select: MySQL (Data Source for MySQL databases)
							Name: MySQL-DBAgenda - Default (Enable)
							MySQL Connection
								Host URL: localhost:3306
								Database name: dbagenda
								Username: dbagenda
								Password: dbagenda
						<Save & Test>
			Data Sources

#12_ Criando um Dashboard do Banco de Dados DBAgenda<br>

	#criando o Dashboard do Banco de Dados DBAgenda
	Open Menu
		Dashboards
			<Create Dashboard>
			<+ Add visualization>
				Select data source
					Data source: MySQL-DBAgenda
				
				#primeira etapa: criar o Dataset do Banco, Tabela e Coluna
				Builder
					Dataset: dbagenda   Tabela: contatos
					Columm: nome   Aggregation: COUNT (Contar)   Alias: Choose (Default)
				<Run query>
				
				#segunda etapa: criar a visualização dos dados no painel
				Panel Title
					<Open visualization suggestions>
						Suggestions: Gauge
							Panel options
								Tile: Total de Contatos
								Description: Total de Contatos cadastrados no banco DBAgenda
							Standard Option
								Min: 1
								Max: 20
						<Save>

				#terceira etapa: salvando as mudanças do Dashboard		
				Details
					Title: DBAgenda
					Description: Dashboard DBAgenda
					Folder: Dashboard
				<Save>
				
			#quarta etapa: adicionando mais um painel no Dashboard DBAgenda
			<Add>
				Visualization
					Builder
						Dataset: dbagenda   Tabela: contatos
						Columm: nome   Aggregation: Choose (Default)   Alias: Choose (Default)
						
						#habilitar a opção: Order (Enable) no painel da Builder
						Order by: idcon
						Sort by: descending
						Limit: 10
					<Run query>
					
					Panel Title
						<Switch to table>
							Panel options
								Tile: Últimos Contatos do DBAgenda
								Description: Nome dos últimos contatos do banco DBAgenda
						<Save> - <Save>
					<Apply>

#13_ Adicionando o Plugin do Dashboard do Zabbix Server no Grafana<br>

	#instalando o Plugin do Zabbix Server no Grafana
	sudo grafana-cli plugins install alexanderzobnin-zabbix-app

	#reiniciar o serviço do Grafana Server
	sudo systemctl restart grafana-server
	sudo systemctl status grafana-server

	#criando usuário de autenticação no Zabbix Server
	#OBSERVAÇÃO IMPORTANTE: nos testes feito utilizando o usuário padrão do Zabbix
	#Server: Admin acontecia o erro de autenticação, aparecendo sempre a mensagem de:
	#Incorrect user name or password or account is temporarily blocked. Para corrigir
	#essa falha fiz a criação de um novo usuário e a conexão foi feita com sucesso.

	#acessando o Zabbix Server via Navegador
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver/zabbix

	#criação do usuário para a integração com o Grafana Server
	Zabbix
		Users
			Users
				<Create User>
					User
						Username: vaamonde
						Name: Robson Vaamonde
						Password: pti@2018
						Password (once again): pti@2018
					Permission
						Role: <Select>
							Super admin role
				<Add>

	#habilitando o Plugin do Zabbix Server no Grafana Server
	Open Menu
		Administration
			Plugins and data
				Plugins
					Search: Zabbix (clicar)
					<Enabled>

	#criando o Data Source da Zabbix Server
	Open Menu
		Connections
			Data sources
				<+ Add new data source>
					Filter: Zabbix (select)
						Name: wsvaamonde
						Connection: http://172.16.1.20/zabbix/api_jsonrpc.php
						Zabbix Connection
							Auth type: User and password
							Username: vaamonde
							Password: pti@2018
				<Save and test>
	
	#criando o Dashboard padrão do Zabbix Server
	Open Menu
		New Dashboard
			<+ Add visualization>
				Select data source: wsvaamonde (Zabbix Server)

				#gráfico de utilização da CPU

				#gráfico de utilização da RAM

				#gráfico de utilização do DISK

				#gráfico de utilização da NETWORK

#14_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico<br>

	#instalando o software stress-ng e s-tui no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
	sudo apt install stress-ng s-tui

	#verificando a versão do stress-ng e do s-tui (NÃO COMENTADO NO VÍDEO)
	sudo stress-ng --version
	sudo s-tui --version

	#verificando a carga atual do servidor Ubuntu (NÃO COMENTADO NO VÍDEO)
	#HORA ATUAL | TEMPO DE ATIVIDADE | NÚMERO DE USUÁRIOS LOGADOS | MÉDIA DE CARGA CPU 1=100% - (1M) (5M) (15M)
	sudo uptime

	#verificando o desempenho do servidor Ubuntu (NÃO COMENTADO NO VÍDEO)
	sudo top

	#estressando a CPU, RAM e DISK utilizando o stress-ng (pressione Ctrl+C para abortar)
	#opção do comando stress-ng: --hdd (start N workers continually writing, reading and 
	#removing temporary files.), --io (start N workers continuously calling sync(2) to 
	#commit buffer cache to disk.), --vm (start N workers continuously calling mmap(2)/
	#munmap(2) and writing  to  the  allocated  memory.), --timeout (run each stress test 
	#for at least T seconds)
	sudo stress-ng --hdd 8 --io 8 --vm 18 --cpu 8 --timeout 900s

	#parando alguns serviços do Ubuntu Server (NÃO COMENTADO NO VÍDEO)
	sudo systemctl stop tomcat10.service mongod.service netdata.service webmin.service

	#fazendo uma busca no disk utilizando o comando find (NÃO COMENTADO NO VÍDEO)
	#opção do comando find: -name (Base of file name), * (Qualquer coisa)
	sudo find / -name vaamonde*

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do Grafana realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana