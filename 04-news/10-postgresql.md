#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 26/09/2025<br>
#Data de atualização: 26/09/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POSTGRESQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PostgreSQL realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/10-postgresql.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosql #desafiopostgresql

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do PostgreSQL: https://www.postgresql.org/<br>
Site Oficial do DBeaver: https://dbeaver.io/<br>
Site Oficial do PgAdmin: https://www.pgadmin.org/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School POSTGRESQL: https://www.w3schools.com/postgresql/<br>
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
Prompt-02: quais as principais Big Techs no Brasil e no mundo que utiliza o PostgreSQL Server?
```

**O QUE É E PARA QUE SERVER O POSTGRESQL SERVER:** O PostgreSQL Server é um Sistema Gerenciador de Banco de Dados Relacional (SGBD) de código aberto, robusto e extremamente poderoso, utilizado para armazenar, organizar e gerenciar grandes volumes de dados de maneira segura, confiável e eficiente. Ele é amplamente adotado em aplicações que exigem alta disponibilidade, desempenho, escalabilidade e integridade dos dados.

**O QUE É E PARA QUE SERVER O RDBMS:** O *RDBMS (Relational Database Management System)* é um Sistema de Gerenciamento de Banco de Dados Relacional. Ele serve para armazenar, organizar e manipular dados de forma estruturada, usando tabelas que se relacionam entre si por meio de chaves primárias e estrangeiras, como por exemplo dos Banco de Dados: *MySQL Server, PostgreSQL Serer, MariaDB Server (Fork do MySQL Server), Microsoft SQL Server ou Oracle Database Server*.

**O QUE É E PARA QUE SERVER O SGBD:** Um SGBD (Sistema de Gerenciamento de Banco de Dados) é um software que permite criar, gerenciar, manipular e consultar bancos de dados de forma estruturada e segura.

**O QUE É E PARA QUE SERVER O DBA:** O *DBA (Data Base Administrator)* desempenha um papel essencial na administração de sistemas de banco de dados, garantindo que as informações sejam armazenadas, acessadas e protegidas corretamente, fazendo as funções de: *Instalação, Configuração, Monitoramento, Desempenho, Backup/Restaure, Segurança, Gerenciamento, Planejamento, Automação, etc*.

**O QUE É E PARA QUE SERVER O SQL:** O *SQL (Structured Query Language)* é a linguagem padrão para acessar e manipular *Bancos de Dados Relacionais*. Ela permite que você interaja com os dados de forma estruturada — seja para consultar, inserir, atualizar ou excluir informações. O SQL é o que você usa para **"Conversar"** com o banco de dados, *T-SQL (Transact-SQL), PL-SQL (Procedural Language/Structured Query Language), PL-pgSQL (Procedural Language/PostgreSQL) etc.*, são variações do SQL padrão, com recursos extras de programação.

[![PostgreSQL Server](http://img.youtube.com/vi//0.jpg)]( "PostgreSQL Server")

Link da vídeo aula: 

## 01_ Instalando o PostgreSQL Server no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do PostgreSQL Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim perl python2 python3 unzip pwgen xz-utils bzip2 curl ghostscript zlib1g \
zlib1g-dev apt-transport-https build-essential software-properties-common gnupg ca-certificates \
libssl-dev libffi-dev libgmp3-dev virtualenv python3-pip libpq-dev python3-dev libexpat1 ssl-cert
```

**OBSERVAÇÃO IMPORTANTE:** o tempo todo a *Biblioteca Libssl* sofre alteração, antes de fazer o download do arquivo verifique a versão no link: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/

```bash
#download da última versão do Libssl (link atualizado em 15/08/2025)
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.24_amd64.deb

#instalando a biblioteca Libssl no Ubuntu Server
#opção do comando dpkg: -i (install), * (all - Qualquer coisa)
sudo dpkg -i libssl*.deb

#verificando a biblioteca Libssl instalado no Ubuntu Server
#opção do comando dpkg: -l (list)
sudo dpkg -l libssl1.1
```

## 02_ Baixando e instalando a Chave GPG do PostgreSQL Server no Ubuntu Server
```bash
#baixando e instalando a chave GPG do PostgreSQL Server do site oficial
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg > /dev/null
```

## 03_ Criando o repositório local do PostgreSQL Server no Ubuntu Server
```bash
#adicionando o repositório local do PostgreSQL Server no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
```

## 04_ Atualizando as Listas do Apt e Instalando o PostgreSQL Server e Client no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório do PostgreSQL Server
sudo apt update

#instalando o PostgreSQL Server e Client no Ubuntu Server
sudo apt install postgresql-18 postgresql-client-18
```

## 05_ Habilitando o Serviço do PostgreSQL Server no Ubuntu Server
```bash
#habilitando o serviço do PostgreSQL Server
sudo systemctl daemon-reload
sudo systemctl enable postgresql
sudo systemctl start postgresql
```

## 06_ Verificando o Serviço e Versão do PostgreSQL Server e do PHP no Ubuntu Server
```bash
#verificando o serviço do PostgreSQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status postgresql
sudo systemctl restart postgresql
sudo systemctl reload postgresql
sudo systemctl stop postgresql
sudo systemctl start postgresql

#analisando os Log's e mensagens de erro do Servidor do PostgreSQL Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu postgresql
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do PostgreSQL Server
#opcão do comando postgres: -V (version)
/usr/lib/postgresql/18/bin/postgres --version

#verificando a versão do Client do PostgreSQL Server
#opção do comando psql: -V (version)
sudo psql -V
```

## 07_ Verificando a Porta de Conexão do PostgreSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-5432 do PostgreSQL Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'5432' -sTCP:LISTEN
```

## 08_ Localização dos Arquivos de Configuração do PostgreSQL Server no Ubuntu Server
```bash
/etc/postgresql/                          <-- Diretório padrão das configurações do PostgreSQL Server
/etc/postgresql/18/                       <-- Diretório da versão 18 do PostgreSQL Server
/etc/postgresql/18/main                   <-- Diretório MAIN da versão 18 do PostgreSQL Server
/etc/postgresql/18/main/conf.d/           <-- Diretório das configurações extras do PostgreSQL Server
/etc/postgresql/18/main/postgresql.conf   <-- Arquivo de configuração do PostgreSQL Server
/etc/postgresql/18/main/pg_hba.conf       <-- Arquivo de liberação de acesso a rede do PostgreSQL Server
/var/log/postgresql                       <-- Diretório dos arquivos de Logs do PostgreSQL Server
/var/lib/postgresql/18/main               <-- Diretório da base de dados do PostgreSQL Server
```

## 09_ Adicionando o Usuário Local no Grupo Padrão do PostgreSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do PostgreSQL Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G postgres $USER

#fazendo login em um novo grupo do PostgreSQL Server
newgrp postgres

#verificando os identificadores de usuário e grupos
id

#verificando as informações do grupo POSTGRES do PostgreSQL Server
#opção do comando getent: group (the database system group)
sudo getent group postgres

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit, logout ou tecla de atalho: Ctrl+D
exit
```

## 10_ Testando a conexão com o PostgreSQL Server local no Ubuntu Server
```bash
#testando a conexão no PostgreSQL com o usuário postgres usando o client psql
#opção do comando sudo: -u (user)
sudo -u postgres psql

#lista informações da conexão atual (usuário, banco, host, porta)
#opção do comando \conninfo: (database information connect)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\conninfo

#lista as conexões abertas e muda para outro banco, se desejado
#opção do comando \c: (connection database)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\c

#lista todos os usuários e seus papéis/roles de segurança
#opção do comando \dg: (database roles)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\dg

#lista todas as bases de dados disponíveis no servidor
#opção do comando \l: (list databases)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\l

#lista os espaços de tabelas do servidor
#opção do comando \db: (database tablespaces)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\db

#lista todos os esquemas do banco atual
#opção do comando \dn: (database namespaces)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\dn

#lista todas as funções definidas no banco atual
#opção do comando \df: (describe functions)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\df

#mostra as variáveis de configuração em tempo real
#opção do comando \set: (show psql settings)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\set

#saindo do PostgreSQL Server
#opção do comando \q: (quit)
#mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html
\q
```

## 11_ Configurando a Senha do Usuário Admin (postgres) no Ubuntu Server
```bash
#configurando a senha de acesso ao PostgreSQL Server
#opção do comando sudo: -u (user)
#opção do comando psql: --command (execute the given command string)
sudo -u postgres psql --command '\password postgres'
  Enter new password for user "postgres": SUA_SENHA_SEGURA
  Enter it again: SUA_SENHA_SEGURA
```

## 12_ Atualizando os arquivo de configuração do PostgreSQL Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do PostgreSQL Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/postgresql/18/main/postgresql.conf /etc/postgresql/18/main/postgresql.conf.old

#fazendo o backup do arquivo de autenticação do PostgreSQL Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/postgresql/18/main/pg_hba.conf /etc/postgresql/18/main/pg_hba.conf.old

#atualizando o arquivo de configuração do PostgreSQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/postgresql/18/main/postgresql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/postgresql.conf

#atualizando o arquivo de configuração de autenticação do PostgreSQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/postgresql/18/main/pg_hba.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pg_hba.conf
```

## 13_ Editando os arquivo de configuração do PostgreSQL Server no Ubuntu Server
```bash
#editar o arquivo de configuração do PostgreSQL Server
sudo vim /etc/postgresql/18/main/postgresql.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 28 variável do: listen_addresses = '*' padrão é: listen_addresses = 'localhost'
listen_addresses = '*'
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração de autenticação do PostgreSQL Server
sudo vim /etc/postgresql/18/main/pg_hba.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas: 24 e 25 das variáveis: host 0.0.0.0/0 e host ::/0
host    all             all             0.0.0.0/0               scram-sha-256
host    all             all             ::/0                    scram-sha-256
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#reiniciar o serviço do PostgreSQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units)
sudo systemctl restart postgresql
sudo systemctl status postgresql

#analisando os Log's e mensagens de erro do PostgreSQL Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu postgresql

#testando a conexão no PostgreSQL com o usuário postgres usando o client psql
#opção do comando sudo: -u (user)
sudo -u postgres psql
```

## 14_ Conectando no PostgreSQL Server utilizando o DBeaver Community Edition no Windows ou GNU/Linux

Link para download do DBeaver Community: https://dbeaver.io/download/

```bash
#conectando com o usuário Postgres Remoto do PostgreSQL Server no DBeaver Community
Menu
  Pesquisa Indexada: DBeaver-ce
    Select your database: PostgreSQL <Avançar>
      Main
        Server
          Connect by: Host
          URL: jdbc:postgresql://172.16.1.20:5432/postgres
          Host: 172.16.1.20
          Port: 5432
          Database: postgres
        Authentication
          Authentication: Database Native
          Username: postgres
          Password: SUA_SENHA_SEGURA
          Save password locally: Yes
      <Test Connection>
    <Concluir>
```

## 15_ Integrando o PostgreSQL Server com o Visual Studio Code VSCode no Windows ou GNU/Linux

```bash
#instalando a Extensão do PostgreSQL Server no VSCode
VSCode
  Extensões
    Pesquisar
      PostgreSQL (PostgreSQL Client for Visual Studio Code)
        Instalar

#configurando a conexão com o PostgreSQL Server no VSCode
VSCode
  Database
    <Create Connection>
      Name: UbuntuServer
      Server Type:
        PostgreSQL
          Host: ENDEREÇO_IPV4_SERVIDOR (alterar o endereço IPv4 do seu servidor)
          Port: 3306
          Username: root
          Password: sua_senha (alterar a senha do usuário root do seu servidor)
    <Save>
```

========================================DESAFIOS=========================================

**#10_ DESAFIO-01:** CRIAR UM NOVO DIRETÓRIO NA RAIZ DO NGINX EM: __`/var/www/html`__ COM: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) PARA UM NOVO SITE, DENTRO DO SEU DIRETÓRIO CRIAR UMA NOVA PÁGINA EM HTML CHAMADA: __`index.html`__ (TUDO EM MINÚSCULA), ADICIONAR MAIS OPÇÕES (MÍNIMO DE 03 OPÇÕES NOVAS) DO HTML5 (VEJA O SITE W3SCHOOLS) E COLOCAR __`02 (DUAS) IMAGENS`__ NA PÁGINA.

**#11_ DESAFIO-02:** NO SEU NOVO DIRETÓRIO CRIAR UM ARQUIVO EM PHP CHAMADO: __`seunome.php`__, ADICIONAR __`MAIS OPÇÕES DO PHP (MÍNIMO DE 02 OPÇÕES NOVAS)`__ (VEJA O SITE W3SCHOOLS) TESTAR NO SEU NAVEGADOR AS MUDANÇAS. **DICA-01:** FAZER OS *HYPERLINK* DAS PÁGINAS: __`index.html`__ COM A PÁGINA PHP __`seunome.php`__ PARA FACILITAR O ACESSO E COMEÇAR UM PROJETO DE SITE. **DICA-02:** RECOMENDO PESQUISAR A FUNÇÃO DE *DATA E HORA* DO PHP PARA ADICIONAR NA PÁGINA OU OUTRAS FUNÇÕES DO SEU INTERESSE.

**#12_ DESAFIO-03:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO SISTEMA NA ETAPA DE CONFIGURAÇÃO DO *OPENSSH SERVER* NO GRUPO DO NGINX __`www-data`__, TESTAR AS PERMISSÕES DE ACESSO NOS DIRETÓRIOS DO NGINX E NOS DIRETÓRIOS DOS SITES CRIADOS.

**#13_ NOVO DESAFIO-04:** CONHECER O PROJETO: *https://profreehost.com/*, CRIAR UMA CONTA: *Free Register Now*, FAZER AS CONFIGURAÇÕES BÁSICAS DO SEU DOMÍNIO E REPLICAR OS __`DESAFIOS 01 E 02`__ NO SITE ON-LINE (CLOUD). **OBSERVAÇÃO:** UTILIZAR O DOMÍNIO: __`unaux.com`__ PARA A CRIAÇÃO DO DOMÍNIO (MENOS RESTRIÇÃO DE ACESSO).

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NGINX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do NGINX realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/09-nginx.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionginx