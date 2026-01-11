#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 11/01/2026<br>
#Versão: 0.25<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Prometheus realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioprometheus #desafionodeexporter

Conteúdo estudado nessa implementação:<br>
#01_ Criando os Grupos e os Usuários do Prometheus e do Node Exporter no Ubuntu Server;<br>
#02_ Criando os diretórios do Prometheus e Node Exporter no Ubuntu Server;<br>
#03_ Baixando o Prometheus do Github no Ubuntu Server;<br>
#04_ Descompactando o arquivo do Prometheus no Ubuntu Server;<br>
#05_ Atualizando os arquivos de executáveis do Prometheus no Ubuntu Server;<br>
#06_ Baixando e atualizando os arquivos customizados do Prometheus no Ubuntu Server;<br>
#07_ Alterando as permissões dos arquivos e diretórios do Prometheus no Ubuntu Server;<br>
#08_ Instalando o Coletor de Métricas Node Exporter no Ubuntu Server;<br>
#09_ Descompactando o arquivo do Node Exporter no Ubuntu Server;<br>
#10_ Atualizando os arquivos de executáveis do Node Exporter no Ubuntu Server;<br>
#11_ Baixando e atualizando os arquivos customizados do Node Exporter no Ubuntu Server;<br>
#12_ Alterando as permissões do executável do Node Exporter no Ubuntu Server;<br>
#13_ Habilitando o Serviço do Node Exporter no Ubuntu Server;<br>
#14_ Verificando o Serviço e Versão do Node Exporter no Ubuntu Server;<br>
#15_ Verificando a Porta de Conexão do Node Exporter no Ubuntu Server;<br>
#16_ Editando o arquivo de configuração do Prometheus no Ubuntu Server;<br>
#17_ Habilitando o Serviço do Prometheus no Ubuntu Server;<br>
#18_ Verificando o Serviço e Versão do Prometheus no Ubuntu Server;<br>
#19_ Verificando a Porta de Conexão do Prometheus no Ubuntu Server;<br>
#20_ Adicionado o Usuário Local nos Grupos do Prometheus e Node Exporter no Ubuntu Server;<br>
#21_ Localização dos diretórios e arquivos principais do Prometheus e Node Exporter no Ubuntu Server;<br>
#22_ Configurando o Prometheus e o Node Exporter via Navegador;<br>
#23_ Instalando o Node Exporter no Linux Mint e no Microsoft Windows;<br>
#24_ Habilitando o monitoramento do Linux Mint e Windows no Prometheus;<br>
#25_ Integrando o Prometheus no Grafana Server;<br>
#26_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico **(NÃO COMENTADO NO VÍDEO)**.<br>

Site Oficial do Prometheus: https://prometheus.io/<br>

**O QUE É E PARA QUE SERVER O PROMETHEUS:** O Prometheus é um sistema de monitoramento e alerta open-source desenvolvido originalmente pela SoundCloud. Ele é projetado para coletar e armazenar métricas de sistemas e aplicações em séries temporais, permitindo análises detalhadas e alertas personalizados.

**O QUE É E PARA QUE SERVER O NODE EXPORTER:** O Node Exporter é um agente de monitoramento usado para coletar métricas detalhadas de servidores Linux e máquinas físicas ou virtuais. Ele faz parte do ecossistema Prometheus e expõe as métricas do sistema operacional para serem coletadas e analisadas.

[![Prometheus](http://img.youtube.com/vi/0h6le4K6uEQ/0.jpg)](https://www.youtube.com/watch?v=0h6le4K6uEQ "Prometheus")

Link da vídeo aula: https://www.youtube.com/watch?v=0h6le4K6uEQ

## 01_ Criando os Grupos e os Usuários do Prometheus e do Node Exporter no Ubuntu Server
```bash
#criação do grupo do serviço do Prometheus
#opção do comando groupadd: --system (Create a system group)
sudo groupadd --system prometheus

#criando o usuário do serviço do Prometheus
#opções do comando useradd: -s (shell), --no-create-home (Do no create the user's home directory), 
#--system (Create a system account). -g (group) 
sudo useradd -s /sbin/nologin --no-create-home --system -g prometheus prometheus

#criando o grupo do serviço do Node Exporter
#opção do comando groupadd: --system (Create a system group)
sudo groupadd --system node_exporter

#criando o usuário do serviço do Node Exporter
#opções do comando useradd: -s (shell), --no-create-home (Do no create the user's home directory), 
#--system (Create a system account). -g (group) 
sudo useradd -s /sbin/nologin --no-create-home --system -g node_exporter node_exporter

#adicionando o usuário do serviço do Node Exporter no grupo do Prometheus
#opções do comando usermod: -a (append), -G (groups)
sudo usermod -a -G prometheus node_exporter

#verificando os grupos do Prometheus e do Node Exporter criados no Ubuntu Server
#opção do comando getent: group (show enumerate the group database)
sudo getent group

#verificando os usuários do Prometheus e do Node Exporter criados no Ubuntu Server
#opção do comando getent: passwd (show enumerate the passwd database)
sudo getent passwd
```

## 02_ Criando os diretórios do Prometheus e do Node Exporter no Ubuntu Server
```bash
#criando os diretórios de configuração e bibliotecas do Prometheus e do Node Exporter
#opção do comando mkdir: -p (parents), -v (verbose)
#opção do bloco de agrupamento {} (chaves): Agrupa comandos em um bloco
sudo mkdir -pv /etc/prometheus/{targets,rules} /var/lib/prometheus
```

## 03_ Baixando o Prometheus do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o executável e os arquivos de configuração do *Prometheus* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/prometheus/prometheus/releases/

```bash
#download do Prometheus do Github (Link atualizado no dia 09/01/2026)
wget https://github.com/prometheus/prometheus/releases/download/v3.9.1/prometheus-3.9.1.linux-amd64.tar.gz

#listando o download do arquivo do Prometheus
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh prometheus*
```

## 04_ Descompactando o arquivo do Prometheus no Ubuntu Server
```bash
#descompactando o arquivo do Prometheus
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf prometheus*.tar.gz 
```

## 05_ Atualizando os arquivos executáveis do Prometheus no Ubuntu Server
```bash
#atualizando os arquivos binários do Prometheus no Ubuntu Server
#opção do comando cp: -R (recursive), -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
#opção do bloco de agrupamento {} (chaves): Agrupa comandos em um bloco
sudo cp -Rv prometheus*/{prometheus,promtool} /usr/local/bin/
```

## 06_ Baixando e atualizando os arquivos customizados do Prometheus no Ubuntu Server
```bash
#download do arquivo de serviço do Prometheus
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/prometheus.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.service

#download do arquivo de configuração padrão do Prometheus
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/prometheus.yml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/prometheus.yml

#download do arquivo de configuração dos alertas periódicos do Prometheus (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/rules/alertas-node-linux.yml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/alertas-node-linux.yml
```

## 07_ Alterando as permissões dos arquivos e diretórios do Prometheus no Ubuntu Server
```bash
#alterando o dono e grupo dos arquivos e diretórios do Prometheus
#opção do comando chown: -R (recursive) -v (verbose), prometheus (user), :prometheus (group)
sudo chown -Rv prometheus:prometheus /etc/prometheus/ /var/lib/prometheus/

#alterando as permissões de arquivos e diretórios do Prometheus
#opção do comando chmod: -R (recursive) -v (verbose), 775 (User: RWX, Group: RWX, Other: R-X)
sudo chmod -Rv 775 /etc/prometheus/ /var/lib/prometheus/
```

## 08_ Instalando o Coletor de Métricas Node Exporter no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o executável do *Node Exporter do Prometheus* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/prometheus/node_exporter/releases/

```bash
#download do Node Exporter do Github (Link atualizado no dia 01/01/2026)
wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz

#listando o download do arquivo do Node Exporter
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh node_exporter*
```

## 09_ Descompactando o arquivo do Node Exporter no Ubuntu Server
```bash
#descompactando o arquivo do Node Exporter
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf node_exporter*.tar.gz 
```

## 10_ Atualizando os arquivos de executáveis do Node Exporter no Ubuntu Server
```bash
#atualizando os arquivos de configurações do Node Exporter
#opção do comando cp: -R (recursive), -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo cp -Rv node_exporter*/node_exporter /usr/local/bin/
```

## 11_ Baixando e atualizando os arquivos customizados do Node Exporter no Ubuntu Server
```bash
#download do arquivo de serviço do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/node_exporter.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.service

#download do arquivo de configuração do Node Exporter
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/prometheus/node_exporter.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/node_exporter.conf
```

## 12_ Alterando as permissões do executável do Node Exporter no Ubuntu Server
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

## 13_ Habilitando o Serviço do Node Exporter no Ubuntu Server
```bash
#habilitando o serviço do Node Exporter
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
```

## 14_ Verificando o Serviço e Versão do Node Exporter no Ubuntu Server
```bash
#verificando o serviço do Node Exporter
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status node_exporter
sudo systemctl restart node_exporter
sudo systemctl stop node_exporter
sudo systemctl start node_exporter

#analisando os Log's e mensagens de erro do Node Exporter
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t node_exporter
sudo journalctl -xeu node_exporter
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Node Exporter
sudo node_exporter --version
```

## 15_ Verificando a Porta de Conexão do Node Exporter no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-9100 do Node Exporter
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9100' -sTCP:LISTEN
```

## 16_ Editando o arquivo de configuração do Prometheus no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o arquivo de configuração do Prometheus e baseado no formato de serialização de dados legíveis *YAML (Yet Another Markup Language)* utilizado pela linguagem de programação Python, muito cuidado com o uso de espaços e tabulação e principalmente sua indentação.

```bash
#arquivo de configuração padrão do Prometheus
sudo vim /etc/prometheus/prometheus.yml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```yaml
#alterar os valores das viráveis a partir da linha: 22
external_labels:
  monitor: "prometheus-wsvaamonde"
  ambiente: "laboratorio"

#alterar os valores das viráveis a partir da linha: 58
scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["172.16.1.20:9091"]
        labels:
          servico: "prometheus"
          sistema: "linux"

#alterar os valores das variáveis a partir da linha: 68
scrape_configs:
  - job_name: "wsvaamonde"
    static_configs:
      - targets: ["172.16.1.20:9100"]
        labels:
          host: "wsvaamonde"
          sistema: "linux"
          funcao: "servidor"
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#testando o arquivo de configuração do Prometheus (NÃO COMENTADO NO VÍDEO)
#opção do comando sudo: -u (Run the command as a user other than the default target user)
#opções do comando promtool: check config (Check if the config files are valid or not) 
sudo -u prometheus promtool check config /etc/prometheus/prometheus.yml
```

## 17_ Habilitando o Serviço do Prometheus no Ubuntu Server 
```bash
#habilitando o serviço do Prometheus
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
```

## 18_ Verificando o Serviço e Versão do Prometheus no Ubuntu Server 
```bash
#verificando o serviço do Prometheus
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status prometheus
sudo systemctl restart prometheus
sudo systemctl stop prometheus
sudo systemctl start prometheus

#analisando os Log's e mensagens de erro do Prometheus
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t prometheus
sudo journalctl -xeu prometheus
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção

```bash
#verificando a versão do Prometheus
#opção do comando prometheus: --version (Show application version.)
sudo prometheus --version

#verificado a versão do Promtool do Prometheus
#opção do comando promtool: --version (Show application version.)
sudo promtool --version
```

## 19_ Verificando a Porta de Conexão do Prometheus no Ubuntu Server 

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-9100 do Node Exporter e TCP-9091 do Prometheus
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9100,9091' -sTCP:LISTEN
```

## 20_ Adicionado o Usuário Local nos Grupos do Prometheus e Node Exporter no Ubuntu Server 
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G prometheus $USER
sudo usermod -a -G node_exporter $USER

#fazendo login em um novo grupo do Prometheus e Node Exporter
newgrp prometheus
newgrp node_exporter

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo PROMETHEUS e NODE_EXPORTER do Prometheus e Node Exporter
#opção do comando getent: group (the database system group)
sudo getent group prometheus
sudo getent group node_exporter

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 21_ Localização dos diretórios e arquivos principais do Prometheus e Node Exporter no Ubuntu Server 
```bash
/etc/prometheus/*                              <-- Diretório de configuração do Prometheus
/etc/prometheus/prometheus.yml                 <-- Arquivo de configuração do Prometheus
/etc/prometheus/node_exporter.conf             <-- Arquivo de configuração do Node Exporter
/etc/prometheus/rules/alertas-node-linux.yml   <-- Arquivo de configuração dos alertas do Node Exporter
/var/lib/prometheus/*                          <-- Diretório de armazenamento dos binários e dados do Prometheus
```

## 22_ Configurando o Prometheus e o Node Exporter via Navegador

**OBSERVAÇÃO IMPORTANTE:** Quando você acessa o Prometheus via Navegador e aparece a seguinte mensagem de aviso em vermelho: *Warning: Error fetching server time: Detected 65.21499991416931 seconds time difference between your browser and the server. Prometheus relies on accurate time and time drift might cause unexpected query results*. Esse erro está associado a falha de sincronismo da Data e Hora em relação o Servidor e Cliente, para resolver essa falha é necessário acertar a Data Hora entre os equipamentos ou utilizar o Protocolo **NTP (Network Time Protocol)** para sincronizar a data/hora de forma correta. 

```bash
#acessando o Prometheus via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091

#verificando os alvos monitorados do Prometheus
Status
  Targets health
    Prometheus
      Endpoint: http://172.16.1.20:9091/metrics
    wsvaamonde
      Endpoint: http://172.16.1.20:9100/metrics

#fazendo consultas simples do Prometheus
Query
  Table
  #verificando a versão do Sistema Operacional
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

#verificando as métricas On-Line do Node Exporter
Metrics
```

## 23_ Instalando o Node Exporter no Linux Mint e no Microsoft Windows

**OBSERVAÇÃO IMPORTANTE:** Instalação do Node Exporter no Microsoft Windows, Link de referência do download: https://github.com/prometheus-community/windows_exporter/releases

**OBSERVAÇÃO IMPORTANTE:** fazer a instalação do Prometheus Windows Exporter utilizando o Powershell em modo Administrador.

### Instalação do Node Exporter no Microsoft Windows
```bash
#link para download direto do Node Exporter (link atualizado em: 26/09/2025)
https://github.com/prometheus-community/windows_exporter/releases/download/v0.31.3/windows_exporter-0.31.3-amd64.msi

Menu
  Powershell 
    Clicar com o botão direito do mouse e selecionar: Abrir como Administrador

#acessando o diretório de Download do Perfil do Usuário
cd c:\user\vaamonde\Download

#instalando o Node Exporter no Windows 10
#opção do comando msiexec: -i (install)
msiexec -i windows_exporter*.msi ENABLED_COLLECTORS=cpu,memory,net,logical_disk,os,system,logon,thermalzone

#verificando o status de serviço do Node Exporter
Get-Service 'windows_exporter'

#verificando a porta padrão TCP-9182 do Node Exporter
#opção do comando netstat: -a (All connections), -n (addresses and port numbers)
netstat -an | findstr 9182
```

### Instalação do Node Exporter no GNU/Linux Mint

**OBSERVAÇÃO IMPORTANTE:** Instalação do Node Exporter no GNU/Linux Mint, Link de referência do download: https://github.com/prometheus/node_exporter/releases/

```bash
#criando o grupo do serviço do Node Exporter
#opção do comando groupadd: --system (Create a system group)
sudo groupadd --system node_exporter

#criando o usuário do serviço do Node Exporter
#opções do comando useradd: -s (shell), --no-create-home (Do no create the user's home directory), 
#--system (Create a system account). -g (group) 
sudo useradd -s /sbin/nologin --no-create-home --system -g node_exporter node_exporter

#criando os diretórios de configuração e bibliotecas do Prometheus e do Node Exporter
#opção do comando mkdir: -p (parents), -v (verbose)
sudo mkdir -pv /etc/prometheus /var/lib/prometheus
```

**OBSERVAÇÃO IMPORTANTE:** o executável do *Node Exporter do Prometheus* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/prometheus/node_exporter/releases/

```bash
#download do Node Exporter do Github (Link atualizado no dia 01/01/2026)
wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz

#listando o download do arquivo do Node Exporter
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh node_exporter*

#descompactando o arquivo do Node Exporter
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
#opção do caractere curinga * (asterisco): Qualquer coisa
tar -zxvf node_exporter*.tar.gz 

#atualizando os arquivos executáveis do Node Exporter
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
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter

#verificando a versão do Node Exporter
sudo node_exporter --version

#verificando a porta padrão TCP-900 do Node Exporter
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'9100' -sTCP:LISTEN
```

## 24_ Habilitando o monitoramento do Linux Mint e Windows no Prometheus
```bash
#editando o arquivo de configuração padrão do Prometheus
sudo vim /etc/prometheus/prometheus.yml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```yaml
#descomentar e alterar os valores das viráveis a partir da linha: 78
- job_name: "linuxmint213"
  static_configs:
    - targets: ["172.16.1.:9100"]
      labels:
        host: "linuxmint213"
        sistema: "linux"
        funcao: "desktop"

#descomentar e alterar os valores das viráveis a partir da linha: 86
- job_name: "windows10"
  static_configs:
    - targets: ["172.16.1.:9182"]
      labels:
        host: "linuxmint213"
        sistema: "windows"
        funcao: "desktop"
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciando e verificando o serviço do Prometheus
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units)
sudo systemctl restart prometheus
sudo systemctl status prometheus

#acessando o Prometheus via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:9091

#verificando os alvos monitorados do Prometheus
Status
  Targets health
```

## 25_ Integrando o Prometheus e Node Exporter no Grafana Server
```bash
#acessando o Grafana Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:3000

#criando um Data Sources do Prometheus no Grafana Server
Open Menu
  Connections
    Data Sources
      <Add data source>
        Filter by name or type: Prometheus
          Name: prometheus-wsvaamonde
          Connection
            Prometheus server URL: http://172.16.1.20:9091
      <Save & Test>

#criando um Dashboard Básico do Prometheus no Grafana Server
Open Menu
  Dashboards
    <Create Dashboard>
    <+ Add visualization>
      Select data source
        Data source: prometheus-wsvaamonde

#Configuração da visualização da Utilização da CPU via Prometheus
Data source: prometheus-wsvaamonde
  cpu (wsvaamonde)
    Code:
      Metrics browser: 100 - (avg(irate(node_cpu_seconds_total{job="wsvaamonde",mode="idle"}[1m])) * 100)
Visualization: Gauge
  Panel options:
    Title: CPU Prometheus
    Description: Utilização da CPU obtida do Prometheus
    Transparent background: (OFF)
    Panel links: (DEFAULT)
    Repeat options: (DEFAULT)
  Value options:
    Show: Calculate
    Calculation: Last*
    Fields: Numeric Fields
  Gauge:
    Orientation: Auto
    Show threshold label: (OFF)
    Show threshold markers: (ON)
    Neutral: (DEFAULT)
  Text size:
    Title: (DEFAULT)
    Value: (DEFAULT)
  Standard options:
    Unit: Parcent (0-100)
    Min: (DEFAULT)
    Max: (DEFAULT)
    Field min/max: (OFF)
    Decimal: (DEFAULT)
    Display name: (DEFAULT)
    Color scheme: (DEFAULT)
    No value: (DEFAULT)
  Data links and actions:
    Data links: (DEFAULT)
  Value mappings: (DEFAULT)
  Thresholds:
    %80
    %60
    %0 Base
    Thresholds mode: Percentage
<Save dashboard>

#Configuração da visualização da Utilização da RAM via Prometheus
Data source: prometheus-wsvaamonde
  ram (wsvaamonde)
    Code:
      Metrics browser: (node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes * 100
Visualization: Gauge
  Panel options:
    Title: RAM Prometheus
    Description: Utilização da RAM obtida do Prometheus
    Transparent background: (OFF)
    Panel links: (DEFAULT)
    Repeat options: (DEFAULT)
  Value options:
    Show: Calculate
    Calculation: Last*
    Fields: Numeric Fields
  Gauge:
    Orientation: Auto
    Show threshold label: (OFF)
    Show threshold markers: (ON)
    Neutral: (DEFAULT)
  Text size:
    Title: (DEFAULT)
    Value: (DEFAULT)
  Standard options:
    Unit: Parcent (0-100)
    Min: (DEFAULT)
    Max: (DEFAULT)
    Field min/max: (OFF)
    Decimal: (DEFAULT)
    Display name: (DEFAULT)
    Color scheme: (DEFAULT)
    No value: (DEFAULT)
  Data links and actions:
    Data links: (DEFAULT)
  Value mappings: (DEFAULT)
  Thresholds:
    %80
    %60
    %0 Base
    Thresholds mode: Percentage
<Save dashboard>

#Configuração da visualização da Utilização do HD via Prometheus
Data source: prometheus-wsvaamonde
  hd (wsvaamonde)
    Code:
      Metrics browser: sum by (device) (rate(node_disk_io_time_seconds_total[1m])) * 100
Visualization: Gauge
  Panel options:
    Title: RAM Prometheus
    Description: Utilização da RAM obtida do Prometheus
    Transparent background: (OFF)
    Panel links: (DEFAULT)
    Repeat options: (DEFAULT)
  Value options:
    Show: Calculate
    Calculation: Last*
    Fields: sda
  Gauge:
    Orientation: Auto
    Show threshold label: (OFF)
    Show threshold markers: (ON)
    Neutral: (DEFAULT)
  Text size:
    Title: (DEFAULT)
    Value: (DEFAULT)
  Standard options:
    Unit: Parcent (0-100)
    Min: (DEFAULT)
    Max: (DEFAULT)
    Field min/max: (OFF)
    Decimal: (DEFAULT)
    Display name: (DEFAULT)
    Color scheme: (DEFAULT)
    No value: (DEFAULT)
  Data links and actions:
    Data links: (DEFAULT)
  Value mappings: (DEFAULT)
  Thresholds:
    %80
    %60
    %0 Base
    Thresholds mode: Percentage
<Save dashboard>

#Configuração da visualização da Utilização da NIC via Prometheus
Data source: prometheus-wsvaamonde
  received (wsvaamonde)
    Code:
      Metrics browser: rate(node_network_receive_bytes_total{host="wsvaamonde",device="enp0s3"}[1m])
  transmited (wsvaamonde)
    Code:
      Metrics browser: rate(node_network_transmit_bytes_total{host="wsvaamonde",device="enp0s3"}[1m])
Visualization: Pie chart
  Panel options:
    Title: NIC Zabbix SNMP
    Description: Utilização da NIC obtida do Zabbix SNMP
    Transparent background: (OFF)
    Panel links: (DEFAULT)
    Repeat options: (DEFAULT)
  Value options:
    Show: Calculate
    Calculation: Last*
    Fields: {device="enp0s3",funcao="servidor",host="wsvaamonde",instance="172.16.1.20:9100",job="wsvaamonde",sistema="linux"}
  Pie chart:
    Pie chart type: Donut
    Slice sorting: Descending
    Labels: Percent
  Tooltip:
    Tooltip mode: Hidden
  Legend:
    Visibility: (OFF)
  Standard options:
    Unit: Parcent (0-100)
    Min: (DEFAULT)
    Max: (DEFAULT)
    Field min/max: (OFF)
    Decimal: (DEFAULT)
    Display name: (DEFAULT)
    Color scheme: (DEFAULT)
    No value: (DEFAULT)
  Data links and actions:
    Data links: (DEFAULT)
  Value mappings: (DEFAULT)
<Save dashboard>
```

## 26_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico (NÃO COMENTADO NO VÍDEO)
```bash
#instalando o software stress-ng e s-tui no Ubuntu Server (NÃO COMENTADO NO VÍDEO)
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install stress-ng s-tui

#verificando a versão do stress-ng e do s-tui (NÃO COMENTADO NO VÍDEO)
sudo stress-ng --version
sudo s-tui --version

#verificando a carga atual do servidor Ubuntu Server (NÃO COMENTADO NO VÍDEO)
#HORA ATUAL | TEMPO DE ATIVIDADE | NÚMERO DE USUÁRIOS LOGADOS | MÉDIA DE CARGA CPU 1=100% - (1M) (5M) (15M)
sudo uptime

#verificando o desempenho do servidor Ubuntu Server (NÃO COMENTADO NO VÍDEO)
sudo top

#estressando a CPU, RAM, DISK e PROCESS utilizando o stress-ng (pressione Ctrl+C para abortar)
#opção do comando stress-ng: --hdd (start N workers continually writing, reading and 
#removing temporary files.), --io (start N workers continuously calling sync(2) to 
#commit buffer cache to disk.), --vm (start N workers continuously calling mmap(2)/
#munmap(2) and writing to the allocated memory.), --cpu (start N processes computing 
#sqrt((double)rand())), --stack (start N workers that rapidly cause and catch), --fork
#(start N workers continually forking children that immediately exit), --exec  (start N 
#workers continually forking children that exec) --timeout (run each stress test for at
#least T seconds)
sudo stress-ng --hdd 8 --io 8 --vm 18 --cpu 8 --stack 4 --fork 8 --exec 4 --timeout 900s

#parando alguns serviços do Ubuntu Server (NÃO COMENTADO NO VÍDEO)
sudo systemctl stop tomcat11.service mongod.service netdata.service webmin.service

#fazendo uma busca no hard disk utilizando o comando find e grep (NÃO COMENTADO NO VÍDEO)
#opções do comando find: / (root device), -type f (files), -exec (exec command), grep -H 
#'root'(with-filename), {} (path find file), \; (end command execution)
sudo find / -type f -exec grep -H 'root' {} \;

#estressando a CPU utilizando o s-tui
sudo s-tui

#utilizado o modos de Monitoramento e Estresse do s-tui
Modes
  ( ) Monitor (Monitoramento do uso da CPU) <Enter>
  ( ) Stress  (Modo de Stress da CPU) <Enter>

#Saindo do s-tui
Control Options
  <Quit> <Enter>
```

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROMETHEUS SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Prometheus realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-prometheus.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioprometheus #desafionodeexporter
