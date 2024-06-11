#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 20/04/2024<br>
#Data de atualização: 29/05/2024<br>
#Versão: 0.08<br>

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
#14_ Criando um Data Explorer do Telegraf no InfluxDB2<br>
#15_ Instalando o Telegraf no no Linux Mint e no Microsoft Windows<br>
#16_ Integrando o InfluxDB2 no Grafana<br>
#17_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico

Site Oficial do InfluxDB: https://www.influxdata.com/<br>

InfluxDB é um banco de dados de série temporal de código aberto desenvolvido pela empresa<br>
InfluxData. Ele é usado para armazenamento e recuperação de dados de séries temporais em<br>
áreas como monitoramento de operações, métricas de aplicativos, dados de sensores da Internet<br>
das Coisas e análises em tempo real.

Telegraf - é um agente de coleta de métricas de código aberto para coleta e envio de dados<br>
e eventos de bancos de dados, sistemas e sensores IoT. Ele suporta vários plugins de saída,<br>
como InfluxDB, Graphite, Kafka, etc., para os quais pode enviar os dados coletados.

[![InfluxDB2](http://img.youtube.com/vi/yBmRjTRz2DU/0.jpg)](https://www.youtube.com/watch?v=yBmRjTRz2DU "InfluxDB2")

Link da vídeo aula: https://www.youtube.com/watch?v=yBmRjTRz2DU

#01_ Instalando as Dependências do InfluxDB2 e do Telegraf<br>

```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do InfluxDB2 e do Telegraf
sudo apt install apt-transport-https software-properties-common git vim wget curl gnupg2
```

#02_ Instalando a Chave GPG do InfluxDB2 e do Telegraf no Ubuntu Server<br>

```bash
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
```

#03_ Instalando o InfluxDB2 e Telegraf no Ubuntu Server<br>

```bash
#atualizando as listas do Apt com o novo repositório
sudo apt update

#instalando o InfluxDB2 e Telegraf
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends influxdb2 telegraf
```

#04_ Habilitando o Serviço do InfluxDB2<br>

```bash
#habilitando o serviço do InfluxDB2
sudo systemctl daemon-reload
sudo systemctl enable influxdb
sudo systemctl restart influxdb
```

#05_ Verificando o Serviço e Versão do InfluxDB2<br>

```bash
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
```

#06_ Verificando a Porta de Conexão do InfluxDB2<br>

```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8086' -sTCP:LISTEN
```

#07_ Adicionado o Usuário Local no Grupo Padrão do InfluxDB2 e do Telegraf<br>

```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G influxdb $USER
sudo usermod -a -G telegraf $USER
newgrp influxdb
id

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

#08_ Localização dos diretórios principais do InfluxDB2 e do Telegraf<br>

```bash
/etc/influxdb/*              <-- Diretório das configurações do InfluxDB2
/etc/iffluxdb/config.toml    <-- Arquivo de configuração do InfluxDB2
/var/lib/influxdb/*          <-- Diretório das bibliotecas e Banco de Dados do InfluxDB2
/etc/telegraf/*              <-- Diretório das configurações do Telegraf
/etc/telegraf/telegraf.conf  <-- Arquivo de configuração do Telegraf
/var/log/influxdb/*          <-- Diretório de Log do InfluxDB2
/var/log/telegraf/*          <-- Diretório de Log do Telegraf
```

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
	
	You are ready to go!
		API Token now
			<COPY TO CLIPBOARD>
			#OBSERVAÇÃO: Copiar a salvar o primeiro Token criado pelo InfluxDB2
		<CONFIGURE LATER>

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

```bash
#editando o arquivo de configuração do Telegraf
sudo vim /etc/telegraf/telegraf.conf
INSERT

	#OBSERVAÇÃO IMPORTANTE: O INFLUXDB2 INTEGRADO COM O PLUGIN DO TELEGRAF TEM MUITA
	#OPÇÃO DE CONFIGURAÇÃO, O BLOCO DO PLUGINS COMEÇA A PARTIR DA LINHA: 339.

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
	#EXISTE MUITA OPÇÃO DE CONFIGURAÇÃO DE HARDWARE E SOFTWARE A PARTIR DA LINHA 4374
	
	#configurações do Input Plugins a partir da linha: 4374
	#métricas de Hardware da linha: 4379 até a linha: 4465

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

#12_ Habilitando o Serviço do Telegraf<br>

```bash
#habilitando o serviço do Telegraf
sudo systemctl daemon-reload
sudo systemctl enable telegraf
sudo systemctl restart telegraf
```

#13_ Verificando o Serviço e Versão do Telegraf<br>

```bash
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
```

#14_ Criando um Data Explorer do Telegraf no InfluxDB2<br>

	Data Explorer
		Graph: Gauge
		Date Time: Local
		Query 1:
			From: pti
			Filter: CPU: cpu-total
			Filter: _field (campo): usage_system
			Filter: _measurement: cpu
			Filter: host: wsvaamonde.pti.intra
	<SUBMIT>

	#salvando o seu primeiro Dashboard
	<SAVE AS>
		Save As
			Dashboard Cell
				Target Dashboard(s): Name this Dashboard
				New Dashboard Name: Dashboard Telegraf
				Cell Name: Uso CPU System
		<SAVE AS DASHBOARD CELL>
	
	#atualizando o Dashboard
	<SET AUTO REFRESH>
		Configure Auto Refresh
			Refresh Dashboards Until
				<CUSTOM>
			Refresh Interval
				How often your dashboards will refresh: 10S
			Inactivity Timeout
				When your dashboards refresh will timeout: 1 Hours
	<CONFIRM> 

#15_ Instalando o Telegraf no Linux Mint e no Microsoft Windows<br>

	#OBSERVAÇÃO IMPORTANTE: INSTALAÇÃO NO MICROSOFT WINDOWS (NÃO COMENTADO NO VÍDEO)
	#Link de referência do download: https://github.com/influxdata/telegraf/releases

	#link para download direto do Telegraf (link atualizado em: 29/05/2024)
	https://dl.influxdata.com/telegraf/releases/telegraf-1.30.3_windows_amd64.zip

	#descompactar o arquivo Zipado do Telegraf (NÃO COMENTADO NO VÍDEO)
	Pasta de Download
		Botão direito do mouse sobre o arquivo: telegraf*.zip
		Selecionar: Extrair Tudo
			DEIXAR O PADRÃO: <EXTRAIR>
	
	#acessar o diretório criado e renomear a pasta do Telegraf (NÃO COMENTADO NO VÍDEO)
	Pasta de Download
		telegraf-*_windows_amd64
			Botão direito do mouse em cimado do diretório: telegraf-*
			Selecionar a opção: Renomear (OU PRESSIONAR F2)
			Renomear para: telegraf <ENTER>
	
	#copiar o diretório Telegraf para o diretório de Arquivos de Programas (NÃO COMENTADO NO VÍDEO)
	Pasta de Download
		telegraf-*_windows_amd64
			Botão direito do mouse em cimado do diretório: telegraf
			Selecionar a opção: Copiar (OU CTRL + C)

	C:\Arquivos de Programas
		Botão direito do mouse e selecionar: Colar (OU CTRL + V)
			<CONTINUAR>
	
	#OBSERVAÇÃO IMPORTANTE: fazer a configuração e instalação do Telegraf utilizando o 
	#Powershell em modo Administrador. (NÃO COMENTADO NO VÍDEO)

	Menu
		Powershell 
			Clicar com o botão direito do mouse e selecionar: Executar como Administrador
			<SIM>

	#acessando o diretório do Telegraf (NÃO COMENTADO NO VÍDEO)
	cd 'C:\Program Files\telegraf\'

	#editando o arquivo de configuração do Telegraf (NÃO COMENTADO NO VÍDEO)
	notepad.exe .\telegraf.conf

		#OBSERVAÇÃO IMPORTANTE: O INFLUXDB2 INTEGRADO COM O PLUGIN DO TELEGRAF TEM MUITA
		#OPÇÃO DE CONFIGURAÇÃO, O BLOCO DO PLUGINS COMEÇA A PARTIR DA LINHA: 339.

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
		#EXISTE MUITA OPÇÃO DE CONFIGURAÇÃO DE HARDWARE E SOFTWARE A PARTIR DA LINHA 4374
		
		#configurações do Input Plugins a partir da linha: 4374
		#métricas de Hardware da linha: 4379 até a linha: 4465	

	#salvar e sair do arquivo
	Arquivo
		Salvar (CTRL+S)
		Sair

	#testando as configurações do Telegraf (NÃO COMENTADO NO VÍDEO)
	.\telegraf.exe --test

	#instalando o serviço do Telegraf (NÃO COMENTADO NO VÍDEO)
	.\telegraf --service install --config-directory 'C:\Program Files\telegraf'

	#iniciando o serviço do Telegraf (NÃO COMENTADO NO VÍDEO)
	Start-Service telegraf

	#verificando o status de serviço do Telegraf (NÃO COMENTADO NO VÍDEO)
	Get-Service telegraf

	#alterando a inicializando do serviço do Telegraf (NÃO COMENTADO NO VÍDEO)
	Set-Service telegraf -StartupType Automatic

	#verificando a versão do Telegraf
	.\telegraf version

```bash
#OBSERVAÇÃO IMPORTANTE: INSTALAÇÃO NO GNU/LINUX MINT (NÃO COMENTADO NO VÍDEO)
#Link de referência do download: https://github.com/influxdata/telegraf/releases

#atualizando as lista do apt (NÃO COMENTADO NO VÍDEO)
sudo apt update

#instalando as dependências do Telegraf (NÃO COMENTADO NO VÍDEO)
sudo apt install apt-transport-https software-properties-common git vim wget curl gnupg2

#baixando a Chave GPG do Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -q (quiet)
wget -q https://repos.influxdata.com/influxdata-archive_compat.key

#convertendo a chave GPG do Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do comando sha256sum: -c (check)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador > (maior): Redireciona a saída padrão (STDOUT)
echo '393e8779c89ac8d958f81f942f9ad7fb82a25e133faddaf92e15b16e6ac9ce4c influxdata-archive_compat.key' | sha256sum -c && cat influxdata-archive_compat.key | gpg --dearmor | sudo tee /usr/share/keyrings/influxdb.gpg > /dev/null

#adicionando o Repositório do Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do comando tee: -a (append)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo echo "deb [signed-by=/usr/share/keyrings/influxdb.gpg] https://repos.influxdata.com/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/influxdb.list > /dev/null

#atualizando as listas do Apt com o novo repositório (NÃO COMENTADO NO VÍDEO)
sudo apt update

#instalando o Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends telegraf

#adicionado o usuário local no grupo do Telegraf (NÃO COMENTADO NO VÍDEO)
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G telegraf $USER

#editando o arquivo de configuração do Telegraf (NÃO COMENTADO NO VÍDEO)
sudo vim /etc/telegraf/telegraf.conf
INSERT

	#OBSERVAÇÃO IMPORTANTE: O INFLUXDB2 INTEGRADO COM O PLUGIN DO TELEGRAF TEM MUITA
	#OPÇÃO DE CONFIGURAÇÃO, O BLOCO DO PLUGINS COMEÇA A PARTIR DA LINHA: 339.

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
	#EXISTE MUITA OPÇÃO DE CONFIGURAÇÃO DE HARDWARE E SOFTWARE A PARTIR DA LINHA 4374
	
	#configurações do Input Plugins a partir da linha: 4374
	#métricas de Hardware da linha: 4379 até a linha: 4465

#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#habilitando o serviço do Telegraf (NÃO COMENTADO NO VÍDEO)
sudo systemctl daemon-reload
sudo systemctl enable telegraf
sudo systemctl restart telegraf

#analisando os Log's e mensagens de erro do Servidor do Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t telegraf
sudo journalctl -xeu telegraf

#verificando a versão do Telegraf (NÃO COMENTADO NO VÍDEO)
#opção do telegraf: --version (version)
sudo telegraf --version
```

#16_ Integrando o InfluxDB2 no Grafana<br>

	#acessando o Grafana Server (NÃO COMENTADO NO VÍDEO)
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

	#criando um Data Sources do InfluxDB2 (NÃO COMENTADO NO VÍDEO)
	Open Menu
		Connections
			Data Sources
				<Add data source>
					Filter by name or type: InfluxDB
						Name: InfluxDB2-wsvaamonde
						Query language: InfluxQL
						HTTP
							URL: http://172.16.1.20:8086
						Auth
							Basic auth: DISABLE
						InfluxDB Details
							Organization: boraparapratica
							Token: COLAR_SEU_TOKEN
							Default Bucket: pti
				<Save & Test>

	#acessando o InfluxDB2 para gerar o Filtro de integração com o Grafana (NÃO COMENTADO NO VÍDEO)
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8086

	Data Explorer
		Graph: Gauge
		Date Time: Local
		Query 1:
			From: pti
			Filter: CPU: cpu-total
			Filter: _field (campo): usage_system e usage_user
			Filter: _measurement (medição): cpu
			Filter: host (computador): wsvaamonde.pti.intra
	<SUBMIT>

	#copiando o script do Filtro do InfluxDB2
	<SCRIPT EDITOR>
		Query1: SELECIONAR TODO O CONTEÚDO E PRESSIONAR: CTRL+C

```sql
from(bucket: "pti")
  |> range(start: v.timeRangeStart, stop: v.timeRangeStop)
  |> filter(fn: (r) => r["cpu"] == "cpu-total")
  |> filter(fn: (r) => r["_field"] == "usage_system" or r["_field"] == "usage_user")
  |> filter(fn: (r) => r["_measurement"] == "cpu")
  |> filter(fn: (r) => r["host"] == "wsvaamonde.pti.intra")
  |> aggregateWindow(every: v.windowPeriod, fn: mean, createEmpty: false)
  |> yield(name: "mean")
```
	#criando o Dashboard do InfluxDB2 (NÃO COMENTADO NO VÍDEO)
	Open Menu
		Dashboards
			<Create Dashboard>
			<+ Add visualization>
				Select data source
					Data source: InfluxDB2-wsvaamonde
						QUERY: COLOCAR O SCRIPT GERADO PELO INFLUXDB2
					<Query inspector>
				<Change Visualization>
					Suggestions: Gauge
						Panel options
							Title: Uso Total da CPU (System e User)
							Description: Utilização Total da CPU do Sistema e Usuário
						Standard options
							Unit: Percent (0-100)
							Min: 0
							Max: 100
			<Apply>

#17_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico<br>

```bash
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
```

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO INFLUXDB SE VOCÊ CONSEGUIU IMPLEMENTAR COM 
A SEGUINTE FRASE: Implementação do InfluxDB realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/14-influxdb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioinfluxdb #desafiotelegraf