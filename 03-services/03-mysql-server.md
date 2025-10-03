#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 08/09/2025<br>
#Versão: 0.29<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO MYSQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Mysql realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/03-mysql.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomysql #desafiomysqlserver

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o MySQL Server e Client no Ubuntu Server;<br>
#02_ Verificando o Serviço e Versão do MySQL Server no Ubuntu Server;<br>
#03_ Verificando a Porta de Conexão do MySQL Server no Ubuntu Server;<br>
#04_ Localização dos Arquivos de Configuração do MySQL Server no Ubuntu Server;<br>
#05_ Acessando o MySQL Server utilizando o MySQL Client (Console) no Ubuntu Server;<br>
#06_ Aplicando a segurança de acesso do usuário Root do MySQL Server no Ubuntu Server;<br>
#07_ Criando um usuário DBA (Data Base Administrator) do MySQL Server no Ubuntu Server;<br>
#08_ Adicionando o Usuário Local no Grupo Padrão do MySQL Server no Ubuntu Server;<br>
#09_ Permitindo o Root do MySQL se Logar Remotamente no MySQL Client Console no Ubuntu Server;<br>
#10_ Conectando no MySQL Server utilizando o MySQL Workbench no Windows ou GNU/Linux;<br>
#11_ Integrando o MySQL Server com o Visual Studio Code VSCode no Windows ou GNU/Linux;<br>
#12_ Desafios do Banco de Dados MySQL Server.<br>

Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do MariaDB: https://mariadb.org/<br>
Site Oficial do Workbench: https://www.mysql.com/products/workbench/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School MySQL: https://www.w3schools.com/mysql/default.asp<br>
Site Oficial do W3C School SQL: https://www.w3schools.com/sql/default.asp

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**PERGUNTA PARA A IA**
```bash
Prompt-01: qual o nome do software mais utilizado no Brasil e no Mundo para armazenamento de dados
           relacional? Qual o seu percentual de uso para aplicações emergentes.
Prompt-02: quais as principais Big Techs no Brasil e no mundo que utiliza o MySQL Server?
```

**O QUE É E PARA QUE SERVER O MYSQL SERVER:** O *MySQL Server* é um sistema de gerenciamento de banco de dados relacional *RDBMS (RDBMS - Relational Database Management System)* de código aberto. Ele é amplamente utilizado para armazenar, organizar e acessar dados de forma eficiente em uma variedade de aplicações, desde pequenos projetos até grandes sistemas corporativos.

**O QUE É E PARA QUE SERVER O RDBMS:** O *RDBMS (Relational Database Management System)* é um Sistema de Gerenciamento de Banco de Dados Relacional. Ele serve para armazenar, organizar e manipular dados de forma estruturada, usando tabelas que se relacionam entre si por meio de chaves primárias e estrangeiras, como por exemplo dos Banco de Dados: *MySQL Server, PostgreSQL Serer, MariaDB Server (Fork do MySQL Server), Microsoft SQL Server ou Oracle Database Server*.

**O QUE É E PARA QUE SERVER O SGBD:** Um SGBD (Sistema de Gerenciamento de Banco de Dados) é um software que permite criar, gerenciar, manipular e consultar bancos de dados de forma estruturada e segura.

**O QUE É E PARA QUE SERVER O DBA:** O *DBA (Data Base Administrator)* desempenha um papel essencial na administração de sistemas de banco de dados, garantindo que as informações sejam armazenadas, acessadas e protegidas corretamente, fazendo as funções de: *Instalação, Configuração, Monitoramento, Desempenho, Backup/Restaure, Segurança, Gerenciamento, Planejamento, Automação, etc*.

**O QUE É E PARA QUE SERVER O SQL:** O *SQL (Structured Query Language)* é a linguagem padrão para acessar e manipular *Bancos de Dados Relacionais*. Ela permite que você interaja com os dados de forma estruturada — seja para consultar, inserir, atualizar ou excluir informações. O SQL é o que você usa para **"Conversar"** com o banco de dados, *T-SQL (Transact-SQL), PL-SQL (Procedural Language/Structured Query Language), PL-pgSQL (Procedural Language/PostgreSQL) etc.*, são variações do SQL padrão, com recursos extras de programação.

[![MySQL Server](http://img.youtube.com/vi/7tl4TuxhuKg/0.jpg)](https://www.youtube.com/watch?v=7tl4TuxhuKg "MySQL Server")

Link da vídeo aula: https://www.youtube.com/watch?v=7tl4TuxhuKg

## 01_ Instalando o MySQL Server e Client no Ubuntu Server
```bash	
#atualizando as listas do Apt
sudo apt update

#instalando o MySQL Server e Client
sudo apt install git vim libproj22 proj-data mysql-server-8.0 mysql-client-8.0 mysqltuner
```

## 02_ Verificando o Serviço e Versão do MySQL Server no Ubuntu Server
```bash
#verificando o serviço do MySQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units)
sudo systemctl status mysql
sudo systemctl restart mysql
sudo systemctl stop mysql
sudo systemctl start mysql

#analisando os Log's e mensagens de erro do Servidor do MySQL (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu mysql
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do MySQL Server e do MySQL Client
#opção do comando mysqld: --version (check version daemon service)
sudo mysqld --version

#verificando a versão do MySQL Client (Console)
#opção do comando mysql: --version (check version client)
sudo mysql --version
```

## 03_ Verificando a Porta de Conexão do MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-3306 do MySQL Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do MySQL Server no Ubuntu Server
```bash
/etc/mysql                           <-- Diretório de configuração do SGBD MySQL Server
/etc/mysql/mysql.conf.d/mysqld.cnf   <-- Arquivo de configuração do Servidor SGBD do MySQL Server
/etc/mysql/mysql.conf.d/mysql.cnf    <-- Arquivo de configuração do Cliente SGBD do MySQL Client
/var/log/mysql/                      <-- Diretório padrão dos Logs do SGBD Mysql Server
/var/lib/mysql/                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server
/var/lib/mysql/ssl/                  <-- Diretório padrão dos Certificados do SGBD MySQL Server
/var/run/mysqld/                     <-- Diretório do Pid de Processo e Socket do SGBD MySQL Server
```

## 05_ Acessando o MySQL Server utilizando o MySQL Client (Console) no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** por padrão o usuário *Root do MySQL Server* não tem senha para se logar no *MySQL Client Console*, sendo necessário fazer a configuração de **segurança** antes do servidor entrar em **produção**.

```bash
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

## 06_ Aplicando a segurança de acesso do usuário Root do MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O MYSQL SERVER E CLIENT É __`CASE SENSITIVE`__, CUIDADO COM OS NOMES DOS: *BASE DE DADOS, TABELAS, COLUNAS, USUÁRIOS, ETC...* NO MOMENTO DA CRIAÇÃO OU ATUALIZAÇÃO DAS INFORMAÇÕES NO SERVIDOR.

```sql
/* visualizando as bases de dados do MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* utilizando a base de dados mysql */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/9.0/en/use.html */
USE mysql;

/* mostrando as tabelas criadas na base de dados mysql */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-tables.html */
SHOW TABLES;

/* selecionando o dados da tabela user, filtrando somente as colunas: user e host */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host FROM user;

/* alterando a senha do usuário Root Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/alter-user.html */
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sua_senha';

/* alterando as permissões do usuário Root Localhost */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT ALL ON *.* TO 'root'@'localhost';

/* aplicando todas as mudanças na base de dados */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* verificando a senha do usuário Root adicionada */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM user;

/* saindo do MySQL Client Console */
exit
```
```bash
#testando novamente o acesso ao MySQL Server agora com senha
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

## 07_ Criando um usuário DBA (Data Base Administrator) do MySQL Server no Ubuntu Server
```sql
/* criando o usuário DBA Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO DBA CONFORME A SUA NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sua_senha';

/* alterando as permissões do usuário DBA Localhost */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT ALL ON *.* TO 'dba'@'localhost';

/* aplicando todas as mudanças na base de dados */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* Verificando o Usuário DBA criado no Banco de Dados MySQL Server */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='dba';

/* Comparando a senha do Usuário DBA com a do Root do MySQL Server (NÃO COMENTADO NO VÍDEO) */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='dba' OR user='root';

/* saindo do MySQL Client Console */
exit
```
```bash
#se logando com o usuário dba para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u dba -p
```
```sql
/* visualizando as bases de dados do MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-tables.html */
SHOW DATABASES;

/* saindo do MySQL Client Console */
exit
```

## 08_ Adicionando o Usuário Local no Grupo Padrão do MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do MySQL Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G mysql $USER

#fazendo login em um novo grupo do MySQL Server
newgrp mysql

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo MYSQL do MySQL Server
#opção do comando getent: group (the database system group)
sudo getent group mysql

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit

#se logando com o usuário dba para testar os direitos do Grupo do MySQL Server
#opções do comando mysql: -u (user), -p (password)
mysql -u dba -p
```
```sql
/* testando os direitos do usuário DBA no MySQL Server */
SHOW DATABASES;
USE mysql;
SHOW TABLES;
exit
```

## 09_ Permitindo o Root do MySQL se Logar Remotamente no MySQL Client Console no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do MySQL Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf.old

#atualizando o arquivo de configuração do MySQL Server do Github (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/mysql/mysql.conf.d/mysqld.cnf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/mysqld.cnf

#editar o arquivo de configuração do MySQL Server
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 21 variável do: bind-address = 127.0.0.1 para: 0.0.0.0
bind-address = 0.0.0.0

#comentar a linha: 25 da variável do: mysqlx-bind-address = 127.0.0.1
#mysqlx-bind-address = 127.0.0.1
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#testando o arquivo de configuração do MySQL SERVER (NÃO COMENTADO NO VÍDEO)
#opção do comando mysqld: --validate-config (checked for problems without running the server)
sudo mysqld --validate-config

#reiniciar o serviço do MySQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units)
sudo systemctl restart mysql
sudo systemctl status mysql

#analisando os Log's e mensagens de erro do Servidor do MySQL (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu mysql

#acessar o MySQL Server como Root
sudo mysql -u root -p
```

**OBSERVAÇÃO IMPORTANTE:** QUANDO UTILIZADO O CARÁCTER: __`% (PORCENTAGEM)`__ O MYSQL ENTENDE QUE O USUÁRIO PODE ACESSAR O SERVIDOR DE *QUALQUER ORIGEM*, DIFERENTE DA OPÇÃO: __`LOCALHOST`__ QUE SÓ PERMITE O *ACESSO LOCAL*. **CUIDADO** COM ESSA OPÇÃO NA HORA DE CRIAR *USUÁRIOS DE SERVIÇOS*.

```sql
/* criando o usuário Root Remoto do MySQL Server */

/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'sua_senha';
GRANT ALL ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;

/* verificando o usuário Root Remoto e Root Local do MySQL Server */
SELECT user,host,authentication_string FROM mysql.user WHERE user='root';
exit
```

## 10_ Conectando no MySQL Server utilizando o MySQL Workbench no Windows ou GNU/Linux

Link para download do MySQL Workbench: https://dev.mysql.com/downloads/workbench/

**OBSERVAÇÃO IMPORTANTE:** após a conexão com o MySQL Server utilizando *MySQL Workbench* somente o Banco de Dados: __`Sys (Sistema)`__ é mostrado em *Esquemas (Scheme)*, os demais Banco de Dados utilizados pelo MySQL Server não são mostrados por motivo de **segurança**.

```bash
#conectando com o usuário Root Remoto do MySQL no Workbench
MySQL Connections: +
  Connection Name: wsseunome
  Connection Method: Standard (TCP/IP)
  Parameters:
    Hostname: ENDEREÇO_IPV4_SERVIDOR (alterar o endereço IPv4 do seu servidor)
    Port: 3306
    Username: root
    Password:
      Store in Keychain
        Password: sua_senha (alterar a senha do usuário root do seu servidor)
    <OK>
  <Test Connection>
    <OK>
<OK>
```

## 11_ Integrando o MySQL Server com o Visual Studio Code VSCode no Windows ou GNU/Linux

**OBSERVAÇÃO IMPORTANTE:** CONFORME COMENTADO E MOSTRADO NO VÍDEO, QUANDO VOCÊ INSTALA A *EXTENSÃO DO MYSQL SERVER NO VSCODE* NÃO APARECE NENHUM BANCO DE DADOS PADRÃO NA LISTAGEM, SOMENTE OS BANCOS DE DADOS CRIADOS PELO USUÁRIO, ISSO É POR MOTIVO DE **SEGURANÇA**.

```bash
#instalando a Extensão do MySQL Server no VSCode
VSCode
  Extensões
    Pesquisar
      MySQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
        Instalar

#configurando a conexão com o MySQL Server no VSCode
VSCode
  Database
    <Create Connection>
      Name: UbuntuServer
      Server Type:
        MySQL
          Host: ENDEREÇO_IPV4_SERVIDOR (alterar o endereço IPv4 do seu servidor)
          Port: 3306
          Username: root
          Password: sua_senha (alterar a senha do usuário root do seu servidor)
    <Save>
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** CRIAR UM BANCO DE DADOS COM O: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson), DENTRO DESSE BANCO DE DADOS CRIAR UMA TABELA COM O NOME: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) COM AS SEGUINTES COLUNAS: __`Nome (Tipo Texto)`__ e __`Idade (Tipo Numérico)`__ (TUDO EM MINÚSCULO), DENTRO DESSA TABELA CRIAR UM REGISTRO COM: __`Seu Nome e Sobrenome e Sua Idade`__ (VEJA O SITE W3SCHOOLS). **OBSERVAÇÃO IMPORTANTE:** NÃO PRECISA CRIAR CHAVE PRIMÁRIA (Primary Key) NA SUA TABELA.

**#13_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO PROCEDIMENTO DE CONFIGURAÇÃO DO *OPENSSH* NO GRUPO DO MYSQL SERVER __`mysql`__ PARA ADMINISTRAR O SERVIDOR SEM A NECESSIDADE DO COMANDO SUDO.

**#14_ DESAFIO-03:** CRIAR MAIS UM USUÁRIO NO MYSQL SERVER COM O SEU NOME: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson), CONFIGURAR TODAS AS PERMISSÕES IGUAIS AO USUÁRIO __`DBA LOCALHOST`__, TESTAR A CONEXÃO NO TERMINAL.

**#15_ DESAFIO-04:** CRIAR OS USUÁRIOS: __`dba`__ E SEU NOME: __`seunome`__ REMOTOS, CONFIGURAR TODAS AS PERMISSÕES IGUAIS AO USUÁRIO __`ROOT REMOTO %`__, TESTAR A CONEXÃO NO TERMINAL, MYSQL WORKBENCH E VSCODE.

**#16_ DESAFIO-05:** CONHECER O PROJETO: *Free SQL Database: https://www.freesqldatabase.com/*, NA OPÇÃO DE BANCO DE DADOS, FAZER A CRIAÇÃO DE UM BANCO DE DADOS GRATUITO NA NUVEM (CLOUD) SEGUINDO O MESMO PROCEDIMENTO DO __`DESAFIO-01 DA ETAPA: 12`__, DEPOIS TESTAR A CONEXÃO NO MYSQL WORKBENCH E VSCODE. **OBSERVAÇÃO IMPORTANTE:** NA CONTA FREE VOCÊ NÃO TEM DIREITO A CRIAR UM BANCO DE DADOS COM O NOME QUE VOCÊ QUER, SERÁ CRIADO UM BANCO DE DADOS COM O NOME PADRÃO, POR EXEMPLO: __`sql12345`__ UTILIZAR ESSE BANCO PARA CRIAR A TABELA E INSERIR OS REGISTROS.

===================================DESAFIO DESATIVADO=====================================

**OBSERVAÇÃO IMPORTANTE:** APÓS O CADASTRO NO SITE DO **DB4FREE**, DEPENDENDO DA CONTA DE EMAIL QUE VOCÊ ESTÁ UTILIZANDO, O RECEBIMENTO DO EMAIL DE CONFIRMAÇÃO DE CADASTRO DEMORA OU PODE ESTÁ NA CAIXA DE SPAM DA SUA CONTA, VERIFICAR ANTES DE TENTAR O CADASTRO NOVAMENTE.

**OBSERVAÇÃO IMPORTANTE:** APÓS VÁRIOS TESTES FEITO NO **DB4FREE** O MESMO APRESENTOU UM GRANDE DELAY NAS CONEXÕES, NO MYSQL WORKBENCH E NA EXTENSÃO DO VSCODE MUITAS VEZES É NECESSÁRIO ATUALIZAR VÁRIAS VEZES PARA MOSTRAR A BASE DE DADOS E AS TABELAS CRIADAS. PARA CORRIGIR ESSA FALHA NO VSCODE E NO MYSQL WORKBENCH RECOMENDO AUMENTAR O PARÂMETRO DE: Connect Timeout PARA 100000.

**OBSERVAÇÃO IMPORTANTE:** APÓS VÁRIOS RELATOS DOS ALUNOS REFERENTE A DEMORA OU NÃO RECEBIMENTO DO EMAIL DE CONFIRMAÇÃO DO SITE **DB4FREE**, PESQUISANDO NA INTERNET ENCONTREI OS PROJETOS ABAIXO PARA TESTE (EM FASE DE TESTES E HOMOLOGAÇÃO): 

01) *Free SQL Database: https://www.freesqldatabase.com/* (INDICADO PARA O DESAFIO)<br>
02) *Free MySQL Hosting: https://www.freemysqlhosting.net/*<br>
03) *Free DB: https://freedb.tech*<br>
04) *Remote MySQL: https://remotemysql.com*<br>
05) *DB4Free: https://www.db4free.net/*<br>

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO MYSQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Mysql realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/03-mysql.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomysql #desafiomysqlserver