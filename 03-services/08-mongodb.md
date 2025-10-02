#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/01/2023<br>
#Data de atualização: 31/08/2025<br>
#Versão: 0.39<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/08-mongodb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomongodb #desafiocompass

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as Dependências do MongoDB Server no Ubuntu Server;<br>
#02_ Baixando e instalando a Chave GPG do MongoDB Server no Ubuntu Server;<br>
#03_ Criando o repositório do MongoDB Server no Ubuntu Server;<br>
#04_ Atualizando as Lista do Apt com o novo Repositório do MongoDB Server no Ubuntu Server;<br>
#05_ Instalando o MongoDB Server e Shell no Ubuntu Server;<br>
#06_ Habilitando o Serviço do MongoDB Server no Ubuntu Server;<br>
#07_ Verificando o Serviço e Versão do MongoDB Server e do Shell no Ubuntu Serve;<br>
#08_ Verificando a Porta de Conexão do MongoDB Server no Ubuntu Server;<br>
#09_ Localização dos Arquivos de Configuração do MongoDB Server no Ubuntu Server;<br>
#10_ Adicionado o Usuário Local no Grupo Padrão do MongoDB Server no Ubuntu Server;<br>
#11_ Testando a Conexão Local com o MongoDB Server via Shell no Ubuntu Server;<br>
#12_ Comandos Básicos do MongoDB Server (De-Para: MySQL Server - MongoDB Server);<br>
#13_ Criando o usuário de administração do MongoDB Server no Ubuntu Server;<br>
#14_ Configurando o MongoDB Server para suportar autenticação e Acesso Remoto no Ubuntu Server;<br>
#15_ Acessando o MongoDB "COM" e "SEM" autenticação no MongoSH (Shell) no Ubuntu Server;<br>
#16_ Integrando o MongoDB Server com o Compass GUI (Graphical User Interface) (Windows ou GNU/Linux);<br>
#17_ Integrando o MongoDB Server com o Visual Studio Code VSCode (Windows ou GNU/Linux);<br>
#18_ Fazendo o Backup do Banco de Dados do MongoDB Server (NÃO COMENTADO NO VÍDEO);<br>
#19_ Desafios de Criação de Banco de Dados no MongoDB Local e no Cloud do Atlas.<br>

Site Oficial do MongoDB: https://www.mongodb.com/<br>
Site Oficial do MongoDB Compass: https://www.mongodb.com/products/compass<br>
Site Oficial da MongoDB Atlas: https://www.mongodb.com/atlas/database<br>
Site Oficial do JSON: https://www.json.org/json-en.html

**Site Oficial do W3C (World Wide Web Consortium) School**<br>
Site Oficial do W3C School MongoDB: https://www.w3schools.com/mongodb/<br>
Site Oficial do W3C School JSON: https://www.w3schools.com/js/js_json.asp

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O MONGODB SERVER:** MongoDB é um software de banco de dados orientado a documentos livre, de código aberto e multiplataforma, escrito na linguagem C++. Classificado como um programa de banco de dados NoSQL, o MongoDB usa documentos semelhantes a JSON com esquemas.

**O QUE É E PARA QUE SERVER O JSON:** * JSON significa *JavaScript Object Notation*. É um formato leve de troca de dados, muito usado na comunicação entre sistemas, principalmente **Web e APIs**. Apesar do nome vir do JavaScript, o JSON é *independente de linguagem* — funciona com Python, Java, C#, PHP, Node.js, Go, etc.

**O QUE É E PARA QUE SERVER O BSON:** O BSON significa *Binary JSON* é um formato binário de serialização de documentos, desenvolvido principalmente para uso no **MongoDB**, mas também é utilizado em outros sistemas que precisam armazenar ou transmitir dados estruturados.

**O QUE É E PARA QUE SERVER O MONGOOSE:** O Mongoose é uma biblioteca *ODM (Object Data Modeling)* para **Node.js** que facilita a interação com bancos de dados MongoDB. Ele permite que você trabalhe com documentos MongoDB usando objetos JavaScript de forma mais estruturada e segura.

**O QUE É E PARA QUE SERVER A SEGURANÇA DA INFORMAÇÃO COM ÊNFASE EM BACKUP:** Os pilares base do conceito de *Segurança da Informação*, com ênfase em backup, são os seguintes: __`Confidencialidade`__ (Garantir que os dados só sejam acessados por pessoas autorizadas), __`Integridade`__ (Assegurar que a informação não seja alterada ou corrompida, seja acidentalmente ou de forma maliciosa), __`Disponibilidade`__ (Garantir que a informação esteja acessível sempre que necessária), __`Autenticidade`__ (Garantir que os dados sejam autênticos e a fonte de origem seja confiável) e __`Responsabilidade / Rastreabilidade`__ (Rastrear quem fez o quê, quando e como).

[![MongoDB Server](http://img.youtube.com/vi/qs-zRXaSmuM/0.jpg)](https://www.youtube.com/watch?v=qs-zRXaSmuM "MongoDB Server")

Link da vídeo aula: https://www.youtube.com/watch?v=qs-zRXaSmuM

## 01_ Instalando as Dependências do MongoDB Server no Ubuntu Server
```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do MongoDB Server
sudo apt install git vim build-essential software-properties-common gnupg apt-transport-https ca-certificates
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

## 02_ Baixando e instalando a Chave GPG do MongoDB Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o MongoDB Server possui várias versões, para verificar as *chaves GPG* de cada versão acesse o link: https://www.mongodb.org/static/pgp/

Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/release-notes/

```bash
#download da Chave GPG do MongoDB Server (VERSÃO ESTÁVEL ATÉ O MOMENTO: 8.0 EM: 31/08/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-8.0.gpg
```

## 03_ Criando o repositório do MongoDB Server no Ubuntu Server
```bash
#criando o arquivo do repositório Apt do MongoDB no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
```

## 04_ Atualizando as Lista do Apt com o novo Repositório do MongoDB Server no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório
sudo apt update
```

## 05_ Instalando o MongoDB Server e Shell no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** CONFORME VÁRIOS RELATOS E DOCUMENTAÇÃO NO GITHUB NA GUIA ISSUES: https://github.com/vaamonde/ubuntu-2204/issues O MONGODB SERVER TEM **ALGUMAS FALHAS E INCOMPATIBILIDADE** EM PROCESSADORES __`INTEL`__ OU __`AMD`__ QUE NÃO TEM OS PRINCIPAIS *RECURSOS OU TECNOLOGIAS* QUE SÃO UTILIZADAS PELO MONGODB SERVER, CAUSANDO A FALHA DE INICIALIZAÇÃO DO SERVIÇO, VEJA O LINK: https://github.com/vaamonde/ubuntu-2204/issues/7 E OS LINKS DO FÓRUM DO MONGODB PARA MAIS DETALHES: 

1. https://www.mongodb.com/pt-br/docs/manual/administration/production-notes/
2. https://pt.wikipedia.org/wiki/Advanced_Vector_Extensions
3. https://www.mongodb.com/community/forums/t/mongo-db-failed-unable-to-start-mongodb/124039
4. https://www.mongodb.com/community/forums/t/setting-up-mongodb-v5-0-on-ubuntu-20-core-dump-status-4-ill/120705
5. https://www.mongodb.com/community/forums/t/installing-mongodb-5-0-on-a-qemu-vm/166192

```bash
#verificando a compatibilidade de recursos dos Processadores INTEL e AMD
#Intel e AMD AVX (Advanced Vector Extensions) e SSE (Streaming SIMD Extensions)
#opções do comando grep: -i (ignore-case), -E (extended-regexp)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo lscpu | grep -i -E "avx|sse"
```

```bash
#instalando o MongoDB Server e Shell (Console)
sudo apt install mongodb-org yamllint
```

## 06_ Habilitando o Serviço do MongoDB Server no Ubuntu Server
```bash
#habilitando o serviço do MongoDB Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable mongod
sudo systemctl start mongod
```

## 07_ Verificando o Serviço e Versão do MongoDB Server e do Shell no Ubuntu Server
```bash
#verificando o serviço do MongoDB Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status mongod
sudo systemctl restart mongod
sudo systemctl stop mongod
sudo systemctl start mongod

#analisando os Log's e mensagens de erro do Servidor do MongoDB (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
sudo journalctl -t mongod
sudo journalctl -xeu mongod
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do MongoDB Server e do Mongo Shell
sudo mongod --version
sudo mongosh --version
```

## 08_ Verificando a Porta de Conexão do MongoDB Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-27017 do MongoDB Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'27017' -sTCP:LISTEN
```

## 09_ Localização dos Arquivos de Configuração do MongoDB Server no Ubuntu Server
```bash
/etc/mongod.conf   <-- Arquivo de configuração do MongoDB Server
/var/log/mongodb   <-- Diretório dos arquivos de Logs do MongoDB Sever
/var/lib/mongodb   <-- Diretório dos arquivos de Banco de Dados do MongoDB Server
```

## 10_ Adicionado o Usuário Local no Grupo Padrão do MongoDB Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G mongodb $USER

#fazendo login em um novo grupo do MONGODB
newgrp mongodb

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo MONGODB do MongoDB Server
#opção do comando getent: group (the database system group)
sudo getent group mongodb

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 11_ Testando a Conexão Local com o MongoDB Server via Shell no Ubuntu Server
```bash
#acessando o MongoDB Server via Shell (MongoDB Shell/Console)
mongosh
```

## 12_ Comandos Básicos do MongoDB Server (De-Para: MySQL Server - MongoDB Server)

**OBSERVAÇÃO IMPORTANTE:** Diferente do *MySQL Server* o MongoDB Server é um Banco de Dados **Não Relacional (No-SQL)**, seu conceito e diferente do **Banco de Dados Relacional** os nomes muda um pouco (SÓ FAZER O DE-PARA):

|               DE T-SQL              |                PARA NO-SQL                |
|-------------------------------------|-------------------------------------------|
|   Banco de Dados Relacional MySQL   |   Banco de Dados Não Relacional MongoDB   |
|      Database (Banco de Dados)      |         Database (Banco de Dados)         |
|          Tables (Tabelas)           |          Collections (Coleções)           |
|         Index  (Indexação)          |             Index (Indexação)             |
|             Row (Linhas)            |          Documents (Documentos)           |
|          Columns (Colunas)          |             Fields (Campos)               |
|            Join  (Juntar)           |           Linking  (Vincular)             |
|     Primary Key (Chave Primária)    |       Primary Key (Chave Primária)        |
|        Group By (Agrupar Por)       |         Aggregation (Agregação)           |

**OBSERVAÇÃO IMPORTANTE:** No MySQL Server como no MongoDB Server temos os recursos do: **CRUD (Create, Read, Update e Delete)**, seu conceito é o mesmo só mudando a forma como trabalhamos com  os *dados/informações* em cada Banco de Dados.

|   CRUD    |    T-SQL (MySQL)   |      No-SQL (MongoDB)        |
|-----------|--------------------|------------------------------|
| Database  |  CREATE DATABASE   |   use database               |
| Tables    |  CREATE TABLES     |   db.createCollection()      |
| Create    |  INSERT            |   db.collection.insertOne()  |
| Read      |  SELECT            |   db.collection.find()       |
| Update    |  UPDATE            |   db.collection.updateOne()  |
| Delete    |  DELETE            |   db.collection.deleteOne()  |

**OBSERVAÇÃO IMPORTANTE:** No MySQL Server como no MongoDB Server temos os recursos de: **DDL (Data Definition Language), DML (Data Manipulation Language), DTL (Data Transaction Language), DQL (Data Query Language) e DCL (Data Control Language)**, seu conceito é o mesmo só muda a forma como trabalhamos com os *dados/informações* em cada Banco de Dados.

```bash
#exibindo os bancos de dados existentes no MongoDB
show dbs

#alterar o database informe no MongoDB
use admin

#listar o database informe atual no MongoDB
db

#exibir os collections do database informe atual no MongoDB
show collections

#sair do MongoDB
quit
```

## 13_ Criando o usuário de administração do MongoDB Server no Ubuntu Server
```bash
#acessando o MongoDB Server via Shell (MongoDB Shell/Console)
mongosh

#alterar o database informe no MongoDB
use admin
```

**OBSERVAÇÃO IMPORTANTE:** na gravação do vídeo não consta os dois papeis que foram adicionados posteriormente na linha roles: *"root" e "clusterAdmin"*, conforme testes e comentários nos vídeos, no momento do desenvolvimento de aplicações **Node.JS** junto com o recurso de conexão do MongoDB utilizando o **Mongoose** acontecia uma falha de: __`"Erro de permissão"`__, essa falha foi corrigida adicionando essas *"Roles"* na criação do usuário e na conexão com o Banco de Dados foi adicionado a opção: *?authSource=admin*

**OBSERVAÇÃO IMPORTANTE:** No software *MongoDB Compass*, na aba de Performance, tanto no GNU/Linux ou no Microsoft Windows a falha de *acesso de permissão para monitorar o MongoDB* e apresentada com a seguinte mensagem: *Command "top" returned error "not authorized on admin to execute command { top: 1, lsid: { id: UUID("ed17ae23-570c-4652-a151-b0875183faa1") }, $db: "admin" }", and other 2 problems. View all*, para resolver essa e outras falhas foi adicionado mais *Roles (Papéis)* no usuário **admin** conforme o link: https://www.mongodb.com/docs/manual/tutorial/manage-users-and-roles/

```javascript
// criando o usuário de administração do MongoDB Server
// Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.createUser/
db.createUser(
  {
    user: "admin",
    // altere a senha conforme a sua necessidade
    pwd: "sua_senha",
    // papeis que o usuário admin vai ter na base de dados
    roles: [
      { role: 'root', db: 'admin' },
      { role: 'read', db: 'admin' },
      { role: 'hostManager', db: 'admin' },
      { role: 'backup', db: 'admin' },
      { role: 'dbAdmin', db: 'admin' },
      { role: 'userAdmin', db: 'admin' },
      { role: 'userAdminAnyDatabase', db: 'admin' },
      { role: 'dbAdminAnyDatabase', db: 'admin' },
      { role: 'readWriteAnyDatabase', db: 'admin' },
      { role: 'readAnyDatabase', db: 'admin' },
      { role: 'clusterAdmin', db: 'admin' },
      { role: 'clusterMonitor', db: 'admin' },
      { role: 'clusterManager', db: 'admin' }
    ]
  }
)
```
```bash
#visualizando os usuários criado no MongoDB Server
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.getUsers/
db.getUsers()

#saindo do MongoDB Shell
exit
```

## 14_ Configurando o MongoDB Server para suportar autenticação e Acesso Remoto no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do MongoDB Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/mongod.conf /etc/mongod.conf.old

#atualizando o arquivo de configuração do MongoDB Server do Github (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/mongod.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/mongod.conf

#editando o arquivo de configuração do MongoDB Server
sudo vim /etc/mongod.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#habilitando o suporte remoto do MongoDB Server na linha: 19
#alterar a linha: bindIp: 127.0.0.1 para: bindIp: 0.0.0.0
net:
  port: 27017
  bindIp: 0.0.0.0

#habilitando o recurso de autenticação do MongoDB Server na linha: 23
#descomentar as linhas: #security e #authorization: enabled
security:
  authorization: enabled
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <ENTER>
```

**OBSERVAÇÃO IMPORTANTE:** A PARTIR DA VERSÃO DO MONGODB SERVER 8.0.x NÃO ESTÁ MAIS DISPONÍVEL AS OPÇÕES DE VALIDAÇÃO DA SINTAXE (SYNTAX) DO ARQUIVO DE CONFIGURAÇÃO: __`mongod.conf`__ NAS OPÇÕES DO COMANDO: __`mongod`__, ERROS DE CONFIGURAÇÃO SÃO MOSTRADOS NOS ARQUIVOS DE LOG DO SERVIÇO.

```bash
#validando as opções YAML do arquivo de configuração do MongoDB Server
#OBSERVAÇÃO: validação feita somente das estrutura do arquivo YAML, não é feita a verificação
#dos parâmetros e nem dos valores.
sudo yamllint /etc/mongod.conf

#reiniciando e verificando o serviço do MongoDB Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units)
sudo systemctl restart mongod
sudo systemctl status mongod

#analisando os Log's e mensagens de erro do Servidor do MongoDB (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
sudo journalctl -t mongod
sudo journalctl -xeu mongod
```

## 15_ Acessando o MongoDB "COM" e "SEM" autenticação no Mongosh (Shell/Client) no Ubuntu Server
```bash
#acessando novamente o console do MongoDB
mongosh

#exibir os bancos de dados existentes no MongoDB
show dbs

#saindo do MongoDB Server
quit

#acessando novamente o console do MongoDB com autenticação
#opção do comando mongosh: admin (database) -u (username), -p (password)
mongosh admin -u admin -p

#exibir os bancos de dados existentes no MongoDB
show dbs

#saindo do MongoDB Server
quit
```

## 16_ Integrando o MongoDB Server com o Compass GUI (Graphical User Interface) no Windows ou GNU/Linux

Link de download do MongoDB Compass: https://www.mongodb.com/products/tools/compass

```bash
#criando uma nova conexão com o MongoDB Server no Compass
<New connection+>
  New Connection
    URL: mongodb://SEU_ENDEREÇO_IPV4:27017
  Advanced Connection Options
    Connection String Scheme
      mongodb
        Host:
          SEU_ENDEREÇO_IPV4:27017 (alterar o endereço IPv4 do seu servidor)
  Authentication
    Username/Password
      Username: admin 
      Password: sua_senha (alterar a senha do usuário admin do seu servidor)
      Authentication Database: admin
    Authentication Mechanism
      Default
<Save & Connect>
```

## 17_ Integrando o MongoDB Server com o Visual Studio Code VSCode no Windows ou GNU/Linux
```bash
#instalando a Extensão do MongoDB
VSCode
  Extensões
    Pesquisar
      MongoDB for VS Code
        Instalar

#configurando a conexão com o MongoDB Server
VSCode
  MongoDB
    CONNECTIONS
      Add Connection
        Advanced Connection String: <Open From>
          New Connection
            General
              Connection Type: Standalone
              Hostname: SEU_ENDEREÇO_IPV4 
              Port: 27017
              Authentication: Username/Password
                Username: admin
                Password: sua_senha
                Authentication Database: admin
           <Connect>
        <Close>
```

## 18_ Fazendo o Backup do Banco de Dados DBAgenda no MongoDB Server (NÃO COMENTADO NO VÍDEO)

Utilizar o aplicativo de Teste desenvolvido em Node.JS/Electron/Mongoose no Microsoft Windows (SEM VERSÃO PARA LINUX ATÉ O MOMENTO), Link para download da versão: https://github.com/vaamonde/ubuntu-2204/releases

**OBSERVAÇÃO IMPORTANTE:** LEIA A DOCUMENTAÇÃO NO GITHUB SOBRE CARACTERES ESPECIAIS NA SENHA DO USUÁRIO, POR PADRÃO NÃO É PERMITIDO EM *STRINGS DE CONEXÃO DO MONGODB* O USO DE ALGUNS CARACTERES, SENDO NECESSÁRIO FAZER A CONVERSÃO **UNICODE**.

```bash
#String URI (Uniform Resource Identifier) de Conexão com o Banco de Dados do MongoDB
mongodb://seu_usuário:sua_senha@ip_do_server:27017/agenda?authSource=admin
```

**OBSERVAÇÃO IMPORTANTE:** UTILIZAR A APLICAÇÃO AGENDA PARA FAZER A CRIAÇÃO DE VÁRIOS **DOCUMENTS** NO **COLLECTION** **CONTATOS** DA BASE DE DADOS **AGENDA**, FAZER O BACKUP DEPOIS, REMOVER TODOS OS DADOS E VERIFICAR SE O SISTEMA NÃO TEM MAIS CONTATOS REGISTRADOS NA BASE DE DADOS AGENDA.

```bash
#criando o backup (dump) da base de dados Agenda do MongoDB
#opção do comando mongodump: --uri (connection string), --gzip (compacted backup), -d (database)
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/database-tools/mongodump/
mongodump --uri "mongodb://seu_usuário:sua_senha@ip_do_server:27017/?authSource=admin" --gzip -d agenda

#listando o diretório do Backup (Dump) da base de dados Agenda
#opção do comando ls: -l (long listing format), -h (human-readable)
ls -lh dump/

#limpando os documents do collection Contatos da base de dados Agenda no MongoDB
#acessando novamente o MongoDB via Shell
#opção do comando mongosh: admin (database) -u (username), -p (password)
mongosh admin -u admin -p

#exibir os bancos de dados existentes no MongoDB
show dbs

#usar a base de dados Agenda
use agenda

#exibir os collections da base de dados Agenda
show collections

#exibindo todos os documents do collection Contatos da base de dados Agenda
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.collection.find/
db.contatos.find()

#removendo todos os documents do collection Contatos da base de dados Agenda
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/manual/reference/method/db.collection.drop/
db.contatos.drop()

#exibir os collections da base de dados Agenda
show collections
```

**OBSERVAÇÃO IMPORTANTE:** No MongoDB Server, se uma Base de Dados não possuir **Collections** ela será removida automaticamente do servidor, se você digitar o comando: *show dbs* não existirá mais a Base de Dados Agenda.

**OBSERVAÇÃO:** NOVAMENTE FAZER VÁRIOS REGISTROS NA BASE DE DADOS AGENDA ANTES DE FAZER A RESTAURAÇÃO.

```bash
#saindo o MongoDB Server
exit

#restaurando o backup da base de dados Agenda
#opção do comando mongodump: --uri (connection string), --gzip (compacted backup), -d (database)
#Mais informações acesse: https://www.mongodb.com/pt-br/docs/database-tools/mongorestore/
mongorestore --uri "mongodb://seu_usuário:seu_senha@ip_do_server:27017/?authSource=admin" --gzip ./dump/agenda -d agenda

#acessando novamente o MongoDB via Shell
#opção do comando mongosh: admin (database) -u (username), -p (password)
mongosh admin -u admin -p

#exibir os bancos de dados existentes no MongoDB
show dbs

#usar a base de dados Agenda
use agenda

#exibir os collections da base de dados Agenda
show collections

#exibindo todos os documents do collection Contatos da base de dados Agenda
db.contatos.find()

#saindo o MongoDB Server
exit
```

========================================DESAFIOS=========================================

**#19_ DESAFIO-01:** CRIAR UM BANCO DE DADOS COM O: __`seu_nome`__ (TUDO EM MINÚSCULO), DENTRO DESSE BANCO DE DADOS CRIAR UM COLLECTION CHAMADO: __`cadastro`__ (TUDO EM MINÚSCULO) E DENTRO DESSE COLLECTION INSERIR OS FIELDS E DOCUMENTS: __`nome: Seu Nome e Sobrenome, idade: Sua Idade`__ LISTAR AS INFORMAÇÕES NO MONGOSH, VSCODE OU NO MONGODB COMPASS (VEJA O SITE W3SCHOOLS).

**#20_ DESAFIO-02:** CONHECER O PROJETO: __`MongoDB Atlas`__, FAZER O CADASTRO NO SITE OFICIAL PARA A CRIAÇÃO DE UMA __`CONTA FREE`__ NO LINK: https://www.mongodb.com/cloud/atlas/register, ESCOLHER A OPÇÃO: __`LEARN FREE`__, FINALIZAR O CADASTRO CRIANDO UM USUÁRIO E FAZER A CRIAÇÃO DO MESMO BANCO DE DADOS DO **DESAFIO-01**, TESTAR A CONEXÃO NO MONGODB COMPASS E NO VSCODE. 

**OBSERVAÇÃO:** VEJA A DOCUMENTAÇÃO NA OPÇÃO DE: CONNECT EM: __`MongoDB for VS Code`__, CUIDADO PRINCIPALMENTE COM AS OPÇÕES DE CARACTERES ESPECIAIS NA SENHA, VEJA A DOCUMENTAÇÃO ABAIXO:

https://www.mongodb.com/docs/atlas/troubleshoot-connection/#special-characters-in-connection-string-password

**#21_ DESAFIO-03:** ADICIONAR O USUÁRIO: __`admin`__ E O USUÁRIO: __`seu_usuário`__ CRIADOS NO DESAFIO DO *OPENSSH* NO GRUPO DO MONGODB SERVER: __`mongodb`__ PARA FACILITAR A ADMINISTRAÇÃO E GERENCIAMENTO SEM A NECESSIDADE DO SUDO.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO MONGODB SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do MongoDB realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/08-mongodb.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiomongodb #desafiocompass