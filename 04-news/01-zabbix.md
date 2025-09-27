#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 26/09/2025<br>
#Versão: 0.23<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO ZABBIX SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Zabbix realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/11-zabbix.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiozabbix

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do Zabbix Server e Agent2 no Ubuntu Server;<br>
#02_ Adicionando o Repositório do Zabbix no Ubuntu Server;<br>
#03_ Instalando o Zabbix Server, Frontend e Agent2 no Ubuntu Server;<br>
#04_ Criando a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Server;<br>
#05_ Testando o acesso a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Serve;<br>
#06_ Populando as Tabelas no Banco de Dados do Zabbix Server utilizando o arquivo de Esquema do MySQL Server no Ubuntu Server;<br>
#07_ Editando os arquivos de Configuração do Zabbix Server e Agent2 no Ubuntu Server;<br>
#08_ Habilitando o Serviço do Zabbix Server e Agent2 no Ubuntu Server;<br>
#09_ Verificando o Serviço e Versão do Zabbix Server e Agent2 no Ubuntu Server;<br>
#10_ Configurando o Zabbix Server via Navegador;<br>
#11_ Verificando a Porta de Conexão do Zabbix Server e Agent2 no Ubuntu Server;<br>
#12_ Adicionado o Usuário Local no Grupo Padrão do Zabbix Server no Ubuntu Server;<br>
#13_ Localização dos diretórios principais do Zabbix Server e Agent2 no Ubuntu Server;<br>
#14_ Instalando os Agentes do Zabbix no Linux Mint e no Windows 10;<br>
#15_ Criando os Hosts de Monitoramento dos Agentes no Zabbix Server;<br>
#16_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico.<br>

Site Oficial do Zabbix: https://www.zabbix.com/<br>

**O QUE É E PARA QUE SERVER O ZABBIX:** O Zabbix é uma plataforma open-source de monitoramento de redes, servidores, aplicações e serviços. Ele permite acompanhar o desempenho e a disponibilidade dos dispositivos em tempo real, ajudando a detectar falhas antes que impactem os usuários.

[![Zabbix Server](http://img.youtube.com/vi/ms5_qLThRTg/0.jpg)](https://www.youtube.com/watch?v=ms5_qLThRTg "Zabbix Server")

Link da vídeo aula: https://www.youtube.com/watch?v=ms5_qLThRTg

## 01_ Instalando as Dependências do Zabbix Server e Agent2 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O ZABBIX POSSUI AS DEPENDÊNCIAS DO *BANCO DE DADOS MYSQL SERVER* E DO *APACHE2 SERVER*, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: **02 DO APACHE2 SERVER E PHP E NA ETAPA: 03 DO MYSQL SERVER 8**.

```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Zabbix
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends traceroute nmap snmp snmpd snmp-mibs-downloader apt-transport-https \
software-properties-common git vim fping
```

## 02_ Adicionando o Repositório do Zabbix no Ubuntu Server

Link de referência do download Oficial do Zabbix: https://www.zabbix.com/download

**OBSERVAÇÃO IMPORTANTE:** NESSE VÍDEO ESTÁ SENDO INSTALADO E CONFIGURADO A VERSÃO 7.0 PRE-RELEASE (BETA - NÃO OFICIAL LTS), A VERSÃO LTS (Long Time Support) É: 6.0.x

**OBSERVAÇÃO IMPORTANTE:** NO DIA *03/06/2024* FOI LANÇADO A VERSÃO LTS DO ZABBIX SERVER 7.0 PROCEDIMENTO JÁ FOI ATUALIZADO PARA ESSA VERSÃO.

**OBSERVAÇÃO IMPORTANTE:** NO DIA *10/12/2024* FOI LANÇADO A VERSÃO LTS DO ZABBIX SERVER 7.2 PROCEDIMENTO JÁ FOI ATUALIZADO PARA ESSA VERSÃO.

**OBSERVAÇÃO IMPORTANTE:** NO DIA *25/08/2025* FOI LANÇADO A VERSÃO LTS DO ZABBIX SERVER 7.4 PROCEDIMENTO JÁ FOI ATUALIZADO PARA ESSA VERSÃO.

**OBSERVAÇÃO IMPORTANTE:** NAS CONFIGURAÇÕES DE DOWNLOAD DO REPOSITÓRIO DO ZABBIX SERVER FOI SELECIONADO: 7.4 LTS, Ubuntu, 22.04 (Jammy amd64, arm64), Server, Frontend, Agent 2, MySQL e Apache.

```bash
#download do repositório do Zabbix Server LTS 7.4 (LINK ATUALIZADO EM: 26/10/2025)
wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu22.04_all.deb

#instalação do repositório do Zabbix Server
#opção do comando dpkg: -i (install)
sudo dpkg -i zabbix-release_latest*.deb
```

## 03_ Instalando o Zabbix Server, Frontend e Agent2 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** para a instalação do Zabbix Server é necessário ter instalado e configurado de forma correta o *MySQL Server e o Apache2 Server*, no caso do Banco de Dados MySQL Server pode ficar em outro servidor (Recomendado). Também existe a possibilidade de instalar os Serviços do Zabbix Server em servidores separados (Recomendado).

```bash
#atualizando as lista do Apt com o novo repositório do Zabbix Server
sudo apt update

#instalando o Zabbix Server e Agent2
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf \
zabbix-sql-scripts zabbix-agent2 zabbix-agent2-plugin-*
```

## 04_ Criando a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Server
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados Zabbix Server */
CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

/* Criando o Usuário Zabbix com a Senha Zabbix do Banco de Dados Zabbix */
CREATE USER 'zabbix'@'localhost' IDENTIFIED WITH mysql_native_password BY 'zabbix';
GRANT USAGE ON *.* TO 'zabbix'@'localhost';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';
FLUSH PRIVILEGES;

/* Habilitando a opção de Criação de Função log_bin_trust_function_creators no MySQL Server */
SET GLOBAL log_bin_trust_function_creators = 1;

/* Listando os Bancos de Dados do MySQL */
SHOW DATABASES;

/* Verificando o Usuário Zabbix criado no Banco de Dados MySQL Server */
SELECT user,host FROM mysql.user WHERE user='zabbix';

/* Saindo do Banco de Dados */
exit
```

## 05_ Testando o acesso a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Server
```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u zabbix -p
```
```sql
/* Listando os Bancos de Dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados Zabbix */
USE zabbix;

/* Saindo do Banco de Dados */
exit
```

## 06_ Populando as Tabelas no Banco de Dados do Zabbix Server utilizando o arquivo de Esquema do MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O PROCEDIMENTO DE CRIAÇÃO E POPULAÇÃO DAS TABELAS DO ZABBIX SERVER, DEPENDENDO DO SEU HARDWARE DEMORA BASTANTE, SÓ AGUARDAR O TÉRMINO.

```bash
#importando o esquema e os dados iniciais do banco de dados do Zabbix Server
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opções do comando mysql: -u (user), -p (password), zabbix (database)
sudo zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | sudo mysql --default-character-set=utf8mb4 \
-uzabbix -pzabbix zabbix 

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u zabbix -p
```
```sql
/* Listando os Bancos de Dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados Zabbix */
USE zabbix;

/* Verificando as Tabelas criadas pelo Script */
SHOW TABLES;

/* Verificando os Usuários criados pelo Script */
SELECT username,passwd FROM users;

/* Saindo do Banco de Dados */
exit
```
```bash
#Desabilitando a opção de Criação de Função no MySQL Server

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Desabilitando a opção de Criação de Função log_bin_trust_function_creators no MySQL Server */
SET GLOBAL log_bin_trust_function_creators = 0;

/* Saindo do Banco de Dados */
exit
```

## 07_ Editando os arquivos de Configuração do Zabbix Server e Agent2 no Ubuntu Server
```bash
#editando o arquivo de configuração do Zabbix Server
sudo vim /etc/zabbix/zabbix_server.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #descomentar e alterar o valor da variável DBHost= na linha: 95
  DBHost=localhost

  #deixar o padrão da variável DBName= na linha: 107
  DBName=zabbix

  #deixar o padrão da variável DBUser= na linha: 123
  DBUser=zabbix

  #descomentar e alterar o valor da variável DBPassword= na linha: 131
  DBPassword=zabbix

#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#editando o arquivo de configuração do Zabbix Agent2
sudo vim /etc/zabbix/zabbix_agent2.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #alterar o valor da variável Server= na linha: 80
  #alterar o endereço IPv4 do seu servidor conforme o seu cenário
  Server=172.16.1.20

  #alterar o valor da variável ServerActive= na linha: 133
   #alterar o endereço IPv4 do seu servidor conforme o seu cenário
  ServerActive=172.16.1.20

  #alterar o valor da variável Hostname= na linha: 144
   #alterar o nome do seu servidor conforme o seu cenário
  Hostname=wsvaamonde

  #descomentar o valor da variável RefreshActiveChecks= na linha 204
  RefreshActiveChecks=5s

#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 08_ Habilitando o Serviço do Zabbix Server e Agent2 no Ubuntu Server
```bash
#habilitando o serviço do Zabbix Server e Agent2
sudo systemctl daemon-reload
sudo systemctl enable zabbix-server
sudo systemctl restart zabbix-server zabbix-agent2 apache2
```

## 09_ Verificando o Serviço e Versão do Zabbix Server e Agent2 no Ubuntu Server
```bash
#verificando o serviço do Zabbix Server e Agent2
sudo systemctl status zabbix-server zabbix-agent2
sudo systemctl restart zabbix-server zabbix-agent
sudo systemctl stop zabbix-server zabbix-agent
sudo systemctl start zabbix-server zabbix-agent

#analisando os Log's e mensagens de erro do Servidor do Zabbix (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -xeu zabbix-server
sudo journalctl -t zabbix_agent2
sudo journalctl -xeu zabbix-agent2
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção

```bash
#verificando a versão do Zabbix Server e Agent2
#opção do comando zabbix_server: -V (version)
#opção do comando zabbix_agentd: -V (version)
sudo zabbix_server -V
sudo zabbix_agent2 -V
```

## 10_ Configurando o Zabbix Server via Navegador
```bash
#acessar via navegador o Zabbix
firefox ou google chrome: http://endereço_ipv4_ubuntuserver/zabbix

#Configuração inicial do Zabbix Server
Welcome to Zabbix 7.0
  Default language: English (en_US)
    <Next step>
  Check of pre-requisites
    <Next step>
  Configure DB connection
    Database type: MySQL
    Database host: localhost
    Database port: 0 (use default port)
    Database name: zabbix
    Store credentials in: Plain text
    User: zabbix
    Password: zabbix
    <Next step>
  Settings
    Zabbix server name: wsvaamonde
    Default time zone: (UTC-03:00) America/Sao_Paulo
    Default theme: Dark
    <Next step>
  Pre-installation summary
    <Next step>
  Install
    <Finish>

#Acessando o Painel de Gerenciamento do Zabbix Server
Username: Admin
Password: zabbix
Yes: Remember me for 30 days
<Sign in>
```

## 11_ Verificando a Porta de Conexão do Zabbix Server e Agent2 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando as portas padrões TCP-10050 e TCP-10051 do Zabbix Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'10050,10051' -sTCP:LISTEN
```

## 12_ Adicionado o Usuário Local no Grupo Padrão do Zabbix Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G zabbix $USER
newgrp zabbix
id

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl+D
exit
```

## 13_ Localização dos diretórios principais do Zabbix Server e Agent2 no Ubuntu Server
```bash
/etc/zabbix/*                   <-- Diretório dos arquivos de Configuração do serviço do Zabbix
/etc/zabbix/zabbix_server.conf  <-- Arquivo de Configuração do Zabbix Server
/etc/zabbix/zabbix_agent2.conf  <-- Arquivo de Configuração do Zabbix Agent2
/var/log/zabbix*                <-- Diretório dos arquivos de Logs do serviço do Zabbix
/usr/share/zabbix*              <-- Diretório dos arquivos do Site do serviço do Zabbix
```

## 14_ Instalando os Agentes do Zabbix no Linux Mint e no Windows 10

Link de referência do download Oficial do Zabbix: https://www.zabbix.com/br/download_agents

**OBSERVAÇÃO IMPORTANTE:** ATÉ O MOMENTO DA GRAVAÇÃO DESSE VÍDEO, O AGENTE PARA O SISTEMA MICROSOFT NÃO DISPONIBILIZA A VERSÃO 7.0, SOMENTE A VERSÃO 6.4.x DO ZABBIX AGENT.

**OBSERVAÇÃO IMPORTANTE:** NO DIA *03/06/2024* FOI LANÇADO A VERSÃO 7.0 OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

**OBSERVAÇÃO IMPORTANTE:** NO DIA *10/12/2024* FOI LANÇADO A VERSÃO 7.2 OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

**OBSERVAÇÃO IMPORTANTE:** NO DIA *25/08/2024* FOI LANÇADO A VERSÃO 7.4 OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

### Instalação do Agent2 do Zabbix Server no Microsoft Windows

```bash
#Download do Agent do Zabbix para sistemas operacionais Microsoft
#Windows, Any, amd64, v7.4, OpenSSL, MSI: Zabbix agent 2 v7.4.2 (ATUALIZADO NO DIA 26/09/2025)
https://cdn.zabbix.com/zabbix/binaries/stable/7.4/7.4.2/zabbix_agent-7.4.2-windows-amd64-openssl.msi

#Instalação Manual do Zabbix Agent 2 para Microsoft
Pasta de Download
  Welcome to the Zabbix Agent 2 (64-bit) Setup Wizard <Next>
  End-User License Agreement
    (On) I accept the therms in the License Agreement <Next>
  Custom Setup
    (On) Zabbix Agent 2 (64-bit) <Next>
  Zabbix Agent service configuration
    Host name: windows10
    Zabbix server IP/DNS: 172.16.1.20
    Agent listen port: 10050
    Server or Proxy for active checks: 172.16.1.20
    (Off) Enable PSK
    (On) Add agent location to the PATH <Next>
  Ready to install Zabbix Agent 2 (64-bit) <Install>
    Zabbix Agent 2 MSI package (64)-bit <Sim>
  Completed the Zabbix Agent 2 (64-bit) <Finish>

#Verificação da instalação do Zabbix Agent 2 no Powershell
#opção do comando netstat: -a (All connections), -n (addresses and port numbers)
Powershell
  hostname
  Get-Service 'Zabbix Agent 2'
  netstat -an | findstr 10050

#Localização do arquivo de configuração do Zabbix Agent 2
C:\Program Files\Zabbix Agent 2\
  zabbix_agent2.conf
```

### Instalação do Agent2 do Zabbix Server no GNU/Linux Mint

Link de referência do download Oficial do Zabbix: https://www.zabbix.com/br/download

```bash
#SELECIONAR: 7.4 LTS, Ubuntu, 22.04 (Jammy), Agent 2
#download do repositório do Zabbix Server LTS 7.4 (LINK ATUALIZADO EM: 26/09/2025)
wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu22.04_all.deb

#instalação do repositório do Zabbix Agent 2
#opção do comando dpkg: -i (install)
sudo dpkg -i zabbix-release_latest*.deb

#atualizando as lista do Apt com o novo repositório do Zabbix Agent2
sudo apt update

#instalando as dependências do Zabbix Agent2
sudo apt install traceroute nmap snmp snmpd snmp-mibs-downloader apt-transport-https \
software-properties-common git vim

#instalando o Zabbix Agent2
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends zabbix-agent2 zabbix-agent2-plugin-*

#editando o arquivo de configuração do Zabbix Agent2
sudo vim /etc/zabbix/zabbix_agent2.conf

#entrando no modo de edição do editor de texto VIM
INSERT

  #alterar o valor da variável Server= na linha: 80
  #alterar o endereço IPv4 do seu servidor conforme o seu cenário
  Server=172.16.1.20

  #alterar o valor da variável ServerActive= na linha: 133
  #alterar o endereço IPv4 do seu servidor conforme o seu cenário
  ServerActive=172.16.1.20

  #alterar o valor da variável Hostname= na linha: 144
  #alterar o nome do seu desktop conforme o seu cenário
  Hostname=linuxmint213

  #descomentar o valor da variável RefreshActiveChecks= na linha 204
  RefreshActiveChecks=5s

#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#habilitando o serviço do Zabbix Agent2
sudo systemctl daemon-reload
sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2

#verificando o serviço do Zabbix Agent2
sudo systemctl status zabbix-agent2

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'10050' -sTCP:LISTEN
```

## 15_ Criando os Hosts de Monitoramento dos Agentes no Zabbix Server

### Criando o Host de Monitoramento do GNU/Linux Mint

```bash
#Criação do Host GNU/Linux Linux no Zabbix Server
Data collection
  Hosts
    <Create host>
      Host
        Host name: linuxmint213
        Visible name: linuxmint213
        Templates: <Select>
          Template group: <Select>
            Templates/Operating systems
            Linux by Zabbix agent <Select>
        Host groups: <select>
          Discovered hosts <Select>
        Interfaces: Add:
          Agent: 
            DNS name: 172.16.1.110
            Connect to: IP
            Port: 10050
        Description: Desktop Linux Mint 21.3
        Monitored by proxy: (no proxy)
        Enable: On
      <Add>
```

### Criando o Host de Monitoramento do Microsoft Windows
```bash
#Criação do Host Microsoft Windows no Zabbix Server
Data collection
  Hosts
    <Create host>
      Host
        Host name: windows10
        Visible name: windows10
        Templates: <Select>
          Template group: <Select>
            Templates/Operating systems
            Windows by Zabbix agent <Select>
        Host groups: <select>
          Discovered hosts <Select>
        Interfaces: Add:
          Agent: 
            DNS name: 172.16.1.193
            Connect to: IP
            Port: 10050
        Description: Desktop Microsoft Windows 10
        Monitored by proxy: (no proxy)
        Enable: On
      <Add>
```

## 16_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico
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
sudo systemctl stop tomcat10.service mongod.service netdata.service webmin.service

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

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO ZABBIX SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Zabbix realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/11-zabbix.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiozabbix 