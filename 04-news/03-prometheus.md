#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 12/08/2024<br>
#Versão: 0.16<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: Implementação do Prometheus realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioprometheus #desafionodeexporter

Conteúdo estudado nessa implementação:<br>
#01_ Criando os Grupos e o Usuários do Prometheus e do Node Exporter<br>
#02_ Criando os diretórios do Prometheus e do Node Exporter<br>
#03_ Baixando o Prometheus do Projeto do Github<br>
#04_ Descompactando o arquivo do Prometheus<br>
#05_ Atualizando os arquivos de configuração do Prometheus<br>
#06_ Baixando e atualizando os arquivos customizados do Prometheus<br>
#07_ Alterando as permissões de arquivos e diretórios do Prometheus<br>
#08_ Instalando o Coletor de Métricas Node Exporter<br>
#09_ Descompactando o arquivo do Node Exporter<br>
#10_ Atualizando os arquivos de configuração do Node Exporter<br>
#11_ Baixando e atualizando os arquivos customizados do Node Exporter<br>
#12_ Alterando as permissões do executável do Node Exporter<br>
#13_ Habilitando o Serviço do Node Exporter no Ubuntu Server<br>
#14_ Verificando o Serviço e Versão do Node Exporter<br>
#15_ Verificando a Porta de Conexão do Node Exporter<br>
#16_ Editando o arquivo de configuração do Prometheus<br>
#17_ Habilitando o Serviço do Prometheus no Ubuntu Server<br>
#18_ Verificando o Serviço e Versão do Prometheus<br>
#19_ Verificando a Porta de Conexão do Prometheus<br>
#20_ Adicionado o Usuário Local nos Grupos do Prometheus e Node Exporter<br>
#21_ Localização dos diretórios principais do Prometheus<br>
#22_ Configurando o Prometheus e o Node Exporter via Navegador<br>
#23_ Instalando o Node Exporter no Linux Mint e no Microsoft Windows<br>
#24_ Habilitando o monitoramento do Linux Mint e Windows no Prometheus<br>
#25_ Integrando o Prometheus e Node Exporter no Grafana<br>
#26_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico.

Site Oficial do Prometheus: https://prometheus.io/<br>

Prometheus é um aplicativo de software livre usado para monitoramento de eventos e alertas. Ele registra métricas em tempo real em um banco de dados de séries temporais (permitindo alta dimensionalidade) construído usando um modelo HTTP pull, com consultas flexíveis e alertas em tempo real. É um projeto código aberto originalmente criado na SoundCloud em 2012 e agora é mantido independentemente de qualquer empresa. 

[![Prometheus](http://img.youtube.com/vi/0h6le4K6uEQ/0.jpg)](https://www.youtube.com/watch?v=0h6le4K6uEQ "Prometheus")

Link da vídeo aula: https://www.youtube.com/watch?v=0h6le4K6uEQ

#01_ Criando os Grupos e o Usuários do Prometheus e do Node Exporter<br>
```bash
#criação do grupo e usuário de serviço do Prometheus
#opção do comando useradd: -s (shell), -g (group) 
sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --no-create-home --system -g prometheus prometheus

#criação do grupo e usuário de serviço do Node Exporter
#opção do comando useradd: -s (shell), --no-create-home (Do no create the user's home directory), --system 
#(Create a system account). -g (group) 
#opções do comando usermod: -a (append), -G (groups)
sudo groupadd --system node_exporter
sudo useradd -s /sbin/nologin --no-create-home --system -g node_exporter node_exporter
sudo usermod -a -G prometheus node_exporter
```

#02_ Criando os diretórios do Prometheus e Node Exporter<br>
```bash
#criando o diretório de configuração e bibliotecas do Prometheus
#opção do comando mkdir: =p (parents), -v (verbose)
sudo mkdir -pv /etc/prometheus /var/lib/prometheus
```

#03_ Baixando o Prometheus do Projeto do Github<br>
```bash
#OBSERVAÇÃO IMPORTANTE: o executável e os arquivos de configuração do Prometheus sofre
#alteração o tempo todo, sempre acessar o projeto do Github para verificar a última
#versão do software no Link: https://github.com/prometheus/prometheus/releases/

#download do Prometheus do Github (Link atualizado no dia 12/08/2024)
wget https://github.com/prometheus/prometheus/releases/download/v2.54.0/prometheus-2.54.0.linux-amd64.tar.gz

#listando o download do arquivo do Prometheus
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh prometheus*
```

#04_ Descompactando o arquivo do Prometheus<br>
```bash
#descompactando o arquivo do Prometheus
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf prometheus*.tar.gz 
```

#05_ Atualizando os arquivos de configuração do Prometheus<br>
```bash
#atualizando os arquivos de configurações do Prometheus
#opção do comando cp: -R (recursive), -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
#opção do bloco de agrupamento {} (chaves): Agrupa comandos em um bloco
sudo cp -Rv prometheus*/{prometheus,promtool} /usr/local/bin/
sudo cp -Rv prometheus*/{consoles/,console_libraries/} /etc/prometheus/
```

#06_ Baixando e atualizando os arquivos customizados do Prometheus<br>
```bash
#download do arquivo de serviço do Prometheus
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/prometheus.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.service

#download do arquivo de configuração padrão do Prometheus
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/prometheus.yml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.yml
```

#07_ Alterando as permissões de arquivos e diretórios do Prometheus<br>
```bash
#alterando o dono e grupo dos arquivos e diretórios do Prometheus
#opção do comando chown: -R (recursive) -v (verbose), prometheus (user), :prometheus (group)
sudo chown -Rv prometheus:prometheus /etc/prometheus/ /var/lib/prometheus/

#alterando as permissões de arquivos e diretórios do Prometheus
#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
sudo chmod -Rv 775 /etc/prometheus/ /var/lib/prometheus/
```

#08_ Instalando o Coletor de Métricas Node Exporter<br>
```bash
#OBSERVAÇÃO IMPORTANTE: o executável do Node Exporter do Prometheus sofre alteração
#o tempo todo, sempre acessar o projeto do Github para verificar a última versão do 
#software no Link: https://github.com/prometheus/node_exporter/releases/

#download do Node Exporter do Github (Link atualizado no dia 12/08/2024)
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz

#listando o download do arquivo do Node Exporter
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh node_exporter*
```

#09_ Descompactando o arquivo do Node Exporter<br>
```bash
#descompactando o arquivo do Node Exporter
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf node_exporter*.tar.gz 
```

#10_ Atualizando os arquivos de configuração do Node Exporter<br>
```bash
#atualizando os arquivos de configurações do Node Exporter
#opção do comando cp: -R (recursive), -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo cp -Rv node_exporter*/node_exporter /usr/local/bin/
```

#11_ Baixando e atualizando os arquivos customizados do Node Exporter<br>
```bash
#download do arquivo de serviço do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/node_exporter.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.service

#download do arquivo de configuração do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/node_exporter.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.conf
```

#12_ Alterando as permissões do executável do Node Exporter<br>
```bash
#alterando o dono e grupo do arquivo do Node Exporter
#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
sudo chown -Rv node_exporter:node_exporter /usr/local/bin/node_exporter

#alterando o dono e grupo do arquivo do Node Exporter
#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
sudo chown -Rv node_exporter:node_exporter /etc/prometheus/node_exporter.conf

#alterando as permissões do arquivo do Node Exporter
#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
sudo chmod -Rv 775 /usr/local/bin/node_exporter
```

#13_ Habilitando o Serviço do Node Exporter no Ubuntu Server<br>
```bash
#habilitando o serviço do Node Exporter
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
```

#14_ Verificando o Serviço e Versão do Node Exporter<br>
```bash
#verificando o serviço do Node Exporter
sudo systemctl status node_exporter
sudo systemctl restart node_exporter
sudo systemctl stop node_exporter
sudo systemctl start node_exporter

#analisando os Log's e mensagens de erro do Node Exporter
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t node_exporter
sudo journalctl -xeu node_exporter

#verificando a versão do Node Exporter
sudo node_exporter --version
```

#15_ Verificando a Porta de Conexão do Node Exporter<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9100' -sTCP:LISTEN
```

#16_ Editando o arquivo de configuração do Prometheus<br>
```bash
#OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Prometheus e baseado no formato 
#de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado pela 
#linguagem de programação Python, muito cuidado com o uso de espaços e tabulação e 
#principalmente sua indentação.

#arquivo de configuração padrão do Prometheus
sudo vim /etc/prometheus/prometheus.yml
INSERT
```
```yaml
#alterar os valores das viráveis a partir da linha: 42
scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["172.16.1.20:9091"]

#alterar os valores das variáveis a partir da linha: 51
scrape_configs:
  - job_name: "wsvaamonde"
    static_configs:
      - targets: ["172.16.1.20:9100"]
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

#17 Habilitando o Serviço do Prometheus no Ubuntu Server<br>
```bash
#habilitando o serviço do Prometheus
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
```

#18_ Verificando o Serviço e Versão do Prometheus<br>
```bash
#verificando o serviço do Prometheus
sudo systemctl status prometheus
sudo systemctl restart prometheus
sudo systemctl stop prometheus
sudo systemctl start prometheus

#analisando os Log's e mensagens de erro do Prometheus
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t prometheus
sudo journalctl -xeu prometheus

#verificando a versão do Prometheus
sudo prometheus --version
```

#19_ Verificando a Porta de Conexão do Prometheus<br>
```bash
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9091' -sTCP:LISTEN
```

#20_ Adicionado o Usuário Local nos Grupos do Prometheus e Node Exporter<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G prometheus $USER
sudo usermod -a -G node_exporter $USER
newgrp prometheus node_exporter
id

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

#21_ Localização dos diretórios principais do Prometheus<br>
```bash
/etc/prometheus/*                   <-- Diretório de configuração do Prometheus
/etc/prometheus/prometheus.yml      <-- Arquivo de configuração do Prometheus
/etc/prometheus/node_exporter.conf  <-- Arquivo de configuração do Node Exporter
/var/lib/prometheus/*               <-- Diretório de armazenamento dos binários e dados do Prometheus
```

#22_ Configurando o Prometheus e o Node Exporter via Navegador<br>
```bash
#OBSERVAÇÃO IMPORTANTE: Quando você acessa o Prometheus via Navegador e aparecer a seguinte mensagem
#de aviso em vermelho: Warning: Error fetching server time: Detected 65.21499991416931 seconds time 
#difference between your browser and the server. Prometheus relies on accurate time and time drift 
#might cause unexpected query results. Esse erro está associado a falha de sincronismo da Data e Hora
#em relação o Servidor e Cliente, para resolver essa falha é necessário acertar a Data Hora entre os
#equipamentos ou utilizar o Protocolo NTP (Network Time Protocol) para sincronizar a data/hora de
#forma correta. 

#acessando o Prometheus via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091

#verificando os alvos monitorados do Prometheus
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

#verificando a quantidade total de processos por segundos da CPU
e) Expression: node_cpu_seconds_total{job="wsvaamonde"} <Execute> - <Graph>

#verificando o incremento do Total de CPU por segundos em 1m
#rate = taxa | [1m] = intervalo
f) Expression: rate(node_cpu_seconds_total{job="wsvaamonde"}[1m]) <Execute> - <Graph>
g) Expression: rate(node_cpu_seconds_total{cpu="0",job="wsvaamonde"}[1m]) <Execute> - <Graph>

#verificando o incremente do Total de Pacotes Enviados e Recebidos da Interface de Rede
#rate = taxa | [10m] = intervalo | *8/1024/1024 = fórmula para conversão em Kbps ou Mbps
h) rate(node_network_receive_bytes_total{device="enp0s3", job="wsvaamonde"}[10m])*8/1024/1024
i) rate(node_network_transmit_bytes_total{device="enp0s3", job="wsvaamonde"}[10m])*8/1024/1024

#acessando o Node Exporter do Ubuntu Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9100
```

#23_ Instalando o Node Exporter no Linux Mint e no Microsoft Windows<br>
```bash
#OBSERVAÇÃO IMPORTANTE: INSTALAÇÃO NO MICROSOFT WINDOWS
#Link de referência do download: https://github.com/prometheus-community/windows_exporter/releases

#link para download direto do Node Exporter (link atualizado em: 12/08/2024)
https://github.com/prometheus-community/windows_exporter/releases/download/v0.27.0/windows_exporter-0.27.0-amd64.msi

#OBSERVAÇÃO IMPORTANTE: fazer a instalação do Prometheus Windows Exporter utilizando 
#o Powershell em modo Administrador.

Menu
	Powershell 
		Clicar com o botão direito do mouse e selecionar: Abrir como Administrador

#acessando o diretório de Download do Perfil do Usuário
cd c:\user\vaamonde\Download

#instalando o Node Exporter
#opção do comando msiexec: -i (install)
msiexec -i windows_exporter-0.26.1-amd64.msi ENABLED_COLLECTORS=cpu,memory,net,logical_disk,os,system,logon,thermalzone

#verificando o status de serviço do Node Exporter
Get-Service 'windows_exporter'

#verificando a porta de conexão do Node Exporter
#opção do comando netstat: -a (All connections), -n (addresses and port numbers)
netstat -an | findstr 9182

#OBSERVAÇÃO IMPORTANTE: INSTALAÇÃO NO LINUX MINT
#Link de referência do download: https://github.com/prometheus/node_exporter/releases/

#criação do grupo e usuário de serviço do Node Exporter
#opção do comando useradd: -s (shell), --no-create-home (Do no create the user's home directory), --system 
#(Create a system account). -g (group) 
#opções do comando usermod: -a (append), -G (groups)
sudo groupadd --system node_exporter
sudo useradd -s /sbin/nologin --no-create-home --system -g node_exporter node_exporter

#criando o diretório de configuração e bibliotecas do Prometheus
#opção do comando mkdir: =p (parents), -v (verbose)
sudo mkdir -pv /etc/prometheus /var/lib/prometheus

#OBSERVAÇÃO IMPORTANTE: o executável do Node Exporter do Prometheus sofre alteração
#o tempo todo, sempre acessar o projeto do Github para verificar a última versão do 
#software no Link: https://github.com/prometheus/node_exporter/releases/

#download do Node Exporter do Github (Link atualizado no dia 12/08/2024)
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz

#listando o download do arquivo do Node Exporter
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh node_exporter*

#descompactando o arquivo do Node Exporter
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf node_exporter*.tar.gz 

#atualizando os arquivos de configurações do Node Exporter
#opção do comando cp: -R (recursive), -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo cp -Rv node_exporter*/node_exporter /usr/local/bin/

#download do arquivo de serviço do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/node_exporter.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.service

#download do arquivo de configuração do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/node_exporter.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.conf

#alterando o dono e grupo do arquivo do Node Exporter
#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
sudo chown -Rv node_exporter:node_exporter /usr/local/bin/node_exporter

#alterando o dono e grupo do arquivo do Node Exporter
#opção do comando chown: -R (recursive) -v (verbose), node_exporter (user), :node_exporter (group)
sudo chown -Rv node_exporter:node_exporter /etc/prometheus/node_exporter.conf

#alterando as permissões do arquivo do Node Exporter
#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
sudo chmod -Rv 775 /usr/local/bin/node_exporter

#habilitando o serviço do Node Exporter
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter

#verificando a versão do Node Exporter
sudo node_exporter --version

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9100' -sTCP:LISTEN
```

#24_ Habilitando o monitoramento do Linux Mint e Windows no Prometheus<br>
```bash
#arquivo de configuração padrão do Prometheus
sudo vim /etc/prometheus/prometheus.yml
INSERT
```
```yaml
#alterar os valores das viráveis a partir da linha: 54
scrape_configs:
  - job_name: "linuxmint213"
    static_configs:
      - targets: ["172.16.1.100:9100"]

#alterar os valores das variáveis a partir da linha: 44
scrape_configs:
  - job_name: "windows10"
    static_configs:
      - targets: ["172.16.1.101:9182"]
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#verificando o serviço do Prometheus
sudo systemctl restart prometheus
sudo systemctl status prometheus

#acessando o Prometheus via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091

#verificando os alvos monitorados do Prometheus
Status
	Targets
```

#25_ Integrando o Prometheus no Grafana<br>
```bash
#acessando o Grafana Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

#criando um Data Sources do Prometheus
Open Menu
	Connections
		Data Sources
			<Add data source>
				Filter by name or type: Prometheus
					Name: prometheus-wsvaamonde
					Connection
						Prometheus server URL: http://172.16.1.20:9091
			<Save & Test>

#criando o Dashboard do Prometheus
Open Menu
	Dashboards
		<Create Dashboard>
		<+ Add visualization>
			Select data source
				Data source: prometheus-wsvaamonde
```

#26_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico<br>
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

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE:  Implementação do Prometheus realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioprometheus #desafionodeexporter
