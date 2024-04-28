#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 20/04/2024<br>
#Data de atualização: 21/04/2024<br>
#Versão: 0.04<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO INFLUXDB SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do InfluxDB realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/14-influxdb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioinfluxdb #desafiotelegraf

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do InfluxDB2 e do Telegraf<br>
#02_ Instalando a Chave GPG do InfluxDB2 e do Telegraf no Ubuntu Server<br>
#03_ Instalando o InfluxDB2 e Telegraf no Ubuntu Server<br>
#04_ Habilitando o Serviço do InfluxDB2<br>
#05_ Verificando o Serviço e Versão do InfluxDB2<br>
#06_ Verificando a Porta de Conexão do InfluxDB2<br>
#07_ Adicionado o Usuário Local no Grupo Padrão do InfluxDB2 e do Telegraf<br>
#08_ Localização dos diretórios principais do InfluxDB2 e do Telegraf<br>
#09_ Configurando o InfluxDB2 via Navegador<br>
#10_ Criando o Token de Integração do Telegraf com o InfluxDB<br>
#11_ Editando o arquivo de configuração do Telegraf<br>
#12_ Habilitando o Serviço do Telegraf<br>
#13_ Verificando o Serviço e Versão do Telegraf<br>
#14_ Criando um Data Explorer do Telegraf no InfluxDB2

Site Oficial do InfluxDB: https://www.influxdata.com/<br>

InfluxDB é um banco de dados de série temporal de código aberto desenvolvido pela empresa<br>
InfluxData. Ele é usado para armazenamento e recuperação de dados de séries temporais em<br>
áreas como monitoramento de operações, métricas de aplicativos, dados de sensores da Internet<br>
das Coisas e análises em tempo real.

Telegraf - é um agente de coleta de métricas de código aberto para coleta e envio de dados<br>
e eventos de bancos de dados, sistemas e sensores IoT. Ele suporta vários plugins de saída,<br>
como InfluxDB, Graphite, Kafka, etc., para os quais pode enviar os dados coletados.

[![InfluxDB](http://img.youtube.com/vi//0.jpg)]( "InfluxDB")

Link da vídeo aula: 

#01_ Instalando as Dependências do InfluxDB2 e do Telegraf<br>

	#atualizando as lista do apt
	sudo apt update

	#instalando as dependências do InfluxDB2 e do Telegraf
	sudo apt install apt-transport-https software-properties-common git vim wget curl gnupg2

#02_ Instalando a Chave GPG do InfluxDB2 e do Telegraf no Ubuntu Server<br>

	#baixando a Chave GPG do InfluxDB2 e do Telegraf
	#opção do comando wget: -q (quiet)
	wget -q https://repos.influxdata.com/influxdata-archive_compat.key
	
	#convertendo a chave GPG do InfluxDB2 e do Telegraf
	#opção do comando sha256sum: -c (check)
	#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
	#opção do redirecionador > (maior): Redireciona a saída padrão (STDOUT)
	echo '393e8779c89ac8d958f81f942f9ad7fb82a25e133faddaf92e15b16e6ac9ce4c influxdata-archive_compat.key' | sha256sum -c && cat influxdata-archive_compat.key | gpg --dearmor | sudo tee /usr/share/keyrings/influxdb.gpg > /dev/null

	#adicionando o Repositório do InfluxDB2 e do Telegraf
	#opção do comando tee: -a (append)
	#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
	sudo echo "deb [signed-by=/usr/share/keyrings/influxdb.gpg] https://repos.influxdata.com/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/influxdb.list > /dev/null

#03_ Instalando o InfluxDB2 e Telegraf no Ubuntu Server<br>

	#atualizando as listas do Apt com o novo repositório
	sudo apt update

	#instalando o InfluxDB2 e Telegraf
	#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
	sudo apt install --install-recommends influxdb2 telegraf

#04_ Habilitando o Serviço do InfluxDB2<br>

	#habilitando o serviço do InfluxDB2
	sudo systemctl daemon-reload
	sudo systemctl enable influxdb
	sudo systemctl restart influxdb

#05_ Verificando o Serviço e Versão do InfluxDB2<br>

	#verificando o serviço do InfluxDB2
	sudo systemctl status influxdb
	sudo systemctl restart influxdb
	sudo systemctl stop influxdb
	sudo systemctl start influxdb

	#analisando os Log's e mensagens de erro do Servidor do InfluxDB2
	#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
	sudo journalctl -t influxd-systemd-start.sh
	sudo journalctl -xeu influxdb

	#verificando a versão do InfluxDB2 e do InfluxDB2-Client
	#opção do comando influxd: version (version)
	#opção do comando influx: version (version)
	sudo influxd version
	sudo influx version

#06_ Verificando a Porta de Conexão do InfluxDB2<br>

	#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
	#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
	#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
	#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'8086' -sTCP:LISTEN

#07_ Adicionado o Usuário Local no Grupo Padrão do InfluxDB2 e do Telegraf<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G influxdb $USER
	sudo usermod -a -G telegraf $USER
	newgrp influxdb
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#08_ Localização dos diretórios principais do InfluxDB2 e do Telegraf<br>

	/etc/influxdb                <-- Diretório das configurações do InfluxDB2
	/var/lib/influxdb/           <-- Diretório das bibliotecas do InfluxDB2
	/etc/telegraf/*              <-- Diretório das configurações do Telegraf
	/etc/telegraf/telegraf.conf  <-- Arquivo de configuração do Telegraf

#09_ Configurando o InfluxDB2 via Navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8086

	Welcome to InfluxDB
		<GET STARTED>
			Username: vaamonde
			Password: pti@2018
			Confirm Password: pti@2018
			Initial Organization Name: boraparapratica
			Initial Bucket Name: pti
		<CONTINUE>
	
#10_ Criando o Token de Integração do Telegraf com o InfluxDB<br>

	Load Data
		API Tokens
			<GENERATE API TOKEN>
				All Access API Token
					Description: telegraf
			<SAVE>

	#OBSERVAÇÃO IMPORTANTE: COPIAR O TOKEN GERADO PARA ADICIONAR NO ARQUIVO DE CONFIGURAÇÃO
	#DO TELEGRAF, ELE TAMBÉM SERÁ UTILIZADO NA INTEGRAÇÃO COM O GRAFANA: <COPY TO CLIPBOARD>

#11_ Editando o arquivo de configuração do Telegraf<br>

	#editando o arquivo de configuração do Telegraf
	sudo vim /etc/telegraf/telegraf.conf
	INSERT

		#descomentar o bloco de configuração: [[outputs.influxdb_v2]] na linha: 344
		[[outputs.influxdb_v2]]

		#descomentar e alterar a variável: urls na linha: 350
		urls = ["http://172.16.1.20:8086"]

		#descomentar e colar o Token na variável: token na linha: 353
		token = "COLAR_SEU_TOKEN"

		#descomentar e alterar o variável: organization na linha: 356
		organization = "boraparapratica"

		#descomentar e alterar a variável: bucket na linha: 359
		bucket = "pti"

		#OBSERVAÇÃO IMPORTANTE: HABILITANDO OS INPUT PLUGINS DE MONITORAMENTO DO TELEGRAF
		
		#configurações do Input Plugins a partir da linha: 4355
		#métricas de Hardware da linha: 4360 até a linha: 4446
	
	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#12_ Habilitando o Serviço do Telegraf<br>

	#habilitando o serviço do Telegraf
	sudo systemctl daemon-reload
	sudo systemctl enable telegraf
	sudo systemctl restart telegraf

#13_ Verificando o Serviço e Versão do Telegraf<br>

	#verificando o serviço do Telegraf
	sudo systemctl status telegraf
	sudo systemctl restart telegraf
	sudo systemctl stop telegraf
	sudo systemctl start telegraf

	#analisando os Log's e mensagens de erro do Servidor do Telegraf
	#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
	sudo journalctl -t telegraf
	sudo journalctl -xeu telegraf

	#verificando a versão do Telegraf
	#opção do comando grafana-server: --version (version)
	sudo telegraf --version

#14_ Criando um Data Explorer do Telegraf no InfluxDB2<br>

	Data Explorer
		From: pti
		Filter: _measurement (medição): CPU
		Filter: _field (campo): usage_system
		Filter: cpu: cpu-total
		Filter: host: wsvaamonde.pti.intra
	<SUBMIT>

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO INFLUXDB SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do InfluxDB realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/14-influxdb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioinfluxdb #desafiotelegraf