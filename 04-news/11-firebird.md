#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 01/10/2025<br>
#Data de atualização: 01/10/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POSTGRESQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Firebird realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/11-firebird.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosql #desafiofirebird

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do FirebirdSQL Server no Ubuntu Server<br>
#02_ Download do FirebirdSQL Server 5.x do site Oficial no Ubuntu Server<br>
#03_ Descompactando e instalando o FirebirdSQL Server 5.x no Ubuntu Server<br>
#04_ Habilitando o Serviço do FirebirdSQL Server no Ubuntu Server<br>
#05_ Verificando o Serviço e Versão do FirebirdSQL Server no Ubuntu Server<br>
#06_ Verificando a Porta de Conexão do FirebirdSQL Server no Ubuntu Server<br>
#07_ Localização dos Arquivos de Configuração do FirebirdSQL Server no Ubuntu Server<br>
#08_ Adicionando o Usuário Local no Grupo Padrão do FirebirdSQL Server no Ubuntu Server<br>
#09_ Testando a conexão com o FirebirdSQL Server local no Ubuntu Server<br>
#10_ Atualizando o arquivo de configuração do FirebirdSQL Server no Ubuntu Server<br>
#11_ Editando o arquivo de configuração do FirebirdSQL Server no Ubuntu Server<br>
#12_ Conectando no FirebirdSQL Server utilizando o DBeaver Community Edition no Windows ou GNU/Linux<br>
#13_ Integrando o FirebirdSQL Server com o Visual Studio Code VSCode no Windows ou GNU/Linux<br>
#14_ Desafios do FirebirdSQL Server<br>

Site Oficial do PostgreSQL: https://www.firebirdsql.org/<br>
Site Oficial do DBeaver: https://dbeaver.io/

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
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

**O QUE É E PARA QUE SERVER O POSTGRESQL SERVER:** O Firebird Server é um sistema gerenciador de banco de dados relacional (SGBD), gratuito e open source, derivado do código do InterBase da Borland. Ele é bastante usado em aplicações comerciais, principalmente em sistemas de gestão empresarial (ERP), automação comercial, financeira, hospitalar e outros que exigem banco de dados leve, confiável e de fácil manutenção.

**O QUE É E PARA QUE SERVER O RDBMS:** O *RDBMS (Relational Database Management System)* é um Sistema de Gerenciamento de Banco de Dados Relacional. Ele serve para armazenar, organizar e manipular dados de forma estruturada, usando tabelas que se relacionam entre si por meio de chaves primárias e estrangeiras, como por exemplo dos Banco de Dados: *MySQL Server, PostgreSQL Serer, MariaDB Server (Fork do MySQL Server), Microsoft SQL Server ou Oracle Database Server*.

**O QUE É E PARA QUE SERVER O SGBD:** Um SGBD (Sistema de Gerenciamento de Banco de Dados) é um software que permite criar, gerenciar, manipular e consultar bancos de dados de forma estruturada e segura.

**O QUE É E PARA QUE SERVER O DBA:** O *DBA (Data Base Administrator)* desempenha um papel essencial na administração de sistemas de banco de dados, garantindo que as informações sejam armazenadas, acessadas e protegidas corretamente, fazendo as funções de: *Instalação, Configuração, Monitoramento, Desempenho, Backup/Restaure, Segurança, Gerenciamento, Planejamento, Automação, etc*.

**O QUE É E PARA QUE SERVER O SQL:** O *SQL (Structured Query Language)* é a linguagem padrão para acessar e manipular *Bancos de Dados Relacionais*. Ela permite que você interaja com os dados de forma estruturada — seja para consultar, inserir, atualizar ou excluir informações. O SQL é o que você usa para **"Conversar"** com o banco de dados, *T-SQL (Transact-SQL), PL-SQL (Procedural Language/Structured Query Language), PL-pgSQL (Procedural Language/PostgreSQL) etc.*, são variações do SQL padrão, com recursos extras de programação.

[![FirebirdSQL Server](http://img.youtube.com/vi//0.jpg)]( "FirebirdSQL Server")

Link da vídeo aula: 

## 01_ Instalando as Dependências do FirebirdSQL Server no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do FirebirdSQL Server no Ubuntu Server
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim libicu-dev libncurses5 libtommath1 libtommath-dev unixodbc unixodbc-dev
```

## 02_ Download do FirebirdSQL Server 5.x do site Oficial no Ubuntu Server

Link Oficial das versões do FirebirdSQL Server: https://github.com/FirebirdSQL/firebird/releases

```bash
#download da última versão do FirebirdSQL Server (link atualizado em 01/10/2025)
#OBSERVAÇÃO IMPORTANTE: o tempo todo o FirebirdSQL Server sofre alteração, antes
#de fazer o download do arquivo verifique a versão no link: https://github.com/FirebirdSQL/firebird/releases
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O firebirdsql.tar.gz https://github.com/FirebirdSQL/firebird/releases/download/v5.0.3/Firebird-5.0.3.1683-0-linux-x64.tar.gz
```

## 03_ Descompactando e instalando o FirebirdSQL Server 5.x no Ubuntu Server
```bash
#descompactando o download do arquivo do FirebirdSQL Server
#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
tar -xzvf firebirdsql.tar.gz

#instalando o FirebirdSQL Server no Ubuntu Server
sudo ./Firebird*/install.sh
  Firebird 5.0.3.1683-0.x64 Installation
  Press Enter to start installation or ^C to abort <Enter>
  Please enter new password for SYSDBA user: SUA_SENHA_SEGURA
```

## 04_ Habilitando o Serviço do FirebirdSQL Server no Ubuntu Server
```bash
#habilitando o serviço do FirebirdSQL Server no Ubuntu Server
sudo systemctl daemon-reload
sudo systemctl enable firebird
sudo systemctl start firebird
```

## 05_ Verificando o Serviço e Versão do FirebirdSQL Server no Ubuntu Server
```bash
#verificando o serviço do FirebirdSQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status firebird
sudo systemctl restart firebird
sudo systemctl reload firebird
sudo systemctl stop firebird
sudo systemctl start firebird

#analisando os Log's e mensagens de erro do Servidor do FirebirdSQL Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu firebird
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do FirebirdSQL Server
#opção do comando gstat: -z (display version number)
/opt/firebird/bin/gstat -z

#verificando a versão do Client do FirebirdSQL Server
#opção do comando psql: --version (version)
/opt/firebird/bin/isql -z (show program and server version)
```

## 06_ Verificando a Porta de Conexão do FirebirdSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-3050 do FirebirdSQL Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'3050' -sTCP:LISTEN
```

## 07_ Localização dos Arquivos de Configuração do FirebirdSQL Server no Ubuntu Server
```bash
/opt/firebird/                <-- Diretório padrão das configurações do FirebirdSQL Server
/opt/firebird/bin/            <-- Diretório padrão dos binários do FirebirdSQL Server
/opt/firebird/examples/       <-- Diretório padrão dos exemplos de Banco de Dados do FirebirdSQL Server
/opt/firebird/plugins/        <-- Diretório padrão dos plugins do FirebirdSQL Server
/opt/firebird/firebird.conf   <-- Arquivo de configuração padrão do FirebirdSQL Server
```

## 08_ Adicionando o Usuário Local no Grupo Padrão do FirebirdSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** você pode substituir a variável de ambiente: __`$USER`__ pelo nome do usuário existente no sistema para adicionar no Grupo desejado.

```bash
#adicionando o usuário local (logado) no grupo do FirebirdSQL Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G firebird $USER

#fazendo login em um novo grupo do FirebirdSQL Server
newgrp firebird

#verificando os identificadores de usuário e grupos
id

#verificando as informações do grupo FIREBIRD do FirebirdSQL Server
#opção do comando getent: group (the database system group)
sudo getent group firebird

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit, logout ou tecla de atalho: Ctrl+D
exit
```

## 09_ Testando a conexão com o FirebirdSQL Server local no Ubuntu Server
```bash
#testando a conexão no FirebirdSQL com o usuário SYSADMIN usando o client isql
sudo /opt/firebird/bin/isql
  SQL> CONNECT "/opt/firebird/examples/empbuild/employee.fdb"
  CON> USER 'SYSDBA' PASSWORD 'pti@2018';
  SQL> SHOW TABLES;
  SQL> QUIT;
```

## 10_ Atualizando o arquivo de configuração do FirebirdSQL Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do servidor FirebirdSQL Server
#opção do comando cp: -v (verbose)
sudo cp -v /opt/firebird/firebird.conf /opt/firebird/firebird.conf.old

#atualizando o arquivo de configuração do FirebirdSQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /opt/firebird/firebird.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/firebird.conf
```

## 11_ Editando o arquivo de configuração do FirebirdSQL Server no Ubuntu Server
```bash
#editar o arquivo de configuração do FirebirdSQL Server
sudo vim /opt/firebird/firebird.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 33 variável do: RemoteBindAddress conforme sua necessidade
RemoteBindAddress = 172.16.1.20
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#reiniciar o serviço do FirebirdSQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units)
sudo systemctl restart firebird
sudo systemctl status firebird

#analisando os Log's e mensagens de erro do FirebirdSQL Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu firebird
```

## 12_ Conectando no FirebirdSQL Server utilizando o DBeaver Community Edition no Windows ou GNU/Linux

Link para download do DBeaver Community: https://dbeaver.io/download/

```bash
#conectando com o usuário Sysadmin Remoto do FirebirdSQL Server no DBeaver Community
Menu
  Pesquisa Indexada: DBeaver-ce
    New Database Connection
      Select your database: Firebird <Avançar>
        Main
          Server
            Connect by: UbuntuServer
            URL: jdbc:firebirdsql://ENDEREÇO_IPV4_SERVIDOR:3050//opt/firebird/examples/empbuild/employee.fdb
            Host: ENDEREÇO_IPV4_SERVIDOR (alterar o endereço IPv4 do seu servidor)
            Port: 3050
            Path: /opt/firebird/examples/empbuild/employee.fdb
          Authentication
            Authentication: Database Native
            Username: SYSDBA
            Password: SUA_SENHA_SEGURA
            Save password locally: Yes
        <Test Connection>
          Download driver filer
            <Download>
              Connection Test
                <OK>
      <Finish>
```

## 13_ Integrando o FirebirdSQL Server com o Visual Studio Code VSCode no Windows ou GNU/Linux
```bash
#instalando a Extensão do FirebirdSQL Server no VSCode
VSCode
  Extensões
    Pesquisar
      Firebird (SQLTools Firebird)
        Instalar

#configurando a conexão com o FirebirdSQL Server no VSCode
VSCode
  SQLTools
    <Add new Connection>
      Connection Assistant
        Select your database driver
          SQLTools Firebird
        Connection Settings
          Connection name*: UbuntuServer
          Connection group:
          Host*: 172.16.1.20
          Port*: 3050
          Database Name*: /opt/firebird/examples/empbuild/employee.fdb
          User*: SYSDBA
          Password: Save Password
        <Test Connection>
    <Save Connection>
  <Connection>
```

========================================DESAFIOS=========================================

**#14_ DESAFIO-01:** CRIAR UM BANCO DE DADOS COM O: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson), DENTRO DESSE BANCO DE DADOS CRIAR UMA TABELA COM O NOME: __`seunome`__ (TUDO EM MINÚSCULO - SOMENTE O PRIMEIRO NOME, EXEMPLO: robson) COM AS SEGUINTES COLUNAS: __`Nome (Tipo Texto)`__ e __`Idade (Tipo Numérico)`__ (TUDO EM MINÚSCULO), DENTRO DESSA TABELA CRIAR UM REGISTRO COM: __`Seu Nome e Sobrenome e Sua Idade`__ (VEJA O SITE W3SCHOOLS). **OBSERVAÇÃO IMPORTANTE:** NÃO PRECISA CRIAR CHAVE PRIMÁRIA (Primary Key) NA SUA TABELA.

**#15_ DESAFIO-02:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO PROCEDIMENTO DE CONFIGURAÇÃO DO *OPENSSH* NO GRUPO DO FIREBIRDSQL SERVER __`firebird`__ PARA ADMINISTRAR O SERVIDOR SEM A NECESSIDADE DO COMANDO SUDO.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POSTGRESQL SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PostgreSQL realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/11-firebird.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiosql #desafiofirebird