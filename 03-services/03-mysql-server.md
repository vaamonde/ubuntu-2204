#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 14/01/2023<br>
#Data de atualização: 12/08/2024<br>
#Versão: 0.18<br>

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MYSQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Mysql realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/03-mysql.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomysql #desafiomysqlserver

Conteúdo estudado nesse desafio:<br>
#01_ Instalado o MySQL Server e Client no Ubuntu Server;<br>
#02_ Verificando os Status do Serviço do MySQL Server;<br>
#03_ Verificando a Versão do MySQL Server;<br>
#04_ Verificando a Porta de Conexão do MySQL Server;<br>
#05_ Diretórios e Arquivos de Configuração do MySQL Server;<br>
#06_ Conectando no Console do MySQL Server;<br>
#07_ Adicionando uma Senha no usuário Root do MySQL Server;<br>
#08_ Criando Usuários e Permissões no MySQL Server;<br>
#09_ Adicionando os Usuários Locais no Grupo do MySQL Server;<br>
#10_ Permitindo o Acesso Remoto no MySQL Server;<br>
#11_ Acessando Remotamente o MySQL Server pelo MySQL Workbench;<br>
#12_ Acessando Remotamente o MySQL Server pelo VSCode;<br>
#13_ Desafio do Banco de Dados MySQL Server.

Site Oficial do MySQL: https://www.mysql.com/<br>
Site Oficial do MariaDB: https://mariadb.org/<br>
Site Oficial do Workbench: https://www.mysql.com/products/workbench/

Site Oficial do W3C School MySQL: https://www.w3schools.com/mysql/default.asp

O MySQL é um sistema de gerenciamento de banco de dados, que utiliza a linguagem SQL como interface. É atualmente um dos sistemas de gerenciamento de bancos de dados mais populares da Oracle Corporation, com mais de 10 milhões de instalações pelo mundo. 

[![MySQL Server](http://img.youtube.com/vi/7tl4TuxhuKg/0.jpg)](https://www.youtube.com/watch?v=7tl4TuxhuKg "MySQL Server")

Link da vídeo aula: https://www.youtube.com/watch?v=7tl4TuxhuKg

#01_ Instalando o MySQL Server e Client<br>
```bash	
#atualizando as listas do Apt
sudo apt update

#instalando o MySQL Server e Client
sudo apt install git vim libproj22 proj-data mysql-server-8.0 mysql-client-8.0 
```

#02_ Verificando o Serviço e Versão do MySQL Server<br>
```bash
#verificando o serviço do MySQL Server
sudo systemctl status mysql
sudo systemctl restart mysql
sudo systemctl stop mysql
sudo systemctl start mysql

#verificando as versões do MySQL Server e Client
sudo mysqld --version
sudo mysql --version
```

#03_ Verificando a Porta de Conexão do MySQL Server<br>
```bash	
#OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
#iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
#algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
#e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN
```

#04_ Localização dos Arquivos de Configuração do MySQL Server<br>
```bash	
/etc/mysql                          <-- Diretório de configuração do SGBD MySQL Server
/etc/mysql/mysql.conf.d/mysqld.cnf  <-- Arquivo de configuração do Servidor SGBD do MySQL Server
/etc/mysql/mysql.conf.d/mysql.cnf   <-- Arquivo de configuração do Cliente SGBD do MySQL Client
/var/log/mysql                      <-- Diretório padrão dos Logs do SGBD Mysql Server
/var/lib/mysql                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server
```

#05_ Acessando o MySQL Server utilizando o MySQL Client (Console)<br>
```bash	
#OBSERVAÇÃO IMPORTANTE: por padrão o usuário Root do MySQL Server não tem senha para
#se logar no MySQL Client Console, sendo necessário fazer a configuração de segurança.

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

#06_ Aplicando a segurança de acesso do usuário Root no MySQL Server<br>
```sql
/* OBSERVAÇÃO IMPORTANTE: O MYSQL TAMBÉM É CASE SENSITIVE, CUIDADO COM O NOME DA BASE
DE DADOS, TABELAS, COLUNAS, USUÁRIOS, ETC... NO MOMENTO DA CRIAÇÃO OU ATUALIZAÇÃO */

/* visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* utilizando a base de dados mysql */
USE mysql;

/* mostrando as tabelas criadas na base de dados mysql */
SHOW TABLES;

/* selecionando o dados da tabela user, filtrando somente as colunas: user e host */
SELECT user,host FROM user;

/* alterando a senha do usuário Root Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';

/* alterando as permissões do usuário Root Localhost */
GRANT ALL ON *.* TO 'root'@'localhost';

/* aplicando todas as mudanças na base de dados */
FLUSH PRIVILEGES;

/* saindo do MySQL Client Console */
exit
```
```bash
#testando novamente o acesso ao MySQL Server agora com senha
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```

#07_ Criando um usuário DBA (Data Base Administrator) no MySQL Server<br>
```sql
/* criando o usuário DBA Localhost */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO DBA CONFORME A SUA NECESSIDADE */
CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pti@2018';

/* alterando as permissões do usuário DBA Localhost */
GRANT ALL ON *.* TO 'dba'@'localhost';

/* aplicando todas as mudanças na base de dados */
FLUSH PRIVILEGES;

/* Verificando o Usuário DBA criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='dba';

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
SHOW DATABASES;

/* saindo do MySQL Client Console */
exit
```

#08_ Adicionando o Usuário Local no Grupo Padrão do MySQL Server<br>
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G mysql $USER

#fazendo login em um novo grupo do MySQL
newgrp mysql

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo MYSQL
sudo getent group mysql

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit

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

#09_ Permitindo o Root do MySQL se Logar Remotamente no MySQL Client Console<br>
```bash
#fazendo o backup do arquivo de configuração do MySQL Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf.old

#editar o arquivo de configuração do MySQL Server
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
INSERT

	#alterar a linha: 31 variável do: bind-address = 127.0.0.1 para: 0.0.0.0
	bind-address = 0.0.0.0

	#comentar a linha:32 da variável do: mysqlx-bind-address
	#mysqlx-bind-address = 127.0.0.1

#salvar e sair do arquivo	
ESC SHIFT :x <Enter>

#testando o arquivo de configuração do MySQL SERVER (NÃO COMENTADO NO VÍDEO)
#opção do comando mysqld: --validate-config (checked for problems without running the server)
sudo mysqld --validate-config

#reiniciar o serviço do MySQL Server
sudo systemctl restart mysql
sudo systemctl status mysql

#analisando os Log's e mensagens de erro do Servidor do MySQL (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu mysql

#acessar o MySQL Server como Root
sudo mysql -u root -p
```
```sql
/* criando o usuário Root Remoto do MySQL Server */
/* OBSERVAÇÃO IMPORTANTE: QUANDO UTILIZADO O CARÁCTER % (PORCENTAGEM) O MYSQL 
ENTENDE QUE O USUÁRIO PODE ACESSAR O SERVIDOR DE QUALQUER ORIGEM, DIFERENTE DA
OPÇÃO LOCALHOST QUE SÓ PERMITE O ACESSO LOCAL. CUIDADO COM ESSA OPÇÃO */
/* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
GRANT ALL ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;

/* verificando o usuário Root Remoto do MySQL Server */
USE mysql;
SELECT user,host FROM user;
exit
```

#10_ Conectando no MySQL Server utilizando o MySQL Workbench<br>
```bash
#OBSERVAÇÃO IMPORTANTE: após a conexão com o MySQL Server utilizando MySQL Workbench somente o
#Banco de Dados Sys (Sistema) é mostrado em Esquemas, os demais Banco de Dados utilizados pelo
#MySQL Server não são mostrados por motivo de segurança.

#Link para download do MySQL Workbench: https://dev.mysql.com/downloads/workbench/

#conectando com o usuário Root Remoto do MySQL no Workbench
MySQL Connections: +
  Connection Name: wsvaamonde
  Connection Method: Standard (TCP/IP)
  Parameters:
    Hostname: 172.16.1.20 (alterar o endereço IPv4 do seu servidor)
    Port: 3306
    Username: root
    Password:
      Store in Keychain
        Password: pti@2018 (alterar a senha do usuário root do seu servidor)
    <OK>
  <Test Connection>
    <OK>
<OK>
```

#11_ Integrando o MySQL Server com o Visual Studio Code VSCode<br>
```bash
#OBSERVAÇÃO IMPORTANTE: CONFORME COMENTADO NO VÍDEO E MOSTRADO, NA EXTENSÃO DO VSCODE NÃO APARECE
#NENHUM BANCO DE DADOS PADRÃO DO MYSQL SERVER, SOMENTE OS BANCOS DE DADOS CRIADOS PELO USUÁRIO,
#POR MOTIVO DE SEGURANÇA.

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
          Host: 172.16.1.20 (alterar o endereço IPv4 do seu servidor)
          Port: 3306
          Username: root
          Password: pti@2018 (alterar a senha do usuário root do seu servidor)
    <Save>
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** CRIAR UM BANCO DE DADOS COM O: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson), DENTRO DESSE BANCO DE DADOS CRIAR UMA TABELA COM O: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) COM AS SEGUINTES COLUNAS: __`Nome (Tipo Texto)`__ e __`Idade (Tipo Numérico)`__ (TUDO EM MINÚSCULO), DENTRO DESSA TABELA CRIAR UM REGISTRO COM: __`Seu Nome e Sobrenome e Sua Idade`__ (VEJA O SITE W3SCHOOLS). **OBSERVAÇÃO IMPORTANTE:** NÃO PRECISA CRIAR CHAVE PRIMÁRIA (Primary Key) NA SUA TABELA.

**#13_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO PROCEDIMENTO DE CONFIGURAÇÃO DO OPENSSH NO GRUPO DO __`MYSQL`__ PARA ADMINISTRAR O SERVIDOR SEM A NECESSIDADE DO COMANDO SUDO.

**#14_ DESAFIO-03:** CRIAR MAIS UM USUÁRIO NO MYSQL COM O SEU NOME: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson), CONFIGURAR TODAS AS PERMISSÕES IGUAIS AO USUÁRIO __`DBA LOCALHOST`__, TESTAR A CONEXÃO NO TERMINAL.

**#15_ DESAFIO-04:** CRIAR OS USUÁRIOS: __`dba`__ E SEU NOME: __`seunome`__ REMOTOS, CONFIGURAR TODAS AS PERMISSÕES IGUAIS AO USUÁRIO __`ROOT REMOTO %`__, TESTAR A CONEXÃO NO TERMINAL, MYSQL WORKBENCH E VSCODE.

**#16_ DESAFIO-05:** CONHECER O PROJETO: *DB4Free https://www.db4free.net/*, NA OPÇÃO DE BANCO DE DADOS, FAZER A CRIAÇÃO DE UM BANCO DE DADOS GRATUITO NA NUVEM (CLOUD) SEGUINDO O MESMO PROCEDIMENTO DO __`DESAFIO-01 DA ETAPA: 12`__ E DEPOIS TESTAR A CONEXÃO NO MYSQL WORKBENCH E VSCODE.

**OBSERVAÇÃO IMPORTANTE:** APÓS O CADASTRO NO SITE DO DB4FREE, DEPENDENDO DA CONTA DE EMAIL QUE VOCÊ ESTÁ UTILIZANDO, O RECEBIMENTO DO EMAIL DE CONFIRMAÇÃO DE CADASTRO DEMORA OU PODE ESTÁ NA CAIXA DE SPAM DA SUA CONTA, VERIFICAR ANTES DE TENTAR O CADASTRO NOVAMENTE.

**OBSERVAÇÃO IMPORTANTE:** APÓS VÁRIOS TESTES FEITO NO DB4FREE O MESMO APRESENTOU UM GRANDE DELAY NAS CONEXÕES, NO MYSQL WORKBENCH E NA EXTENSÃO DO VSCODE MUITAS VEZES É NECESSÁRIO ATUALIZAR VÁRIAS VEZES PARA MOSTRAR A BASE DE DADOS E AS TABELAS CRIADAS. PARA CORRIGIR ESSA FALHA NO VSCODE E NO MYSQL WORKBENCH RECOMENDO AUMENTAR O PARÂMETRO DE: Connect Timeout PARA 100000.

**OBSERVAÇÃO IMPORTANTE:** APÓS VÁRIOS RELATOS DOS ALUNOS REFERENTE A DEMORA OU NÃO RECEBIMENTO DO EMAIL DE CONFIRMAÇÃO DO SITE DB4FREE, PESQUISANDO NA INTERNET ENCONTREI OS PROJETOS ABAIXO PARA TESTE (EM FASE DE TESTES E HOMOLOGAÇÃO): 

01) *Free MySQL Hosting: https://www.freemysqlhosting.net/*<br>
02) *Remote MySQL: https://remotemysql.com*<br>
03) *Free SQL Database: https://www.freesqldatabase.com/*<br>
04) *Free DB: https://freedb.tech*

=========================================================================================

OBSERVAÇÃO IMPORTANTE: COMENTAR NO VÍDEO DO MYSQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: Desafio do Mysql realizado com sucesso!!! #BoraParaPrática

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/03-mysql.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomysql #desafiomysqlserver