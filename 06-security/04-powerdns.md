#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/10/2025<br>
#Data de atualização: 23/11/2025<br>
#Versão: 0.09<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin #deafiopowerdnsrecursor

Conteúdo estudado nesse desafio:<br>
#01_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server<br>
#02_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server<br>
#03_ Instalando as dependências do PowerDNS Authoritative, Recursor e do Admin no Ubuntu Server<br>
#04_ Desativando o Serviço do Systemd e Resolução de DNS do Resolved do Ubuntu Server<br>
#05_ Baixando e instalando a Chave GPG do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#06_ Criando o repositório do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#07_ Atualizando as Lista do Apt com o novo Repositório do PowerDNS no Ubuntu Server<br>
#08_ Instalando o PowerDNS Authoritative, Recursor e Backend PostgreSQL no Ubuntu Server<br>
#09_ Verificando os serviços do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#10_ Localização dos diretórios principais do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#11_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server<br>
#12_ Criando a Base de Dados do PowerDNS Authoritative no PostgreSQL Server no Ubuntu Server<br>
#13_ Testando o acesso a Base de Dados do PowerDNS Authoritative no PostgreSQL Server no Ubuntu Server<br>
#14_ Populando as Tabelas no Banco de Dados do PowerDNS Authoritative utilizando o arquivo de esquema do PostgreSQL Server no Ubuntu Server<br>
#15_ Atualizando os arquivos de configuração do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#16_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server<br>
#17_ Testando o serviço do PowerDNS Authoritative e Backend PostgreSQL no Ubuntu Server<br>
#18_ Verificando a Porta de Conexão do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#19_ Criando uma Zona de Pesquisa Direta Interna no PowerDNS Authoritative no Ubuntu Server<br>
#20_ Criando uma Zona de Pesquisa Reversa Interna no PowerDNS Authoritative no Ubuntu Server<br>
#21_ Testando as resoluções de Zonas e Nomes DNS no PowerDNS Authoritative no Ubuntu Server<br>
#22_ Fazendo o download do PowerDNS Admin e descompactando no diretório padrão do NGINX Server no Ubuntu Server<br>
#23_ Atualizando os arquivos de configuração do PowerDNS Admin no Ubuntu Server<br>
#24_ Editando os arquivos de configuração do PowerDNS Admin no Ubuntu Server<br>
#25_ Configurando o Ambiente Virtual e instalando as Dependências do PowerDNS Admin no Ubuntu Server<br>
#26_ Alterando as permissões dos diretórios do PowerDNS Admin no Ubuntu Server<br>
#27_ Desativando o site padrão do NGINX Server no Ubuntu Server<br>
#28_ Habilitando e iniciando os serviços do PowerDNS Admin no Ubuntu Server<br>
#29_ Acessando e configurando o PowerDNS Authoritative via navegador no PowerDNS Admin<br>
#30_ Desafio do PowerDNS Authoritative e Recursor<br>

Site Oficial do PowerDNS: https://www.powerdns.com/<br>
Site Oficial do PowerDNS Authoritative: https://www.powerdns.com/powerdns-authoritative-server<br>
Site Oficial do PowerDNS Recursor: https://www.powerdns.com/powerdns-recursor<br>
Site Oficial do PowerDNS Admin: https://www.poweradmin.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O DNS:** O DNS (Domain Name System) é o sistema que traduz nomes de domínio em endereços IP, funcionando como uma “agenda telefônica da Internet”. Quando você digita www.google.com, o DNS é quem descobre o endereço IP real do servidor onde o site está hospedado, permitindo que seu computador se conecte a ele.

**O QUE É E PARA QUE SERVER O POWERDNS:** O PowerDNS é uma alternativa avançada ao BIND9 (da ISC.org), desenvolvido para oferecer melhor desempenho, escalabilidade e integração com bancos de dados. Ele é open source, multiplataforma e amplamente utilizado em provedores de Internet, data centers e grandes empresas.

**O QUE É E PARA QUE SERVER O POWERDNS AUTHORITATIVE:** O PowerDNS Authoritative Server é um servidor DNS autoritativo moderno, leve e altamente flexível, responsável por responder oficialmente pelas zonas de domínio que ele gerencia. Ou seja, ele não faz recursão, apenas responde com autoridade pelas informações DNS que estão sob sua responsabilidade.

**O QUE É E PARA QUE SERVER O POWERDNS RECURSOR:** O PowerDNS Recursor é um servidor DNS recursivo — ou seja, ele não é autoritativo, mas é quem faz o trabalho de buscar respostas para consultas DNS, tanto internas quanto externas. Ele atua como o intermediário inteligente entre o cliente (por exemplo, seu navegador ou servidor local) e os servidores DNS autoritativos espalhados pela internet.

**O QUE É E PARA QUE SERVER O POWERDNS ADMIN:** O PowerDNS-Admin é uma interface web moderna e intuitiva desenvolvida para gerenciar servidores PowerDNS de forma simples, visual e organizada. Ele é o “painel de controle” do PowerDNS — ideal para quem não quer (ou não precisa) editar arquivos de zona manualmente no terminal.

[![PowerDNS](http://img.youtube.com/vi//0.jpg)]( "PowerDNS")

Link da vídeo aula: 

**OBSERVAÇÃO IMPORTANTE:** O POWERDNS SERVER E POWERDNS ADMIN POSSUI A DEPENDÊNCIA DO *BANCO DE DADOS POSTGRESQL*, ESSE APLICATIVO JÁ FOI INSTALADO NA ETAPA: **10 DO POSTGRESQL SERVER 18**.

**OBSERVAÇÃO IMPORTANTE:** É RECOMENDADO UTILIZADO O NGINX SERVER PARA AS CONFIGURAÇÕES DO POWERDNS ADMIN, CUIDADO COM A INSTALAÇÃO DO APACHE2 SERVER PARA NÃO ENTRAR EM CONFLITO NAS CONFIGURAÇÕES, RECOMENDADO INSTALAR O NGINX SERVER DE FORMA SIMPLES, SEM CONFIGURAÇÃO EXTRA DO PHP-FPM. 

## 01_ Adicionando o Repositório do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server
```bash
#Script de configuração do Repositório do Node.JS (VERSÃO ESTÁVEL ATÉ O MOMENTO: 22.x EM: 11/11/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando sudo: -E (preserve-env)
sudo curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash
```

## 02_ Instalando a Versão LTS do Node.JS e do NPM (Node Packet Manager) no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório do Node.JS
#opção do comando apt: update (Resynchronize the package index files from their sources
sudo apt update

#Instalando o Node.JS e NPM (Node Package Manager)
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install nodejs
```

## 03_ Instalando as dependências do PowerDNS Authoritative, Recursor e do Admin no Ubuntu Server
```bash
#instalando as dependências do PowerDNS Authoritative, Recursor Admin no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx python3-dev libsasl2-dev libldap2-dev libssl-dev libxml2-dev libxslt1-dev \
libxmlsec1-dev libffi-dev pkg-config apt-transport-https virtualenv build-essential curl ssl-cert \
git python3-flask libpq-dev vim gnupg gcc g++ make software-properties-common tree ca-certificates \
php-pgsql libmariadb-dev

#instalando a dependência do PowerDNS Admin do Yarn
#opção do comando npm: install (install a package), -g (in global mode)
sudo npm install -g yarn
```

## 04_ Desativando o Serviço do Systemd e Resolução de DNS do Resolved do Ubuntu Server
```bash
#parando o serviço do Systemd Resolved do Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units specified on the command line)
sudo systemctl stop systemd-resolved

#desabilitando o serviço do Systemd Resolved do Ubuntu Server
#opções do comando systemctl: disable (Disables one or more units), --now (When used with disable, 
#the units will also be disabled service)
sudo systemctl disable --now systemd-resolved

#removendo o arquivo resolv.conf do Ubuntu Server
#opção do comando rm: -r (recursive), -f (force), -v (verbose)
sudo rm -rfv /etc/resolv.conf

#atualizando o arquivo resolv.conf com servidores DNS Temporários do Google
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo -e "nameserver 8.8.8.8 \nnameserver 2001:4860:4860::8888" | sudo tee /etc/resolv.conf > /dev/null

#listando o conteúdo do arquivo resolv.conf com servidor DNS Temporário do Google
#opção do comando cat: -n (number line)
sudo cat -n /etc/resolv.conf

#testando a resolução de nomes temporários do DNS no Ubuntu Server
sudo nslookup google.com
```

## 05_ Baixando e instalando a Chave GPG do PowerDNS Authoritative e Recursor no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o PowerDNS Authoritative e Recursor possui várias versões, para verificar as *chaves GPG* de cada versão acesse o link: https://repo.powerdns.com/

```bash
#download da Chave GPG do PowerDNS Authoritative (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.0.x EM: 20/11/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-auth-5.0.gpg

#download da Chave GPG do PowerDNS Recursor (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.3.x EM: 11/11/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-recur-5.3.gpg
```

## 06_ Criando o repositório do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
#criando o arquivo do repositório do Apt do PowerDNS Authoritative no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo "deb [signed-by=/usr/share/keyrings/powerdns-auth-5.0.gpg] http://repo.powerdns.com/ubuntu jammy-auth-50 main" | sudo tee /etc/apt/sources.list.d/pdns-auth.list > /dev/null

#criando o arquivo do repositório do Apt do PowerDNS Recursor no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo "deb [signed-by=/usr/share/keyrings/powerdns-recur-5.3.gpg] http://repo.powerdns.com/ubuntu jammy-rec-53 main" | sudo tee /etc/apt/sources.list.d/pdns-recur.list > /dev/null

#criando o arquivo de preferências do PowerDNS no Ubuntu Server
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo -e "Package: pdns-* \nPin: origin repo.powerdns.com \nPin-Priority: 600" | sudo tee /etc/apt/preferences.d/powerdns > /dev/null
```

## 07_ Atualizando as Lista do Apt com o novo Repositório do PowerDNS no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório no Ubuntu Server
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update
```

## 08_ Instalando o PowerDNS Authoritative, Recursor e Backend PostgreSQL no Ubuntu Server
```bash
#instando o PowerDNS Authoritative, Recursor e Backend PostgreSQL no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install pdns-server pdns-recursor pdns-backend-pgsql pdns-tools ipv6calc
```

## 09_ Verificando os serviços do PowerDNS Authoritative e Recursor no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** POR PADRÃO O POWERDNS AUTHORITATIVE E O RECURSOR ESTÃO CONFIGURADOS NA MESMA PORTA (53/UDP) CAUSANDO A FALHA DE INICIALIZAÇÃO DO SERVIÇO DO POWERDNS AUTHORITATIVE SERVER, ESSA FALHA SERÁ CORRIGIDA NAS CONFIGURAÇÕES DO SERVIDOR.

```bash
#verificando os serviços do PowerDNS Authoritative e Recursor
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status pdns pdns-recursor
sudo systemctl restart pdns pdns-recursor
sudo systemctl reload pdns pdns-recursor
sudo systemctl stop pdns pdns-recursor
sudo systemctl start pdns pdns-recursor

#analisando os Log's e mensagens de erros do PowerDNS Authoritative e Recursor
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu pdns
sudo journalctl -xeu pdns-recursor
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do PowerDNS Authoritative e Recursor
#opção do comandos pdns_server e pdns_recursor: --version (version)
sudo pdns_server --version     #consultando a versão do PowerDNS Authoritative
sudo pdns_recursor --version   #consultando a versão do PowerDNS Recursor
```

## 10_ Localização dos diretórios principais do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
/etc/powerdns/*                        <-- Diretório dos arquivos de configuração do serviço do PowerDNS
/etc/powerdns/pdns.conf                <-- Arquivo de configuração principal do serviço do PowerDNS Authoritative
/etc/powerdns/recursor.conf            <-- Arquivo de configuração principal do serviço do PowerDNS Recursor
/etc/powerdns/pdns.d/                  <-- Diretório dos arquivos de configuração do PowerDNS Authoritative
/etc/powerdns/pdns.d/bind.conf         <-- Arquivo de configuração da Base de Dados Backend do Bind9 DNS Server
/etc/powerdns/pdns.d/pdns-pgsql.conf   <-- Arquivo de configuração da Base de Dados Backend do PostgreSQL Server
/etc/powerdns/recursor.d/              <-- Diretório dos arquivos de configuração do PowerDNS Recursor
/var/lib/powerdns/                     <-- Diretório dos arquivos de Zonas de Domínio do PowerDNS Authoritative
/var/log/syslog e auth                 <-- Arquivos de Logs do PowerDNS Authoritative e Recursor
```

## 11_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G pdns $USER

#verificando as informações do grupo PDNS do PowerDNS Authoritative e Recursor
#opção do comando getent: group (the database system group)
sudo getent group pdns
```

## 12_ Criando a Base de Dados do PowerDNS Authoritative no PostgreSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** NESSE CENÁRIO O BANCO DE DADOS DO POSTGRESQL SERVER UTILIZADO PELO POWERDNS AUTHORITATIVE ESTÁ NO MESMO SERVIDOR PARA EFEITO DE DESEMPENHO E SEGURANÇA, NÃO É RECOMENDO HABILITAR O RECURSO DE CONEXÃO REMOTA DO POSTGRESQL SERVER E NEM CRIAR USUÁRIOS REMOTOS.

```bash
#conectando no PostgreSQL Server utilizando o cliente psql
#opção do comando sudo: -u (user), psql (terminal PostgreSQL)
sudo -u postgres psql
```
```sql
/* Criando o Banco de Dados do PowerDNS Authoritative com o nome: powerdns */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse: https://www.postgresql.org/docs/current/sql-createdatabase.html */
CREATE DATABASE powerdns;

/* Listando o Banco de Dados criado do PowerDNS Authoritative no PostgreSQL Server */
/* opção do comando \l: (list databases) */
/* mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html */
\l powerdns
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL.

```sql
/* Criando o usuário e senha da Base de Dados do PowerDNS Authoritative */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE */
/* mais informações acesse: https://www.postgresql.org/docs/8.0/sql-createuser.html */
CREATE USER powerdns WITH PASSWORD 'SUA_SENHA_SEGURA';

/* Listando o Usuário do PowerDNS Authoritative criado no PostgreSQL Server */
/* opção do comando \du: (Lists database roles) */
/* mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html */
\du powerdns

/* Alterando o dono da Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse: https://www.postgresql.org/docs/current/sql-alterdatabase.html */
ALTER DATABASE powerdns OWNER TO powerdns;

/* Alterando as permissões da Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse: https://www.postgresql.org/docs/current/sql-grant.html */
GRANT ALL PRIVILEGES ON DATABASE powerdns TO powerdns;

/* Alterando os privilégios do Esquema Público da Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse: https://www.postgresql.org/docs/current/sql-grant.html */
GRANT ALL PRIVILEGES ON SCHEMA public TO powerdns;

/* Conectando no Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* opção do comando \connect: (establish a database connection) */
/* Mais informações acesse: https://www.postgresql.org/docs/current/ecpg-sql-connect.html */
\connect powerdns;

/* Saindo do Banco de Dados PostgreSQL Server */
/* opção do comando \q: (quit) */
/* mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html */
\q
```

## 13_ Testando o acesso a Base de Dados do PowerDNS Authoritative no PostgreSQL Server no Ubuntu Server
```bash
#conectando no banco de dados PostgreSQL Server com o usuário powerdns
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to)
sudo psql --username powerdns --password --host localhost --dbname powerdns
```
```sql
/* verificando as informações do Banco de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* opção do comando \conninfo: (Outputs information about the current database connection) */
/* Mais informações acesse: https://www.postgresql.org/docs/9.1/app-psql.html*/
\conninfo

/* Saindo do Banco de Dados PostgreSQL Server */
/* opção do comando \q: (quit) */
/* mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html */
\q
```

## 14_ Populando o Banco de Dados do PowerDNS Authoritative utilizando o arquivo de esquema do PostgreSQL Server no Ubuntu Server
```bash
#importando o esquema e os dados iniciais do banco de dados do PowerDNS Authoritative
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to), --echo-all (view output script), --file (file script execution)
sudo psql --username powerdns --password --host localhost --dbname powerdns --echo-all --file /usr/share/pdns-backend-pgsql/schema/schema.pgsql.sql

#conectando no banco de dados PostgreSQL Server com o usuário powerdns
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to)
sudo psql --username powerdns --password --host localhost --dbname powerdns
```
```sql
/* Verificando as informações das Tabelas do PowerDNS Authoritative no PostgreSQL Server */
/* opção do comando \dt: (For each relation (table, view, index, sequence, or foreign table))
/* Mais informações acesse: https://www.postgresql.org/docs/9.1/app-psql.html*/
\dt

/* Saindo do Banco de Dados PostgreSQL Server */
/* opção do comando \q: (quit) */
/* mais informações acesse: https://www.postgresql.org/docs/current/app-psql.html */
\q
```

## 15_ Atualizando os arquivos de configuração do PowerDNS Authoritative, Recursor e Backend no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do PowerDNS Authoritative Backend Bind9 DNS Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/powerdns/pdns.d/bind.conf /etc/powerdns/pdns.d/bind.conf.old

#fazendo o backup do arquivo de configuração do PowerDNS Authoritative
#opção do comando cp: -v (verbose)
sudo cp -v /etc/powerdns/pdns.conf /etc/powerdns/pdns.conf.old

#fazendo o backup do arquivo de configuração do PowerDNS Recursor
#opção do comando cp: -v (verbose)
sudo cp -v /etc/powerdns/recursor.conf /etc/powerdns/recursor.conf.old

#atualizando o arquivo de configuração do PowerDNS Authoritative Backend Bind9 DNS Server do Github
#OBSERVAÇÃO IMPORTANTE: NESSE ARQUIVO ESTÁ SENDO DESATIVADO O RECURSO DE BANCO DE DADOS
#UTILIZANDO O SERVIÇO DO BIND9 DNS SERVER COMO SERVIÇO DE BACKEND DO POWERDNS AUTHORITATIVE
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/bind.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-bind.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Backend PostgreSQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/pdns-pgsql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-pgsql.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns.conf

#atualizando o arquivo de configuração do PowerDNS Recursor do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/recursor.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recursor.conf
```

## 16_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O ARQUIVO DE CONFIGURAÇÃO DO BACKEND BIND9 SERVER ESTÁ COM TODAS AS LINHAS COMENTADAS PARA NÃO ENTRAR EM CONFLITO COM O BACKEND DO POSTGRESQL SERVER.

```bash
#editar o arquivo de configuração do PowerDNS Backend PostgreSQL Server
sudo vim /etc/powerdns/pdns.d/pdns-pgsql.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 20 até 32 das variáveis de conexão do PostgreSQL Server
gpgsql-host=127.0.0.1
gpgsql-port=5432
gpgsql-dbname=powerdns
gpgsql-user=powerdns
gpgsql-password=powerdns
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração do PowerDNS Authoritative
sudo vim /etc/powerdns/pdns.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 34 até 38 das variáveis
local-address=127.0.0.1
local-port=5300
server-id=auth.pti.intra
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração do PowerDNS Recursor
sudo vim /etc/powerdns/recursor.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 17 até 65 das variáveis dos endereços IPv4 e IPv4
#Zonas Internas de encaminhamento e encaminhadores externos de DNS Server
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#atualizando o arquivo resolv.conf com servidor do PowerDNS Recursor
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo -e "nameserver 172.16.1.20 \nnameserver 2804:14c:90:8697::20" | sudo tee /etc/resolv.conf > /dev/null

#listando o conteúdo do arquivo resolv.conf com servidor DNS Temporário do Google
#opção do comando cat: -n (number line)
sudo cat -n /etc/resolv.conf
```

## 17_ Testando o serviço do PowerDNS Authoritative e Backend PostgreSQL no Ubuntu Server
```bash
#parando o serviço do PowerDNS Authoritative no Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units)
sudo systemctl stop pdns

#testando o arquivo de configuração do PowerDNS Authoritative
#opção do comando pdns_server: --config (Show the current configuration)
#mais informações acesse: https://doc.powerdns.com/authoritative/manpages/pdns_server.1.html
sudo pdns_server --config

#testando o arquivo de configuração do PowerDNS Authoritative
#opção do comando pdns_recursor: --config (Show the current configuration)
#mais informações acesse: https://manpages.debian.org/testing/pdns-recursor/pdns_recursor.1.en.html
sudo pdns_recurso --config

#testando o serviço do PowerDNS Authoritative se está conectando com o Backend PostgreSQL Server
#opção do comando pdns_server: --daemon (Indicate  if  the  server should run in the background 
#as a real daemon, or in the foreground), --guardian (Run pdns_server inside a guardian. This 
#guardian  monitors  the performance  of  the inner pdns_server instance), --loglevel (Set the 
#logging level)
#OBSERVAÇÃO: para finalizar o teste do serviço do PowerDNS Authoritative pressione: Ctrl+C
#mais informações acesse: https://doc.powerdns.com/authoritative/manpages/pdns_server.1.html
sudo pdns_server --daemon=no --guardian=no --loglevel=9

#reiniciando os serviços do PowerDNS Authoritative e Recursor
#opções do comando systemctl: restart (Stop and then start one or more units), status 
#(runtime status information)
sudo systemctl restart pdns pdns-recursor
sudo systemctl status pdns pdns-recursor

#analisando os Log's e mensagens de erros do PowerDNS Authoritative e Recursor
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu pdns
sudo journalctl -xeu pdns-recursor

#testando as métricas do PowerDNS Authoritative utilizando o Web Server Interno
curl http://127.0.0.1:8081/metrics
```

## 18_ Verificando a Porta de Conexão do PowerDNS Authoritative e Recursor no Ubuntu Server

| Protocolo | Porta | O que é utilizado? | Quando é utilizado? | PowerDNS Authoritative | PowerDNS Recursor |
|----------|-------|--------------------|----------------------|------------------------|--------------------|
| **UDP**  | 53    | Consultas rápidas e leves | Resoluções comuns de DNS; respostas pequenas (geralmente até 512 bytes, EDNS pode ampliar) | Responde a consultas comuns dos clientes e recursivos | Envia e recebe consultas rápidas; prefere UDP para desempenho |
| **TCP**  | 53    | Conexões confiáveis e com controle | Respostas grandes (DNSSEC, muitos registros), transferência de zona (AXFR/IXFR), fallback quando o UDP falha | Necessário para transferências de zona e respostas grandes; usado como fallback | Usado para respostas grandes ou quando UDP é bloqueado/insuficiente; fallback |

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando as portas padrões TCP-53, 5300 e 8081 e UDP-53 e 5300 do PowerDNS Authoritative e Recursor
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'53,5300,8081' -sTCP:LISTEN
sudo lsof -nP -iUDP:'53,5300'
```

## 19_ Criando uma Zona de Pesquisa Direta Interna no PowerDNS Authoritative no Ubuntu Server

# 📘 Conceito Básico sobre os Registro do PowerDNS Authoritative

| Termo | O que é | Para que serve / Função |
|------|---------|--------------------------|
| **Zona de Pesquisa Direta (Forward Zone)** | Zona/arquivo DNS que resolve *nomes → endereços IP*. | Permite consultar um nome (ex.: `www.exemplo.com`) e obter o IP correspondente. |
| **DNSSEC** | Extensão de segurança para DNS. | Garante autenticidade e integridade das respostas usando assinaturas digitais; evita ataques como DNS Spoofing. |
| **Registro SOA (Start of Authority)** | Primeiro registro da zona DNS. | Define o servidor autoritativo principal e parâmetros da zona (serial, refresh, retry, expire). |
| **Registro NS (Name Server)** | Registro que especifica os servidores DNS da zona. | Informa quais servidores são responsáveis por responder pelas consultas daquela zona. |
| **Registro A** | Mapeia um nome para um endereço IPv4. | Usado para resolver **nome → IPv4**, como `www → 192.168.1.10`. |
| **Registro CNAME** | Registro de alias (apelido) para outro nome. | Permite que um nome seja um apelido de outro nome, facilitando gerenciamento (`loja → www`). |

```bash
#criando a Zona de Pesquisa Direta Interna no PowerDNS Authoritative
#opções do comando pdnsutil: create-zone (Create an empty zone named ZONE), pti.intra (Zone named), 
#ns1.pti.intra (Create register record NS1 with Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil create-zone pti.intra ns1.pti.intra

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Direta Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list pti.intra

#verificando erros na Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: check-zone (Check zone ZONE for correctness)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil check-zone pti.intra

#habilitando o suporte ao DNSSEC na Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: secure-zone (Configures a zone called ZONE with reasonable DNSSEC settings)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil secure-zone pti.intra

#visualizando detalhes da Zona Direta Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone show (Shows various details of the zone called ZONE)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone show pti.intra

#removendo o registro do tipo SOA (start of authority) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: delete-rrset (Delete named RRSET from zone. NAME must be absolute), pti.intra (Zone named),
#pti.intra (record name), SOA (Type of register - start of authority)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil delete-rrset pti.intra pti.intra SOA

#criando o registro do tipo SOA (start of authority) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), pti.intra (record name), SOA (Type SOA - Start os Authority), 3600 (TTL - Time to Live),
#ns1.pti.intra (NS - primary DNS server), hostmaster.pti.intra. (responsible mail), 2025100801 (number of serial zone),
# 3600 (TTL - time to live zone), 600 (retry zone), 604800 (expire zone), 86400 (minimum negative TTIL)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record pti.intra pti.intra SOA 3600 "ns1.pti.intra. hostmaster.pti.intra. 2025100801 3600 600 604800 86400"

#criando o registro do tipo A (IPv4 Address) e AAAA (IPv6 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), ns1. pti.intra (record name NS - name server), A (type IPv4 record), AAAA (type IPv6
#record) 3600 (TTL - Time to Live), 172.16.1.20 - 2804:14c:90:8697::20 (IPv4 and IPv6 Address record name)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record pti.intra ns1.pti.intra A 3600 172.16.1.20
sudo pdnsutil add-record pti.intra ns1.pti.intra AAAA 3600 2804:14c:90:8697::20

#criando o registro do tipo A (IPv4 Address) e AAAA (IPv6 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), pti.intra (record name), A (type IPv4 record), AAAA (type IPv6 record) 3600 (TTL-Time
#to Live), 172.16.1.20 - 2804:14c:90:8697::20 (IPv4 and IPV6 Address record name)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record pti.intra pti.intra A 3600 172.16.1.20
sudo pdnsutil add-record pti.intra pti.intra AAAA 3600 2804:14c:90:8697::20

#criando o registro do tipo A (IPv4 Address) e AAAA (IPv6 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), wsvaamonde.pti.intra (record name), A (type IPv4 record), AAAA (type IPv6 record), 
# 3600 (TTL - Time to Live), 172.16.1.20 - 2804:14c:90:8697::20 (IPv4 and IPv6 Address record name)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record pti.intra wsvaamonde.pti.intra A 3600 172.16.1.20
sudo pdnsutil add-record pti.intra wsvaamonde.pti.intra AAAA 3600 2804:14c:90:8697::20

#criando o registro do tipo CNAME (Canonical Name) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), wsvaamonde.pti.intra (record name), A (type IPv4 record), 3600 (TTL - Time to Live),
# 172.16.1.20 (IPv4 Address record name)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record pti.intra pdns.pti.intra CNAME 3600 "wsvaamonde.pti.intra"

#atualizando os registros das Zonas Internas criadas no PowerDNS Authoritative
#opções do comando pdnsutil: rectify-all-zone
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil rectify-all-zones

#recarregar todas as Zonas Internas do PowerDNS Authoritative sem reiniciar o serviço
#opção do comando pdns_control: reload (Instruct the server to reload all its zones, this will not add new zones)
#mais informações acesse: https://doc.powerdns.com/authoritative/manpages/pdns_control.1.html
sudo pdns_control reload

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list pti.intra
```

## 20_ Criando uma Zona de Pesquisa Reversa IPv4 in-addr.arpa Interna no PowerDNS Authoritative no Ubuntu Server

# 📘 Conceito Básico sobre os Registro do PowerDNS Authoritative

| **Termo** | **O que é** | **Para que serve / Função** |
| --------- | ----------- | --------------------------- |
| **Zona de Pesquisa Reversa (Reverse Zone)** | Parte do DNS responsável por mapear **endereços IP para nomes de host**. Utiliza `in-addr.arpa` (IPv4) e `ip6.arpa` (IPv6). | Permite a **resolução reversa**, essencial para logs, auditorias, autenticações, e vários serviços como e-mail, DHCP, Kerberos e validações de segurança. |
| **DNSSEC**  | Extensão de segurança que adiciona **assinaturas digitais** aos registros DNS. | Garante **autenticidade, integridade e verificação criptográfica** da zona. Protege contra envenenamento de cache e respostas forjadas.|
| **Registro SOA (Start of Authority)** | Primeiro registro obrigatório da zona. Define o servidor principal, e-mail responsável, serial e informações de atualização. | Identifica a **autoridade** da zona reversa e controla a sincronização entre servidores DNS.|
| **Registro NS (Name Server)** | Registros que apontam para os servidores DNS autoritativos da zona. | Define **quais servidores** respondem oficialmente pela zona reversa. Sem NS, não há autoridade DNS. |
| **Registro PTR (Pointer Record)** | Registro que faz o mapeamento de **IP → nome DNS** (oposto do A/AAAA). | Permite identificar o nome de um host a partir do IP. Essencial para logs, e-mail (rDNS), auditoria, integração com DHCP e serviços internos. |


```bash
#criando a Zona de Pesquisa Reversa IPv4 in-addr.arpa Interna no PowerDNS Authoritative
#opções do comando pdnsutil: create-zone (Create an empty zone named ZONE), *.in-addr.arpa (Zone named), 
#ns1.pti.intra (Create register record NS1 with Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil create-zone 1.16.172.in-addr.arpa ns1.pti.intra

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named), *.in-addr.arpa (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list 1.16.172.in-addr.arpa

#verificando erros na Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: check-zone (Check zone ZONE for correctness)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil check-zone 1.16.172.in-addr.arpa

#habilitando o suporte ao DNSSEC na Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: secure-zone (Configures a zone called ZONE with reasonable DNSSEC settings)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil secure-zone 1.16.172.in-addr.arpa

#visualizando detalhes da Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone show (Shows various details of the zone called ZONE)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone show 1.16.172.in-addr.arpa

#removendo o registro do tipo SOA (start of authority) da Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: delete-rrset (Delete named RRSET from zone. NAME must be absolute), *.in-addr.arpa (Zone named),
#*.in-addr.arpa (record name), SOA (Type of register - start of authority)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil delete-rrset 1.16.172.in-addr.arpa 1.16.172.in-addr.arpa SOA

#criando o registro do tipo SOA (start of authority) da Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), *.in-addr.arpa (zone name), *.in-addr.arpa (record name), SOA (Type SOA - Start os Authority), 3600 (TTL - Time to Live),
#ns1.pti.intra (NS - primary DNS server), hostmaster.pti.intra. (responsible mail), 2025100801 (number of serial zone),
# 3600 (TTL - time to live zone), 600 (retry zone), 604800 (expire zone), 86400 (minimum negative TTIL)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record 1.16.172.in-addr.arpa 1.16.172.in-addr.arpa SOA 3600 "ns1.pti.intra. hostmaster.pti.intra. 2025100801 3600 600 604800 86400"

#criando o registro do tipo PTR (IPv4 Address) da Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), *.in-addr.arpa (zone name), 20.1.16.172.in-addr.arpa (register IPv4), PTR (point register), 3600 (TTL Time to Live)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record 1.16.172.in-addr.arpa 20.1.16.172.in-addr.arpa PTR 3600 pti.intra
sudo pdnsutil add-record 1.16.172.in-addr.arpa 20.1.16.172.in-addr.arpa PTR 3600 ns1.pti.intra
sudo pdnsutil add-record 1.16.172.in-addr.arpa 20.1.16.172.in-addr.arpa PTR 3600 wsvaamonde.pti.intra

#atualizando os registros das Zonas Internas criadas no PowerDNS Authoritative
#opções do comando pdnsutil: rectify-all-zone
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil rectify-all-zones

#recarregar todas as Zonas Internas do PowerDNS Authoritative sem reiniciar o serviço
#opção do comando pdns_control: reload (Instruct the server to reload all its zones, this will not add new zones)
#mais informações acesse: https://doc.powerdns.com/authoritative/manpages/pdns_control.1.html
sudo pdns_control reload

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Reversa IPv4 in-addr.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) *.in-addr.arpa (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list 1.16.172.in-addr.arpa
```

## 20_ Criando uma Zona de Pesquisa Reversa IPv6 ip6.arpa Interna no PowerDNS Authoritative no Ubuntu Server

# 📘 Conceito Básico sobre os Registro do PowerDNS Authoritative

| **Termo** | **O que é** | **Para que serve / Função** |
| --------- | ----------- | --------------------------- |
| **Zona de Pesquisa Reversa (Reverse Zone)** | Parte do DNS responsável por mapear **endereços IP para nomes de host**. Utiliza `in-addr.arpa` (IPv4) e `ip6.arpa` (IPv6). | Permite a **resolução reversa**, essencial para logs, auditorias, autenticações, e vários serviços como e-mail, DHCP, Kerberos e validações de segurança. |
| **DNSSEC** | Extensão de segurança que adiciona **assinaturas digitais** aos registros DNS. | Garante **autenticidade, integridade e verificação criptográfica** da zona. Protege contra envenenamento de cache e respostas forjadas.|
| **Registro SOA (Start of Authority)** | Primeiro registro obrigatório da zona. Define o servidor principal, e-mail responsável, serial e informações de atualização. | Identifica a **autoridade** da zona reversa e controla a sincronização entre servidores DNS.|
| **Registro NS (Name Server)** | Registros que apontam para os servidores DNS autoritativos da zona. | Define **quais servidores** respondem oficialmente pela zona reversa. Sem NS, não há autoridade DNS. |
| **Registro PTR (Pointer Record)** | Registro que faz o mapeamento de **IP → nome DNS** (oposto do A/AAAA). | Permite identificar o nome de um host a partir do IP. Essencial para logs, e-mail (rDNS), auditoria, integração com DHCP e serviços internos. |

| **Termo** | **O que é** | **Para que serve / Função** |
|-----------|-------------|-----------------------------|
| **IPv6 Address** | Endereço de 128 bits dividido em 8 blocos de 16 bits (hextetos). | Identificar unicamente um host na rede IPv6. É a base para conversão em nibbles para DNS reverso. |
| **Hexteto** | Bloco de 16 bits representado por 4 dígitos hexadecimais (ex: `2001`). | Organiza o IPv6 em partes legíveis. Cada hexteto será convertido em 4 nibbles no reverse DNS. |
| **Hexadecimal** | Sistema numérico base 16 (0–9 / A–F). | Representa cada parte do IPv6 de forma compacta; cada dígito hex equivale a 1 nibble. |
| **Nibble** | Unidade de 4 bits (metade de 1 byte). | No DNS reverso IPv6, cada nibble vira uma entrada individual do domínio `.ip6.arpa`. |
| **Unpacking** | Processo de expandir o IPv6 (ex: `2001:db8::1`) para forma completa. | Necessário para converter todos os dígitos hexadecimais e gerar corretamente a zona reversa IPv6. |
| **Reverse IPv6** | Nome da zona reversa `ip6.arpa`. | Usado para mapear um IPv6 completo até o hostname, invertendo nibble por nibble.|
| **ip6.arpa** | Domínio especial reservado para reverso IPv6. | Recebe a representação invertida em nibbles do IPv6 completo; utilizado por servidores DNS Recursivos. |
| **PTR Record** | Registro que mapeia os nibbles invertidos para um hostname. | Permite resolução reversa IPv6 — ex: qual hostname pertence ao IPv6 consultado. |

```bash
#convertendo a Subrede IPv6 de Hexteto para Nibble utilizando o comando IPv6Calc no Ubuntu Server
#opção do comando ipv6calc: --quiet (be more quiet), --out (specify output type) revnibbles.arpa
#(convert IPv6 Address to nibble)
sudo ipv6calc --quiet --out revnibbles.arpa 2804:14c:90:8697::/64

#convertendo o Endereço IPv6 de Hexteto para Nibble utilizando o comando IPv6Calc no Ubuntu Server
#opção do comando ipv6calc: --quiet (be more quiet), --out (specify output type) revnibbles.arpa
#(convert IPv6 Address to nibble)
sudo ipv6calc -q --out revnibbles.arpa 2804:14c:90:8697::20

#criando a Zona de Pesquisa Reversa IPv6 ip6.arpa Interna no PowerDNS Authoritative
#opções do comando pdnsutil: create-zone (Create an empty zone named ZONE), *.ip6.arpa (Zone named), 
#ns1.pti.intra (Create register record NS1 with Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil create-zone 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa ns1.pti.intra

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) *.ip6.arpa (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa

#verificando erros na Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: check-zone (Check zone ZONE for correctness)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil check-zone 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa

#habilitando o suporte ao DNSSEC na Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: secure-zone (Configures a zone called ZONE with reasonable DNSSEC settings)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil secure-zone 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa

#visualizando detalhes da Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone show (Shows various details of the zone called ZONE)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone show 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa

#removendo o registro do tipo SOA (start of authority) da Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: delete-rrset (Delete named RRSET from zone. NAME must be absolute), *.ip6.arpa (Zone named),
#*.ip6.arpa (record name), SOA (Type of register - start of authority)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil delete-rrset 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa SOA

#criando o registro do tipo SOA (start of authority) da Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), *.ip6.arpa (zone name), *.ip6.arpa (record name), SOA (Type SOA - Start os Authority), 3600 (TTL - Time to Live),
#ns1.pti.intra (NS - primary DNS server), hostmaster.pti.intra. (responsible mail), 2025100801 (number of serial zone),
# 3600 (TTL - time to live zone), 600 (retry zone), 604800 (expire zone), 86400 (minimum negative TTIL)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa SOA 3600 "ns1.pti.intra. hostmaster.pti.intra. 2025100801 3600 600 604800 86400"

#criando o registro do tipo PTR (IPv6 Address) da Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), *.ip6.arpa (zone name),*.ip6.arpa (register IPv6), PTR (point register), 3600 (TTL - Time to Live)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil add-record 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa 0.2.0.0.0.0.0.0.0.0.0.0.0.0.0.0.7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa PTR 3600 pti.intra
sudo pdnsutil add-record 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa 0.2.0.0.0.0.0.0.0.0.0.0.0.0.0.0.7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa PTR 3600 ns1.pti.intra
sudo pdnsutil add-record 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa 0.2.0.0.0.0.0.0.0.0.0.0.0.0.0.0.7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa PTR 3600 wsvaamonde.pti.intra

#atualizando os registros das Zonas Internas criadas no PowerDNS Authoritative
#opções do comando pdnsutil: rectify-all-zone
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil rectify-all-zones

#recarregar todas as Zonas Internas do PowerDNS Authoritative sem reiniciar o serviço
#opção do comando pdns_control: reload (Instruct the server to reload all its zones, this will not add new zones)
#mais informações acesse: https://doc.powerdns.com/authoritative/manpages/pdns_control.1.html
sudo pdns_control reload

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil list-all-zones

#listando apenas a Zona Reversa IPv6 ip6.arpa Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
#mais informações acesse: https://manpages.debian.org/testing/pdns-server/pdnsutil.1.en.html
sudo pdnsutil zone list 7.9.6.8.0.9.0.0.c.4.1.0.4.0.8.2.ip6.arpa
```

## 21_ Testando as resoluções de Zonas e Nomes DNS no PowerDNS Authoritative no Ubuntu Server
```bash
#testando a resolução direta do PowerDNS Recursor com encaminhamento para o PowerDNS Authoritative
sudo nslookup pti.intra

#testando a resolução de nomes do Tipo SOA do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=SOA pti.intra

#testando a resolução de nomes do Tipo NS do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=NS pti.intra

#testando a resolução de nomes do Tipo A (IPv4) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=A pti.intra

#testando a resolução de nomes do Tipo AAAA (IPv6) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=AAAA pti.intra

#testando a resolução de nomes do Tipo A (IPv4) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=A wsvaamonde.pti.intra

#testando a resolução de nomes do Tipo AAAA (IPv6) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=AAAA wsvaamonde.pti.intra

#testando a resolução de nomes do Tipo A (IPv4) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=A ns1.pti.intra

#testando a resolução de nomes do Tipo AAAA (IPv6) do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=AAAA ns1.pti.intra

#testando a resolução de nomes do Tipo CNAME do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=CNAME pdns.pti.intra

#testando a resolução reversa do PowerDNS Recursor com encaminhamento para o PowerDNS Authoritative
sudo nslookup 172.16.1.20
sudo nslookup 2804:14c:90:8697::20

#testando a resolução reversa do Tipo PTR do PowerDNS Authoritative
#opção do comando nslookup: -type (query type filter)
sudo nslookup -type=PTR 172.16.1.20
sudo nslookup -type=PTR 2804:14c:90:8697::20

#testando o resolução da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: @127.0.0.1 (loopback), -p (port), pti.intra (Zona Interna), A (Register Type IPv4),
# AAAA (Register Type IPv6), +noall (This option sets or clears all display flags), +answer (This option 
#displays [or does not display] the answer section of a reply)
sudo dig @127.0.0.1 -p 5300 pti.intra A +noall +answer
sudo dig @127.0.0.1 -p 5300 pti.intra AAAA +noall +answer

#testando a resolução de Nomes da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: @127.0.0.1 (loopback), -p (port), pti.intra (Zona Interna), A (Register Type IPv4),
# AAAA (Register Type IPv6), +noall (This option sets or clears all display flags), +answer (This option 
#displays [or does not display] the answer section of a reply)
sudo dig @127.0.0.1 -p 5300 wsvaamonde.pti.intra A +noall +answer
sudo dig @127.0.0.1 -p 5300 wsvaamonde.pti.intra AAAA +noall +answer

#testando a resolução de Nomes da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: @127.0.0.1 (loopback), -p (port), pti.intra (Zona Interna), A (Register Type IPv4),
# AAAA (Register Type IPv6), +noall (This option sets or clears all display flags), +answer (This option 
#displays [or does not display] the answer section of a reply)
sudo dig @127.0.0.1 -p 5300 -x 172.16.1.20 +noall +answer
sudo dig @127.0.0.1 -p 5300 -x 2804:14c:90:8697::20 +noall +answer

#testando a resolução de nomes externos do PowerDNS Recursor
sudo nslookup google.com

#analisando os Logs de Pesquisa de Resolução de Nomes do PowerDNS Recursor
#opção do comando tcpdump: -n (Don't convert addresses), -i (interface), any (all interface), port (port list)
sudo tcpdump -ni any port 53
```

## 22_ Fazendo o download do PowerDNS Admin e descompactando no diretório padrão do NGINX Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o aplicativo e os arquivos de configuração do *PowerDNS Admin* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/PowerDNS-Admin/PowerDNS-Admin/releases

```bash
#acessando o diretório temporário do Ubuntu Server
cd /tmp

#fazendo o download do PowerDNS Admin do site Oficial do Github (Link atualizado em: 20/11/2025)
#opção do comando wget: -O (output-document)
wget -O pdns-admin.tar.gz https://github.com/PowerDNS-Admin/PowerDNS-Admin/archive/refs/tags/v0.4.2.tar.gz

#descompactando o arquivo do PowerDNS Admin
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
tar -zxvf pdns-admin.tar.gz

#OBSERVAÇÃO IMPORTANTE: ALTERAR O CAMINHO DO DESTINO CONFORME NECESSIDADE
#movendo o conteúdo do PowerDNS Admin para o diretório de site padrão do NGINX Server
#opção do comando mv: -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo mv -v PowerDNS-Admin*/ /var/www/html/pdns/
```

## 23_ Atualizando os arquivos de configuração do PowerDNS Admin no Ubuntu Server
```bash
#atualizando o arquivo de configuração do PowerDNS Admin
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /var/www/html/pdns/powerdnsadmin/default_config.py https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/default_config.py

#atualizando o arquivo de configuração do PowerDNS Admin do NGINX Server
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/nginx/conf.d/pdns-admin.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-admin.conf

#atualizando o arquivo de inicialização do serviço do PowerDNS Admin
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/pdnsadmin.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdnsadmin.service

#atualizando o arquivo de socket do serviço do PowerDNS Admin
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/systemd/system/pdnsadmin.socket https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdnsadmin.socket

#criando o diretório e arquivo de runtime do PowerDNS Admin
#opção do comando mkdir: -v (verbose)
#opção do comando chown: -R (recursive), -v (verbose), pdns: (user and group)
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
sudo mkdir -v /run/pdnsadmin/
sudo chown -Rv pdns: /run/pdnsadmin/
echo "d /run/pdnsadmin 0755 pdns pdns -" | sudo tee /etc/tmpfiles.d/pdnsadmin.conf > /dev/null
```

## 24_ Editando os arquivos de configuração do PowerDNS Admin no Ubuntu Server
```bash
#editando o arquivo de configuração do PowerDNS Admin
#opção do comando wget: -v (verbose), -O (output file)
sudo vim /var/www/html/pdns/powerdnsadmin/default_config.py

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 21 até 22 das variáveis dos endereços IPv4 e Porta
BIND_ADDRESS = '172.16.1.20'
PORT = 9191

#alterar as linhas de: 25 até 26 das variáveis de salt e secret
SALT = 'pwerdns'
SECRET_KEY = 'powerdns'

#alterar as linhas de: 45 até 49 das variáveis de conexão do PostgreSQL Server
SQLA_DB_DRIVER = 'postgresql'
SQLA_DB_USER = 'powerdns'
SQLA_DB_PASSWORD = 'powerdns'
SQLA_DB_HOST = 'powerdns'
SQLA_DB_NAME = 'powerdns
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de configuração do PowerDNS Admin do NGINX Server
#opção do comando wget: -v (verbose), -O (output file)
sudo vim  /etc/nginx/conf.d/pdns-admin.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha 22 da variável do nome do servidor do NGINX Server
server_name pdns.pti.intra;
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 25_ Configurando o Ambiente Virtual e instalando as Dependências do PowerDNS Admin no Ubuntu Server
```bash
#Acessando o diretório de instalação do PowerDNS-Admin no servidor NGINX
cd /var/www/html/pdns/

#Criando um ambiente virtual isolado em Python 3 para o PowerDNS-Admin
#opção do comando virtualenv: -p (virtual python isolation)
virtualenv -p python3 flask

#Ativando o ambiente virtual Python (modo ativo)
source ./flask/bin/activate

#Atualizando o gerenciador de pacotes pip dentro do ambiente virtual
#opção do comando python: -m (module), pip install (install module), --upgrade (upgrade module)
python -m pip install --upgrade pip

#Instalando todas as dependências Python listadas no arquivo requirements.txt
#opção do comando pip: install (install module), -r (requirement)
pip install -r requirements.txt

#Definindo a variável de ambiente FLASK_APP apontando para o aplicativo principal do PowerDNS-Admin
export FLASK_APP=powerdnsadmin/__init__.py

#Atualizando o banco de dados interno do Flask (migrações com o Alembic)
#opção do comando falsk: db
flask db upgrade

#Instalando as dependências de frontend (JavaScript/CSS) usando o Yarn
#opção do comando yarn: install (), --pure-lockfile
yarn install --pure-lockfile

#Gerando (compilando) os arquivos estáticos do frontend do Flask
#opção do comando flask: assets
flask assets build

#Desativando o ambiente virtual Python (voltando ao shell normal)
deactivate
```

## 26_ Alterando as permissões dos diretórios do PowerDNS Admin no Ubuntu Server
```bash
#alterando as permissões do diretório de instalação do PowerDNS Admin no NGINX Server
#opções do comando chown: -R (recursive), -v (verbose), www-data:www-data (user/owner and group default)
sudo chown -Rv www-data:www-data /var/www/html/pdns

#alterando as permissões do diretório de administração do PowerDNS Admin no NGINX Server
#opções do comando chown: -R (recursive), -v (verbose), pdns: (user/owner default)
sudo chown -Rv pdns: /var/www/html/pdns/powerdnsadmin/
```

## 27_ Desativando o site padrão do NGINX Server no Ubuntu Server
```bash
#removendo o arquivo de configuração do site padrão do NGINX Server
#opção do comando rm: -v (verbose)
sudo rm -v /etc/nginx/sites-enabled/default

#testando os arquivos de configuração do NGINX Server
#opção do comando nginx: -t (test config files)
sudo nginx -t

#reiniciando o serviço do NGINX Server no Ubuntu Server
#opção do comando systemctl: restart (Stop and then start one or more units), status (runtime status 
#information)
sudo systemctl restart nginx
sudo systemctl status nginx

#verificando a porta padrão TCP-80 do NGINX Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80' -sTCP:LISTEN
```

## 28_ Habilitando e iniciando os serviços do PowerDNS Admin no Ubuntu Server
```bash
#habilitando o serviço do PowerDNS Admin no Ubuntu Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), enable (Enable 
#one or more units), --now (When used with enable, the units will also be started), start (Start (activate)
#one or more units), status (runtime status information)
sudo systemctl daemon-reload
sudo systemctl enable --now pdnsadmin.service pdnsadmin.socket
sudo systemctl start pdnsadmin.service pdnsadmin.socket
sudo systemctl status pdnsadmin.service pdnsadmin.socket

#analisando os Log's e mensagens de erros do PowerDNS Admin e Socket
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu pdnsadmin
sudo journalctl -xeu pdnsadmin.socket
```

## 29_ Acessando e configurando o PowerDNS Authoritative via navegador no PowerDNS Admin
```bash
#utilizar os navegadores para testar o acesso ao PowerDNS Admin
firefox ou google chrome: http://endereço_ipv4_ubuntuserver
```
```bash
#registrando uma conta de acesso ao PowerDNS Admin
Create an account
  Enter your personal details below
    First name: Seu Nome
    Last name: Seu Sobrenome
    Email: seu_email@seu_domínio.intra
    Username: SEU_USUÁRIO
    Password: SUA_SENHA_SEGURA
    Retype password: CONFIRMAR_SUA_sENHA
    Captcha: 123456
  <Register>
```
```bash
#se autenticando com a conta criada no PowerDNS Admin
PowerDNS-Admin
  Username: SEU_USUÁRIO
  Password: SUA_SENHA
  OPT Token: Default (são configuração)
  Remember Me: (ON)
<Sign In>
```
```bash
#configuração do PowerDNS Authoritative no PowerDNS Admin
Server Settings
  PowerDNS API URL: http://127.0.0.1:8081/
  PowerDNS API Key: powerdns
  PowerDNS Version: 5.0.0
<Save Settings>
```
```bash
#habilitando a visualização dos registros das zonas no PowerDNS Admin
Administration
  Settings
    Zone Records
       1  A      Forward Zone: (Yes)  Reverse Zone: (Yes)
       2  AAAA   Forward Zone: (Yes)  Reverse Zone: (Yes)
       9  CNAME  Forward Zone: (Yes)  Reverse Zone: (Yes)
      17  MX     Forward Zone: (Yes)  Reverse Zone: (Yes)
      27  SOA    Forward Zone: (Yes)  Reverse Zone: (Yes)
  <Save Settings>
```
```bash
#criando uma conta de gerenciamento das Zonas do PowerDNS Admin
Administration
  Accounts
    <+Add Account>
      Create Account
        Account Editor
          Name: hostmaster
          Description: Descrição da Conta
          Contact Person: Telefone de Contato da Conta
          Mail Address: hostmaster@seu_domínio.intra
        Access Control
          Click on users to move between columns: seu_usuário
          Click on zones to move between columns: seu_domínio
    <Create Account>
```
```bash
#habilitando a atualização da Zona de Pesquisa Inversa no PowerDNS Admin
Zone Management
  Dashboard
    Zones
      Clique em: sua_zona
        <Zone Settings>
          Change Zone Account
            Account: hostmaster <Update Account>
          Zone Access Control
            Click on users to move from between columns: seu_usuário
          <Save Changes>
          Auto PTR creation
            Allow automatic reverse pointer creation on record updates? (ON)
              New setting created and updated. <Close>
```
```bash
#habilitando a atualização da Zona de Pesquisa Reversa IPv4 no PowerDNS Admin
Zone Management
  Dashboard
    Zones in-addr.arpa
      Clique em: sua_zona_reversa
        <Zone Settings>
          Change Zone Account
            Account: hostmaster <Update Account>
          Zone Access Control
            Click on users to move from between columns: seu_usuário
          <Save Changes>
          Auto PTR creation
            Allow automatic reverse pointer creation on record updates? (ON)
              New setting created and updated. <Close>
```
```bash
#habilitando a atualização da Zona de Pesquisa Reversa IPv6 no PowerDNS Admin
Zone Management
  Dashboard
    Zones ip6.arpa
      Clique em: sua_zona_reversa
        <Zone Settings>
          Change Zone Account
            Account: hostmaster <Update Account>
          Zone Access Control
            Click on users to move from between columns: seu_usuário
          <Save Changes>
          Auto PTR creation
            Allow automatic reverse pointer creation on record updates? (ON)
              New setting created and updated. <Close>
```

========================================DESAFIOS=========================================

**#30_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

