#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 11/03/2024<br>
#Versão: 0.03<br>

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

#01_ Criando o Grupo e o Usuário de Sistema do Prometheus<br>

	#opção do comando: &>> (redirecionar de saída padrão)
	#opção do comando useradd: -s (shell), -g (group) 
	sudo groupadd --system prometheus
	sudo useradd -s /sbin/nologin --no-create-home --system -g prometheus prometheus

#02_ Criando os diretórios do Prometheus<br>

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

#05_ Atualizando os arquivos de configuração Prometheus<br>

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

#08_ Editando o arquivo de configuração do Prometheus<br>

	#OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Prometheus e baseado no formato 
	#de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado pela 
	#linguagem de programação Python, muito cuidado com o uso de espaços e tabulação e 
	#principalmente sua indentação.

	#arquivo de configuração padrão do Prometheus
	sudo vim /etc/prometheus/prometheus.yml
	INSERT

		#alterar os valores das viráveis a partir da linha: 37
		scrape_configs:
 		  - job_name: "wsvaamonde"
 		    static_configs:
		      - targets: ["172.16.1.20:9091"]

	#salvar e sair do arquivo
	ESC SHIFT : x <Enter>

#09 Habilitando o Serviço do Prometheus no Ubuntu Server<br>

	#habilitando o serviço do Prometheus
	sudo systemctl daemon-reload
	sudo systemctl enable prometheus
	sudo systemctl start prometheus

#10_ Verificando o Serviço e Versão do Prometheus<br>

	#verificando o serviço do Prometheus
	sudo systemctl status prometheus
	sudo systemctl restart prometheus
	sudo systemctl stop prometheus
	sudo systemctl start prometheus

	#verificando a versão do Prometheus
	sudo prometheus --version

#11_ Verificando a Porta de Conexão do Prometheus<br>

	#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
	sudo lsof -nP -iTCP:'9091' -sTCP:LISTEN

#12_ Adicionado o Usuário Local no Grupo Padrão do Prometheus<br>

	#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
	sudo usermod -a -G prometheus $USER
	newgrp prometheus
	id
	
	#recomendado reinicializar a máquina para aplicar as permissões
	sudo reboot

#13_ Localização dos diretórios principais do Prometheus<br>

	/etc/prometheus/*      <-- Diretório de configuração do Prometheus
	/var/lib/prometheus/*  <-- Diretório de armazenamento dos binários e dados do Prometheus

#14_ Configurando o Grafana Server via Navegador<br>

	firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091


#15_ DESAFIO-01: 


=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM 
A SEGUINTE FRASE: Desafio do Prometheus realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTRAGRAM)
MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver 
#ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiografana