#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 09/03/2024<br>
#Versão: 0.02<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Grafana realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do Grafana Server<br>
#02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server<br>
#03_ Instalando o Grafana Server no Ubuntu Server<br>
#04_ Editando os arquivos de configuração do Grafana Server<br>
#05_ Habilitando o Serviço do Grafana Server<br>
#06_ Verificando o Serviço e Versão do Grafana Server<br>
#07_ Verificando a Porta de Conexão do Grafana Server<br>
#08_ Localização dos diretórios principais do Grafana Server<br>
#09_ Configurando o Grafana Server via Navegador<br>

Site Oficial do Grafana: https://grafana.com/<br>

Grafana é uma aplicação web de análise de código aberto multiplataforma e visualização<br>
interativa da web. Ele fornece tabelas, gráficos e alertas para a Web quando conectado a<br>
fontes de dados suportadas. É expansível através de um sistema de plug-in. Wikipédia

[![Grafana](http://img.youtube.com/vi//0.jpg)]( "Grafana")

Link da vídeo aula: 

#01_ Instalando as Dependências do Grafana Server<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do Grafana Server
	sudo apt install apt-transport-https software-properties-common

#02_ Instalando a Chave GPG do Grafana Server no Ubuntu Server<br>

	#baixando a Chave GPG do Grafana Server
	#opção do comando wget: -q (), -O ()
	sudo wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/grafana.gpg > /dev/null

	#adicionando o Repositório do Grafana Server
	#opção do comando tee: -a ()
	echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

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

		#principais variáveis do Grafana Server
		GRAFANA_USER=grafana		(usuário do serviço do Grafana Server)
		GRAFANA_GROUP=grafana		(grupo do serviço do Grafana Server)
		LOG_DIR=/var/log/grafana	(localização dos arquivos de Log do Grafana Server)
		DATA_DIR=/var/lib/grafana	(localização do banco de dados do Grafana Server)

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

	#editando o arquivo de inicialização do Grafana Server
	sudo vim /etc/grafana/grafana.ini
	INSERT

		#descomentar a variável protocol = na linha: 36
		protocol = http

		#descomentar a variável ;http_port = na linha 45
		http_port = 3000

		#descomentar a variável ;domain = = na linha 48
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

	#verificando a versão do Grafana Server
	#opção do comando grafana-server: -v (version)
	#opção do comando grafana-cli: -v (version)
	sudo grafana-server -v
	sudo grafana-cli -v

#07_ Verificando a Porta de Conexão do Grafana Server<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'3000' -sTCP:LISTEN

#08_ Localização dos diretórios principais do Grafana Server<br>

	/usr/share/grafana*        <-- Diretório do Site do Grafava Server
	/var/log/grafana*          <-- Diretório dos arquivos de Log's do serviço do Grafana Server
	/var/lib/grafana*          <-- Diretório dos banco de dados do Grafana Server
	/etc/grafana/*             <-- Diretório das configurações do Grafana Server
	/var/lib/grafana/plugins*  <-- Diretório dos Plugins do Grafana Server

#09_ Configurando o Grafana Server via Navegador<br>

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

#10_ Criando um Data Sources do MySQL Server no Grafana Server<br>

	#criando um Data Sources do Banco de Dados DBAgenda do MySQL Server
	Open Menu
		Connections
			Data Sources
				<Add data source>
					Filter by name or type: SQL
						MySQL
							Name: MySQL-DBAgenda
							MySQL Connection
								Host URL: localhost:3306
								Database name: dbagenda
								Username: dbagenda
								Password: dbagenda
						<Save & Test>
			Data Sources

#11_ Criando um Dashboard do Banco de Dados DBAgenda<br>

	#criando o Dashboard do Banco de Dados DBAgenda
	Open Menu
		Dashboards
			<Create Dashboard>
			<+ Add visualization>
				Select data source
					Data source: MySQL-DBAgenda
				Builder
					Dataset: dbagenda   Tabela: contatos
					Columm: nome   Aggregation: COUNT (Contar)   Alias: Choose (Default)
				<Run query>
				Panel Title
					<Open visualization suggestions>
						Suggestions: Gauge
							Panel options
								Tile: Total de Contatos
								Description: Total de Contatos cadastrado no banco DBAgenda
						<Save> - <Save>
						<Apply>
			<Add>
				Builder
					Dataset: dbagenda   Tabela: contatos
					Columm: nome   Aggregation: Choose (Default)   Alias: Choose (Default)
					Order by: idcon
					Sort by: descending
					Limit: 10
				<Run query>
				Panel Title
					<Switch to table>
						Panel options
							Tile: Contatos do DBAgenda
							Description: Nome dos contatos do banco DBAgenda
					<Save> - <Save>
					<Apply>

#15_ DESAFIO-01: 


=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO GRAFANA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Grafana realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-grafana.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana