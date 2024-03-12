#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 12/03/2024<br>
#Versão: 0.04<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Prometheus realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioprometheus

Conteúdo estudado nesse desafio:<br>


Site Oficial do Prometheus: <br>

s.

[![Prometheus](http://img.youtube.com/vi//0.jpg)]( "Prometheus")

Link da vídeo aula: 

#01_ Criando os Grupos e o Usuários de Sistema do Prometheus e do Node Exporter<br>

	#criação do grupo usuário de serviço do Prometheus
	#opção do comando: &>> (redirecionar de saída padrão)
	#opção do comando useradd: -s (shell), -g (group) 
	sudo groupadd --system prometheus
	sudo useradd -s /sbin/nologin --no-create-home --system -g prometheus prometheus

	#criação do grupo e usuário de serviço do Node Exporter
	#opção do comando: &>> (redirecionar de saída padrão)
	#opção do comando useradd: -s (shell), -g (group)
	#opções do comando usermod: -a (append), -G (groups)
	sudo groupadd --system node_exporter
	sudo useradd -s /sbin/nologin --no-create-home --system -g node_exporter node_exporter
	sudo usermod -a -G prometheus node_exporter

#02_ Criando os diretórios do Prometheus<br>

	#criando o diretório de configuração e bibliotecas do Prometheus
	#opção do comando: &>> (redirecionar a saída padrão)
	#opção do comando mkdir: =p (parents), -v (verbose)
	sudo mkdir -pv /etc/prometheus /var/lib/prometheus

#03_ Baixando o Prometheus do Projeto do Github<br>

	#OBSERVAÇÃO IMPORTANTE: o executável e os arquivos de configuração do Prometheus sofre
	#alteração o tempo todo, sempre acessar o projeto do Github para verificar a última
	#versão do software no Link: https://github.com/prometheus/prometheus/releases/

	#download do Prometheus do Github (Link atualizado no dia 09/03/2024)
	wget https://github.com/prometheus/prometheus/releases/download/v2.50.1/prometheus-2.50.1.linux-amd64.tar.gz

	#listando o download do arquivo do Prometheus
	#opção do comando ls: -l (long listing), -h (human-readable)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	ls -lh prometheus*

#04_ Descompactando o arquivo do Prometheus<br>

	#descompactando o arquivo do Prometheus
	#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	tar -zxvf prometheus*.tar.gz 

#05_ Atualizando os arquivos de configuração do Prometheus<br>

	#atualizando os arquivos de configurações do Prometheus
	#opção do comando cp: -R (recursive), -v (verbose)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	#opção do bloco de agrupamento {} (chaves): Agrupa comandos em um bloco
	sudo cp -Rv prometheus*/{prometheus,promtool} /usr/local/bin/
	sudo cp -Rv prometheus*/{consoles/,console_libraries/} /etc/prometheus/

#06_ Baixando e atualizando os arquivos customizados do Prometheus<br>

	#download do arquivo de serviço do Prometheus
	#opção do comando wget: -v (verbose), -O (output file)
	sudo wget -v -O /etc/systemd/system/prometheus.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.service

	#download do arquivo de configuração padrão do Prometheus
	#opção do comando wget: -v (verbose), -O (output file)
	sudo wget -v -O /etc/prometheus/prometheus.yml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.yml

#07_ Alterando as permissões de arquivos e diretórios do Prometheus<br>

	#alterando o dono e grupo dos arquivos e diretórios do Prometheus
	#opção do comando chown: -R (recursive) -v (verbose), prometheus (user), :prometheus (group)
	sudo chown -Rv prometheus:prometheus /etc/prometheus/ /var/lib/prometheus/

	#alterando as permissões de arquivos e diretórios do Prometheus
	#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
	sudo chmod -Rv 775 /etc/prometheus/ /var/lib/prometheus/

#08_ Instalando o Coletor de Métricas Node Exporter<br>

	#OBSERVAÇÃO IMPORTANTE: o executável do Node Exporter do Prometheus sofre alteração
	#o tempo todo, sempre acessar o projeto do Github para verificar a última versão do 
	#software no Link: https://github.com/prometheus/node_exporter/releases/

	#download do Node Exporter do Github (Link atualizado no dia 12/03/2024)
	wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

	#listando o download do arquivo do Node Exporter
	#opção do comando ls: -l (long listing), -h (human-readable)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	ls -lh node_exporter*

#09_ Descompactando o arquivo do Node Exporters<br>

	#descompactando o arquivo do Node Exporter
	#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	tar -zxvf node_exporter*.tar.gz 

#10_ Atualizando os arquivos de configuração do Node Exporter<br>

	#atualizando os arquivos de configurações do Node Exporter
	#opção do comando cp: -R (recursive), -v (verbose)
	#opção do caractere curinga * (asterisco): Qualquer coisa
	sudo cp -Rv node_exporter*/node_exporter /usr/local/bin/

#11_ Baixando e atualizando os arquivos de Configuração e Serviço do Node Exporter<br>

	#download do arquivo de serviço do Node Exporter
	#opção do comando wget: -v (verbose), -O (output file)
	sudo wget -v -O /etc/systemd/system/node_exporter.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.service

	#download do arquivo de serviço do Node Exporter
	#opção do comando wget: -v (verbose), -O (output file)
	sudo wget -v -O /etc/prometheus/node_exporter.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.conf

#12_ Alterando as permissões do executável do Node Exporter<br>

	#alterando o dono e grupo do arquivo do Node Exporter
	#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
	sudo chown -Rv node_exporter:node_exporter /usr/local/bin/node_exporter

	#alterando o dono e grupo do arquivo do Node Exporter
	#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
	sudo chown -Rv node_exporter:node_exporter /etc/prometheus/node_exporter.conf

	#alterando as permissões do arquivo do Node Exporter
	#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
	sudo chmod -Rv 775 /usr/local/bin/node_exporter

#13_ Habilitando o Serviço do Node Exporter no Ubuntu Server<br>

	#habilitando o serviço do Node Exporter
	sudo systemctl daemon-reload
	sudo systemctl enable node_exporter
	sudo systemctl start node_exporter

#14_ Verificando o Serviço e Versão do Node Exporter<br>

	#verificando o serviço do Node Exporter
	sudo systemctl status node_exporter
	sudo systemctl restart node_exporter
	sudo systemctl stop node_exporter
	sudo systemctl start node_exporter

	#verificando a versão do Node Exporter
	sudo node_exporter --version

#15_ Verificando a Porta de Conexão do Node Exporter<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'9100' -sTCP:LISTEN

#16_ Editando o arquivo de configuração do Prometheus<br>

	#OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Prometheus e baseado no formato 
	#de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado pela 
	#linguagem de programação Python, muito cuidado com o uso de espaços e tabulação e 
	#principalmente sua indentação.

	#arquivo de configuração padrão do Prometheus
	sudo vim /etc/prometheus/prometheus.yml
	INSERT

		#alterar os valores das viráveis a partir da linha: 37
		scrape_configs:
 		  - job_name: "prometheus"
 		    static_configs:
		      - targets: ["172.16.1.20:9091"]

		#alterar os valores das variáveis a partir da linha: 44
		scrape_configs:
		  - job_name: "wsvaamonde"
		    static_configs:
 		     - targets: ["172.16.1.20:9100"]

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#17 Habilitando o Serviço do Prometheus no Ubuntu Server<br>

	#habilitando o serviço do Prometheus
	sudo systemctl daemon-reload
	sudo systemctl enable prometheus
	sudo systemctl start prometheus

#18_ Verificando o Serviço e Versão do Prometheus<br>

	#verificando o serviço do Prometheus
	sudo systemctl status prometheus
	sudo systemctl restart prometheus
	sudo systemctl stop prometheus
	sudo systemctl start prometheus

	#verificando a versão do Prometheus
	sudo prometheus --version

#19_ Verificando a Porta de Conexão do Prometheus<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'9091' -sTCP:LISTEN

#20_ Adicionado o Usuário Local no Grupo Padrão do Prometheus e Node Exporter<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G prometheus $USER
	sudo usermod -a -G node_exporter $USER
	newgrp prometheus node_exporter
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#21_ Localização dos diretórios principais do Prometheus<br>

	/etc/prometheus/*      <-- Diretório de configuração do Prometheus
	/var/lib/prometheus/*  <-- Diretório de armazenamento dos binários e dados do Prometheus

#22_ Configurando o Prometheus e o Node Exporter via Navegador<br>

	#acessando o Prometheus
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091

	Status
		Targets
			Prometheus
				Endpoint: http://172.16.1.20:9091/metrics
			wsvaamonde
				Endpoint: http://172.16.1.20:9100/metrics

	#verificando a versões do Sistema Operacional
	a) Expression: node_os_info{job="wsvaamonde"} <Execute>

	#verificando informações de Hard Disk
	b) Expression: node_disk_info{job="wsvaamonde"} <Execute>

	#verificando informações da BIOS e da Placa Mãe
	c) Expression: node_dmi_info{job="wsvaamonde"} <Execute>

	#verificando a quantidade de Memória Ativa em Bytes
	d) Expression: node_memory_Active_bytes{job="wsvaamonde"} <Execute> - <Graph>

	#verificando a quantidade total de processos da CPU
	e) Expression: node_cpu_seconds_total{job="wsvaamonde"} <Execute> - <Graph>

	#verificando o incremento do Total de CPU por segundos em 1m
	f) Expression: rate(node_cpu_seconds_total{job="wsvaamonde"}[1m]) <Execute> - <Graph>
	g) Expression: rate(node_cpu_seconds_total{cpu="0",job="wsvaamonde"}[1m]) <Execute> - <Graph>

	#verificando o incremente do Total de Pacotes Enviados e Recebidos da Interface de Rede
	h) rate(node_network_receive_bytes_total{device="enp0s3", job="wsvaamonde"}[10m])*8/1024/1024
	i) rate(node_network_transmit_bytes_total{device="enp0s3", job="wsvaamonde"}[10m])*8/1024/1024

	#acessando o Node Exporter do Ubuntu Server
	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9100

#23_ Instalando o Node Exporter no Linux Mint e no Microsoft Windows<br>

#24_ DESAFIO-01: 


=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Prometheus realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana