#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/03/2024<br>
#Data de atualização: 08/01/2026<br>
#Versão: 0.27<br>

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
#16_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico **(NÃO COMENTADO NO VÍDEO)**.<br>

Site Oficial do Zabbix: https://www.zabbix.com/<br>

**O QUE É E PARA QUE SERVER O ZABBIX:** O Zabbix é uma plataforma open-source de monitoramento de redes, servidores, aplicações e serviços. Ele permite acompanhar o desempenho e a disponibilidade dos dispositivos em tempo real, ajudando a detectar falhas antes que impactem os usuários.

[![Zabbix Server](http://img.youtube.com/vi/ms5_qLThRTg/0.jpg)](https://www.youtube.com/watch?v=ms5_qLThRTg "Zabbix Server")

Link da vídeo aula: https://www.youtube.com/watch?v=ms5_qLThRTg

## 01_ Instalando as Dependências do Zabbix Server e Agent2 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O ZABBIX POSSUI AS DEPENDÊNCIAS DO *BANCO DE DADOS MYSQL SERVER* E DO *APACHE2 SERVER*, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: **02 DO APACHE2 SERVER E PHP E NA ETAPA: 03 DO MYSQL SERVER 8**.

```bash
#atualizando as lista do apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Zabbix Server e Agent2
#opções do comando apt: install (install is followed by one or more package names), 
#--install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends traceroute nmap snmp snmpd snmp-mibs-downloader apt-transport-https \
software-properties-common git vim fping
```

## 02_ Adicionando o Repositório do Zabbix no Ubuntu Server

Link de referência do download Oficial do Zabbix: https://www.zabbix.com/download

**OBSERVAÇÃO IMPORTANTE:** NESSE VÍDEO ESTÁ SENDO INSTALADO E CONFIGURADO A VERSÃO 7.0 PRE-RELEASE (BETA - NÃO OFICIAL LTS), A VERSÃO LTS (Long Time Support) ATÉ A DATA DE GRAVAÇÃO DESSE VÍDEO É: 6.0.x

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`03/06/2024`__ FOI LANÇADO A VERSÃO **LTS** DO ZABBIX SERVER 7.0, ESSE PROCEDIMENTO JÁ FOI ATUALIZADO PARA ESSA VERSÃO (RECOMENDADO INSTALAR ESSA VERSÃO EM PRODUÇÃO).

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`10/12/2024`__ FOI LANÇADO A VERSÃO DO ZABBIX SERVER 7.2, NO FINAL DESSE ARQUIVO ESTOU DISPONIBILIZANDO O PROCEDIMENTO DE ATUALIZAÇÃO DA VERSÃO 7.0 PARA 7.2.

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`25/08/2025`__ FOI LANÇADO A VERSÃO DO ZABBIX SERVER 7.4, NO FINAL DESSE ARQUIVO ESTOU DISPONIBILIZANDO O PROCEDIMENTO DE ATUALIZAÇÃO DA VERSÃO 7.2 PARA 7.4.

**OBSERVAÇÃO IMPORTANTE:** NAS CONFIGURAÇÕES DE DOWNLOAD DO REPOSITÓRIO DO ZABBIX SERVER FOI SELECIONADO AS OPÇÕES: 7.0 LTS, Ubuntu, 22.04 (Jammy amd64, arm64), Server, Frontend, Agent 2, MySQL e Apache.

```bash
#download do repositório do Zabbix Server LTS 7.0 (LINK ATUALIZADO EM: 06/01/2025)
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu22.04_all.deb

#instalação do repositório do Zabbix Server e Agent2
#opção do comando dpkg: -i (install)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo dpkg -i zabbix-release_latest*.deb
```

**OBSERVAÇÃO IMPORTANTE (NÃO COMENTADO NO VÍDEO):** SE VOCÊ ESTIVER UTILIZANDO O UBUNTU PRO ATIVADO NO SEU SERVIDOR, OS RECURSOS DO ESM (EXPANDED SYSTEM MAINTENANCE) NÃO PERMITI INSTALAR AS VERSÕES MAIS NOVAS OU ATUALIZAR O ZABBIX SERVER E FRONTEND, SENDO NECESSÁRIO FAZER O PROCEDIMENTO ABAIXO PARA AUMENTAR O NÍVEL DE PRIORIDADE DO REPOSITÓRIO DO ZABBIX.

```bash
#download da arquivo de prioridade do repositório do Zabbix Server em relação 
#as configurações do suporte ao Ubuntu Pro com o ESM habilitado (NÃO COMENTADO NO VÍDEO)
sudo wget -v -O /etc/apt/preferences.d/zabbix.pref https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/zabbix.pref
```

## 03_ Instalando o Zabbix Server, Frontend e Agent2 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** para a instalação do Zabbix Server é necessário ter instalado e configurado de forma correta o __`MySQL Server e do Apache2 Server`__, no caso do Banco de Dados MySQL Server pode ficar em outro servidor (Recomendado). Também existe a possibilidade de instalar os Serviços do Zabbix Server em servidores separados (Recomendado).

```bash
#atualizando as lista do Apt com o novo repositório do Zabbix Server
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando o Zabbix Server e Agent2 no Ubuntu Server
#opção do comando apt: --install-recommends (Consider suggested packages as a dependency for installing)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install --install-recommends zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf \
zabbix-sql-scripts zabbix-agent2 zabbix-agent2-plugin-*
```

## 04_ Criando a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Server
```bash
#acessando o MySQL Server para criar a base de dados do Zabbix Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados Zabbix Server */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse: https://www.w3schools.com/mysql/mysql_create_db.asp */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-database.html */
CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

/* Criando o Usuário Zabbix com a Senha Zabbix do Banco de Dados Zabbix */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ZABBIX CONFORME A SUA NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'zabbix'@'localhost' IDENTIFIED WITH mysql_native_password BY 'zabbix';

/* Aplicando as permissões de acesso ao Banco de Dados do Zabbix*/
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT USAGE ON *.* TO 'zabbix'@'localhost';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';

/* aplicando todas as mudanças na base de dados do Zabbix */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* Habilitando a opção de Criação de Função log_bin_trust_function_creators no MySQL Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/set-character-set.html */
SET GLOBAL log_bin_trust_function_creators = 1;

/* Listando os Bancos de Dados do MySQL Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Verificando o Usuário Zabbix criado no Banco de Dados MySQL Server */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='zabbix';

/* Saindo do Banco de Dados do MySQL Server */
exit
```

## 05_ Testando o acesso a Base de Dados do Zabbix Server no MySQL Server no Ubuntu Server
```bash
#conectando no banco de dados MySQL Server com o usuário zabbix
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u zabbix -p
```
```sql
/* Listando os Bancos de Dados do MySQL Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Acessando o Banco de Dados Zabbix Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/9.0/en/use.html */
USE zabbix;

/* Saindo do Banco de Dados do MySQL Server */
exit
```

## 06_ Populando as Tabelas no Banco de Dados do Zabbix Server utilizando o arquivo de Esquema do MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O PROCEDIMENTO DE CRIAÇÃO E POPULAÇÃO DAS TABELAS DO ZABBIX SERVER, DEPENDENDO DO SEU HARDWARE DEMORA BASTANTE, SÓ AGUARDAR O TÉRMINO.

```bash
#importando o esquema e os dados iniciais do banco de dados do Zabbix Server (CAMINHO ATUALIZADO PARA A VERSÃO 7.0)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
#opções do comando mysql: -u (user), -p (password), zabbix (database)
sudo zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | sudo mysql --default-character-set=utf8mb4 \
-uzabbix -pzabbix zabbix 

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u zabbix -p
```
```sql
/* Listando os Bancos de Dados do MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Acessando o Banco de Dados Zabbix */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/use.html */
USE zabbix;

/* Verificando as Tabelas criadas pelo Script */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-tables.html */
SHOW TABLES;

/* Verificando os Usuários criados pelo Script */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-tables.html */
SELECT username,passwd FROM users;

/* Verificando da Versão do Database Schema do Zabbix (NÃO COMENTADO NO VÍDEO) */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/select.html */
SELECT * FROM dbversion;

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
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/set-character-set.html */
SET GLOBAL log_bin_trust_function_creators = 0;

/* Saindo do Banco de Dados */
exit
```

## 07_ Editando os arquivos de Configuração do Zabbix Server e Agent2 no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Zabbix Server (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
sudo cp -v /etc/zabbix/zabbix_server.conf /etc/zabbix/zabbix_server.conf.old

#fazendo o backup do arquivo de configuração do Zabbix Agent2 (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
sudo cp -v /etc/zabbix/zabbix_agent2.conf /etc/zabbix/zabbix_agent2.conf.old

#fazendo o backup do arquivo de configuração do SNMP Daemon (NÃO COMENTADO NO VÍDEO)
#opção do comando cp: -v (verbose)
sudo cp -v /etc/snmp/snmpd.conf /etc/snmp/snmpd.conf.old

#download do arquivo de configuração do Zabbix Server (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/zabbix/zabbix_server.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/zabbix_server.conf

#download do arquivo de configuração do Zabbix Agent2 (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/zabbix/zabbix_agent2.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/zabbix_agent2.conf

#download do arquivo de configuração do SNMP Daemon (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/snmp/snmpd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/snmpd.conf

#editando o arquivo de configuração do Zabbix Server
sudo vim /etc/zabbix/zabbix_server.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o valor da variável SourceIP = na linha 22
SourceIP=ENDEREÇO_IPv4_SERVIDOR_UBUNTU

#alterar o valor da variável DBHost= na linha: 47
DBHost=localhost

#alterar o valor da variável DBName= na linha: 50
DBName=zabbix

#alterar o valor da variável DBUser= na linha: 53
DBUser=zabbix

#alterar o valor da variável DBPassword= na linha: 56
DBPassword=zabbix

#alterar o valor da variável StatsAllowedIp= na linha 101
StatsAllowedIP=127.0.0.1,SUA_SUB-REDE/CIDR
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#testando o arquivo de configuração do Zabbix Server (NÃO COMENTADO NO VÍDEO)
#opção do comando sshd: -T (text mode check configuration)
sudo zabbix_server -T

#editando o arquivo de configuração do Zabbix Agent2
sudo vim /etc/zabbix/zabbix_agent2.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o valor da variável ListenIP= na linha 19
ListenIP=ENDEREÇO_IPv4_SERVIDOR_UBUNTU

#alterar o valor da variável Server= na linha: 48
#alterar o endereço IPv4 do seu servidor conforme o seu cenário
Server=ENDEREÇO_IPv4_SERVIDOR_UBUNTU

#alterar o valor da variável ServerActive= na linha: 51
#alterar o endereço IPv4 do seu servidor conforme o seu cenário
ServerActive=ENDEREÇO_IPv4_SERVIDOR_UBUNTU

#alterar o valor da variável Hostname= na linha: 56
#alterar o nome do seu servidor conforme o seu cenário
Hostname=SEU_NOME_DO_HOST
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#testando o arquivo de configuração do Zabbix Agent2 (NÃO COMENTADO NO VÍDEO)
#opção do comando sshd: -T (text mode check configuration)
sudo zabbix_agent2 -T

#editando o arquivo de configuração do SNMP Daemon (NÃO COMENTADO NO VÍDEO)
sudo vim /etc/snmp/snmpd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
# alterar a localização física ou lógica do servidor na linha: 19
sysLocation Servidores do Bora para Prática

# alterar o valor do contato do responsável pelo servidor na linha: 22
sysContact Robson Vaamonde <vaamonde@pti.intra>

# alterar o endereço IPv4 da comunidade SNMP somente leitura na linha: 53
rocommunity vaamonde 172.16.1.0/24
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>
```

## 08_ Habilitando o Serviço do Zabbix Server e Agent2 no Ubuntu Server
```bash
#habilitando o serviço do Zabbix Server, Zabbix Agent2 e do SNMPd Daemon
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), restart (Stop and then start one or more units)
sudo systemctl daemon-reload
sudo systemctl enable zabbix-server
sudo systemctl restart zabbix-server zabbix-agent2 apache2 snmpd
```

## 09_ Verificando o Serviço e Versão do Zabbix Server e Agent2 no Ubuntu Server
```bash
#verificando o serviço do Zabbix Server, Zabbix Agent2 e do SNMPd Daemon
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status zabbix-server zabbix-agent2 snmpd
sudo systemctl restart zabbix-server zabbix-agent snmpd
sudo systemctl stop zabbix-server zabbix-agent snmpd
sudo systemctl start zabbix-server zabbix-agent snmpd

#analisando os Log's e mensagens de erro do Servidor do Zabbix (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -xeu zabbix-server

#analisando os Log's e mensagens de erro do Zabbix Agent2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -t zabbix_agent2
sudo journalctl -xeu zabbix-agent2

#analisando os Log's e mensagens de erro do SNMPd Daemon (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -x (catalog), -e (pager-end), -u (unit)
sudo journalctl -u snmpd
sudo journalctl -xeu snmpd
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção

```bash
#verificando a versão do Zabbix Server
#opção do comando zabbix_server: -V (version)
sudo zabbix_server -V

#verificando a versão do Zabbix Agent2
#opção do comando zabbix_agent2: -V (version)
sudo zabbix_agent2 -V

#verificando a versão do SNMPd Daemon
#opção do comando snmpd: -v (version)
sudo snmpd -v
```

## 10_ Configurando o Zabbix Server via Navegador
```bash
#acessar via navegador o Zabbix Server
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

## 11_ Verificando as Portas de Conexão do Zabbix Server, Zabbix Agent2 e do SNMPd no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando as portas padrões TCP-80 Apache2, TCP-10050 Zabbix Agent e TCP-10051 do Zabbix Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80,10050,10051' -sTCP:LISTEN

#verificando a porta padrão UDP-161 do SNMPd Daemon
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address)
sudo lsof -nP -iUDP:'161'
```

## 12_ Adicionado o Usuário Local no Grupo Padrão do Zabbix Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G zabbix $USER

#fazendo login em um novo grupo do Zabbix Server
newgrp zabbix

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo ZABBIX do Zabbix Server
#opção do comando getent: group (the database system group)
sudo getent group zabbix

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 13_ Localização dos diretórios principais do Zabbix Server e Agent2 no Ubuntu Server
```bash
/etc/zabbix/*                    <-- Diretório dos arquivos de Configuração do serviço do Zabbix Server e Agent
/etc/zabbix/zabbix_server.conf   <-- Arquivo de Configuração do Zabbix Server
/etc/zabbix/zabbix_agent2.conf   <-- Arquivo de Configuração do Zabbix Agent2
/etc/zabbix/zabbix_agent2.d/*    <-- Diretório de arquivos extras e plugins do serviço do Zabbix Agent2
/etc/zabbix/zabbix_server.d/*    <-- Diretório de arquivos extras e plugins do serviço do Zabbix Server
/etc/snmp/*                      <-- Diretório de arquivos de Configuração do SNMP e SNMPd Daemon
/etc/snmp/snmp.conf              <-- Arquivo de Configuração do SNMPd Daemon
/var/log/zabbix/*                <-- Diretório dos arquivos de Logs do serviço do Zabbix Server e Agent2
/var/run/zabbix/*                <-- Diretório do PID dos processos do Zabbix Server e Agent2
/usr/share/zabbix*               <-- Diretório dos arquivos do Site do serviço do Zabbix Server
```

## 14_ Instalando os Agentes do Zabbix no Linux Mint e no Windows 10

Link de referência do download Oficial do Zabbix: https://www.zabbix.com/br/download_agents

**OBSERVAÇÃO IMPORTANTE:** ATÉ O MOMENTO DA GRAVAÇÃO DESSE VÍDEO, O AGENTE PARA O SISTEMA MICROSOFT NÃO DISPONIBILIZA A VERSÃO 7.0, SOMENTE A VERSÃO 6.4.x DO ZABBIX AGENT.

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`03/06/2024`__ FOI LANÇADO A VERSÃO **7.0** OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`10/12/2024*`__ FOI LANÇADO A VERSÃO **7.2** OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

**OBSERVAÇÃO IMPORTANTE:** NO DIA __`25/08/2024`__ FOI LANÇADO A VERSÃO **7.4** OFICIAL DO AGENT PARA MICROSOFT WINDOWS.

### Instalação do Agent2 do Zabbix Server no Microsoft Windows

```bash
#Download do Agent do Zabbix para sistemas operacionais Microsoft
#Windows, 10, 11, amd64, v7.0 LTS, OpenSSL, MSI: Zabbix agent 2 v7.0.x (ATUALIZADO NO DIA 07/01/2026)
https://cdn.zabbix.com/zabbix/binaries/stable/7.0/7.0.22/zabbix_agent2-7.0.22-windows-amd64-openssl.msi

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
#SELECIONAR: 7.0 LTS, Ubuntu, 22.04 (Jammy), Agent 2
#download do repositório do Zabbix Server LTS 7.0 (LINK ATUALIZADO EM: 06/01/2025)
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu22.04_all.deb

#instalação do repositório do Zabbix Agent 2
#opção do comando dpkg: -i (install)
sudo dpkg -i zabbix-release_latest*.deb

#atualizando as lista do Apt com o novo repositório do Zabbix Agent2
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Zabbix Agent2
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install traceroute nmap snmp snmpd snmp-mibs-downloader apt-transport-https \
software-properties-common git vim

#instalando o Zabbix Agent2
#opção do comando apt: install (install is followed by one or more package names)
#--install-recommends (Consider suggested packages as a dependency for installing)
sudo apt install --install-recommends zabbix-agent2 zabbix-agent2-plugin-*

#editando o arquivo de configuração do Zabbix Agent2
sudo vim /etc/zabbix/zabbix_agent2.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
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
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#habilitando o serviço do Zabbix Agent2
#opções do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), restart (Stop and then start one or more units)
sudo systemctl daemon-reload
sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2

#verificando o serviço do Zabbix Agent2
#opção do comando systemctl: status (runtime status information)
sudo systemctl status zabbix-agent2

#verificando a porta de conexão do Zabbix Agent2
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

## 16_ Estressando o Servidor Ubuntu Server para verificar as mudanças no Gráfico (NÃO COMENTADO NO VÍDEO)
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

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO ZABBIX SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do Zabbix realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/11-zabbix.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiozabbix 