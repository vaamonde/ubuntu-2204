#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/10/2025<br>
#Data de atualização: 09/10/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do PowerDNS: https://www.powerdns.com/<br>
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

**OBSERVAÇÃO IMPORTANTE:** O POWERDNS SERVER E POWERDNS ADMIN POSSUI AS DEPENDÊNCIAS DO *BANCO DE DADOS MYSQL SERVER* E DO *FRAMEWORKS NODE.JS*, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: **03 DO MYSQL SERVER 8 E NA ETAPA 05 DO NODE.JS**.

**OBSERVAÇÃO IMPORTANTE:** É RECOMENDADO UTILIZADO O NGINX SERVER PARA AS CONFIGURAÇÕES DO POWERDNS ADMIN, CUIDADO COM A INSTALAÇÃO DO APACHE2 SERVER PARA NÃO ENTRAR EM CONFLITO NAS CONFIGURAÇÕES, RECOMENDADO INSTALAR O NGINX SERVER DE FORMA SIMPLES, SEM CONFIGURAÇÃO EXTRA DO PHP-FPM.

## 01_Instalando as dependências do PowerDNS Autoritativo, Recursivo e do Admin no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do PowerDNS Autoritativo, Recursivo Admin no Ubuntu Serve
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install nginx python3-dev libsasl2-dev libldap2-dev libssl-dev libxml2-dev libxslt1-dev \
libxmlsec1-dev libffi-dev pkg-config apt-transport-https virtualenv build-essential libmariadb-dev \
git python3-flask libpq-dev vim gnupg gcc g++ make software-properties-common tree build-essential \
ca-certificates apt-transport-https curl ssl-cert

#instalando a dependência do PowerDNS Admin do Yarn
#opção do comando npm: install (install a package), -g (in global mode)
sudo npm install -g yarn
```

## 02_ Desativando o Serviço do Systemd e Resolução de DNS do Resolved do Ubuntu Server
```bash
#parando o serviço do Systemtd Resolved do Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units specified on the command line)
sudo systemctl stop systemd-resolved

#desabilitando o serviço do Systemtd Resolved do Ubuntu Server
#opções do comando systemctl: disable (Disables one or more units), --now (When used with disable, 
#the units will also be disabled service)
sudo systemctl disable --now systemd-resolved

#removendo o arquivo resolv.conf do Ubuntu Server
#opção do comando rm: -r (recursive), -f (force), -v (verbose)
sudo rm -rfv /etc/resolv.conf

#atualizando o arquivo resolv.conf com servidor DNS Temporário do Google
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf

#testando a resolução de nomes temporários do DNS no Ubuntu Server
sudo nslookup google.com
```

## 03_ Instalando o PowerDNS Authoritative, Recursor e Backend MySQL no Ubuntu Server
```bash
#instando o PowerDNS Authoritative, Recursor e Backend MySQL no Ubuntu Server
sudo apt install pdns-server pdns-recursor pdns-backend-mysql 
```

## 04_ Verificando os serviços do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
#verificando o serviço do PowerDNS Authoritative e Recursor
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status pdns pdns-recursor
sudo systemctl restart pdns pdns-recursor
sudo systemctl reload pdns pdns-recursor
sudo systemctl stop pdns pdns-recursor
sudo systemctl start pdns pdns-recursor

#analisando os Log's e mensagens de erro do PowerDNS Authoritative e Recursor
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

## 05_ Localização dos diretórios principais do PowerDNS no Ubuntu Server
```bash
/etc/powerdns/*                        <-- Diretório dos arquivos de configuração do serviço do PowerDNS
/etc/powerdns/pdns.conf                <-- Arquivo de configuração principal do serviço do PowerDNS Authoritative
/etc/powerdns/recursor.conf            <-- Arquivo de configuração principal do serviço do PowerDNS Recursor
/etc/powerdns/pdns.d/                  <-- Diretório dos arquivos de configuração do PowerDNS Authoritative
/etc/powerdns/pdns.d/bind.conf         <-- Arquivo de configuração da Base de Dados do Bind9 DNS Server
/etc/powerdns/pdns.d/pdns-mysql.conf   <-- Arquivo de configuração da Base de Dados do MySQL Server
/etc/powerdns/recursor.d/              <-- Diretório dos arquivos de configuração do PowerDNS Recursor
/var/lib/powerdns/                     <-- Diretório dos arquivos de Zonas de Domínio do PowerDNS
/var/log/
```

## 06_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G pdns $USER

#verificando informações do grupo PDNS do PowerDNS
#opção do comando getent: group (the database system group)
sudo getent group pdns
```

## 07_ Criando a Base de Dados do PowerDNS Server no MySQL Server no Ubuntu Server
```bash
#acessando o MySQL Server com o usuário Root
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados do PowerDNS com o nome: powerdns */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse: https://www.w3schools.com/mysql/mysql_create_db.asp */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-database.html */
CREATE DATABASE powerdns;
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL, COM A OPÇÃO: __`LOCALHOST`__.

```sql
/* Criando o usuário e senha da Base de Dados do PowerDNS */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'powerdns'@'localhost' IDENTIFIED WITH mysql_native_password BY 'powerdns';

/* Aplicando as permissões de acesso do usuário PowerDNS */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO CONFORME NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT USAGE ON *.* TO 'powerdns'@'localhost';
GRANT ALL PRIVILEGES ON powerdns.* TO 'powerdns'@'localhost';

/* aplicando todas as mudanças na base de dados */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* Verificando o Usuário do PowerDNS foi criado no Banco de Dados MySQL Server */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='powerdns';

/* Visualizando as bases de dados do MySQL */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Acessando o Banco de Dados powerdns */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/9.0/en/use.html */
USE powerdns;

/* Saindo do Banco de Dados */
exit
```
```bash
#se logando com o usuário powerdns para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* visualizando a base de dados do PowerDNS e acessando o Banco para testar a conexão */
SHOW DATABASES;
USE powerdns;
exit
```

## 08_ Testando o acesso a Base de Dados do PowerDNS Server no MySQL Server no Ubuntu Server
```bash
#conectando no banco de dados MySQL Server com o usuário powerdns
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* Listando os Bancos de Dados do MySQL Server */
SHOW DATABASES;

/* Acessando o Banco de Dados PowerDNS Server */
USE powerdns;

/* Saindo do Banco de Dados MySQL Server*/
exit
```

## 09_ Populando as Tabelas no Banco de Dados do PowerDNS Server utilizando o arquivo de Esquema do MySQL Server no Ubuntu Server
```bash
#importando o esquema e os dados iniciais do banco de dados do PowerDNS Server
#opção do redirecionador < (menor): Redireciona a entrada padrão (STDIN)
#opções do comando mysql: -u (user), -p (password), powerdns (database)
sudo mysql -u powerdns -p powerdns < /usr/share/pdns-backend-mysql/schema/schema.mysql.sql

#conectando no banco de dados MySQL Server com o usuário powerdns
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* Listando os Bancos de Dados do MySQL Server */
SHOW DATABASES;

/* Acessando o Banco de Dados PowerDNS Server */
USE powerdns;

/* Verificando as Tabelas criadas pelo Script */
SHOW TABLES;

/* Saindo do Banco de Dados MySQL Server*/
exit
```

## 10_ Atualizando os arquivos de configuração do PowerDNS no Ubuntu Server
```bash
#atualizando o arquivo de configuração do Bind9 DNS Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/bind.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-bind.conf

#atualizando o arquivo de configuração do MySQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/pdns-mysql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-mysql.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns.conf

#atualizando o arquivo de configuração do PowerDNS Recursor do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/recursor.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recursor.conf
```

## 11_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server
```bash
#editar o arquivo de configuração do PowerDNS Backend MySQL
sudo vim /etc/powerdns/pdns.d/pdns-mysql.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha:

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
#alterar a linha:

```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração do PowerDNS Recursor
sudo vim /etc/powerdns/recursor.yml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha:

```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#atualizando o arquivo resolv.conf com servidor do PowerDNS Recursor
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "nameserver 172.16.1.20" | sudo tee /etc/resolv.conf
```


sudo systemctl stop pdns
sudo pdns_server --daemon=no --guardian=no --loglevel=9

sudo systemctl restart pdns pdns-recursor
sudo lsof -nP -iTCP:'53,5300' -sTCP:LISTEN


cd /tmp
wget https://github.com/PowerDNS-Admin/PowerDNS-Admin/archive/refs/tags/v0.4.2.tar.gz
tar -zxvf v0.4.2.tar.gz
sudo mv -v PowerDNS*/ /var/www/html/pdns

cd /var/www/html/pdns/
virtualenv -p python3 flask
source ./flask/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
deactivate

sudo vim /var/www/html/pdns/powerdnsadmin/default_config.py

cd /var/www/html/pdns/
source ./flask/bin/activate
export FLASK_APP=powerdnsadmin/__init__.py
flask db upgrade
yarn install --pure-lockfile
flask assets build
deactivate

sudo vim /etc/nginx/conf.d/pdns-admin.conf
sudo nginx -t

sudo chown -Rv www-data:www-data /var/www/html/pdns

sudo vim /etc/systemd/system/pdnsadmin.service

sudo vim /etc/systemd/system/pdnsadmin.socket

echo "d /run/pdnsadmin 0755 pdns pdns -" | sudo tee /etc/tmpfiles.d/pdnsadmin.conf
sudo mkdir -v /run/pdnsadmin/
sudo chown -Rv pdns: /run/pdnsadmin/
sudo chown -Rv pdns: /var/www/html/pdns/powerdnsadmin/

sudo systemctl daemon-reload
sudo systemctl enable --now pdnsadmin.service pdnsadmin.socket
sudo systemctl status pdnsadmin.service pdnsadmin.socket

dig pti.intra @127.0.0.1 -p 5301
dig wsvaamonde.pti.intra @127.0.0.1 -p 5301

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO AUDITD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Auditd realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/22-auditd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioauditd #desafioaudit #desafiosecurity
