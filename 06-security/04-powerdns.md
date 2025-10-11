#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/10/2025<br>
#Data de atualização: 10/10/2025<br>
#Versão: 0.03<br>

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

## 01_Instalando as dependências do PowerDNS Authoritative, Recursor e do Admin no Ubuntu Server
```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do PowerDNS Authoritative, Recursor  Admin no Ubuntu Server
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

## 03_ Baixando e instalando a Chave GPG do PowerDNS Authoritative e Recursor no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o PowerDNS Authoritative e Recursor possui várias versões, para verificar as *chaves GPG* de cada versão acesse o link: https://repo.powerdns.com/

```bash
#download da Chave GPG do PowerDNS Authoritative (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.0.x EM: 10/10/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-auth-5.0.gpg

#download da Chave GPG do PowerDNS Recursor (VERSÃO ESTÁVEL ATÉ O MOMENTO: 5.3.x EM: 10/10/2025)
#opção do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
#opção do comando gpg: -o (output)
curl -fsSL https://repo.powerdns.com/FD380FBB-pub.asc | sudo gpg --dearmor -o /usr/share/keyrings/powerdns-recur-5.3.gpg
```

## 04_ Criando o repositório do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
#criando o arquivo do repositório do Apt do PowerDNS Authoritative no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/powerdns-auth-5.0.gpg] http://repo.powerdns.com/ubuntu jammy-auth-50 main" | sudo tee /etc/apt/sources.list.d/pdns-auth.list

#criando o arquivo do repositório do Apt do PowerDNS Recursor no Ubuntu Server
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "deb [signed-by=/usr/share/keyrings/powerdns-recur-5.3.gpg] http://repo.powerdns.com/ubuntu jammy-rec-53 main" | sudo tee /etc/apt/sources.list.d/pdns-recur.list

#criando o arquivo de preferências do PowerDNS no Ubuntu Server
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
echo -e "Package: pdns-* \nPin: origin repo.powerdns.com \nPin-Priority: 600" | sudo tee /etc/apt/preferences.d/powerdns
```

## 05_ Atualizando as Lista do Apt com o novo Repositório do PowerDNS no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório no Ubuntu Server
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update
```

## 06_ Instalando o PowerDNS Authoritative, Recursor e Backend MySQL no Ubuntu Server
```bash
#instando o PowerDNS Authoritative, Recursor e Backend MySQL no Ubuntu Server
sudo apt install pdns-server pdns-recursor pdns-backend-mysql 
```

## 07_ Verificando os serviços do PowerDNS Authoritative e Recursor no Ubuntu Server

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

## 08_ Localização dos diretórios principais do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
/etc/powerdns/*                        <-- Diretório dos arquivos de configuração do serviço do PowerDNS
/etc/powerdns/pdns.conf                <-- Arquivo de configuração principal do serviço do PowerDNS Authoritative
/etc/powerdns/recursor.conf            <-- Arquivo de configuração principal do serviço do PowerDNS Recursor
/etc/powerdns/pdns.d/                  <-- Diretório dos arquivos de configuração do PowerDNS Authoritative
/etc/powerdns/pdns.d/bind.conf         <-- Arquivo de configuração da Base de Dados Backend do Bind9 DNS Server
/etc/powerdns/pdns.d/pdns-mysql.conf   <-- Arquivo de configuração da Base de Dados Backend do MySQL Server
/etc/powerdns/recursor.d/              <-- Diretório dos arquivos de configuração do PowerDNS Recursor
/var/lib/powerdns/                     <-- Diretório dos arquivos de Zonas de Domínio do PowerDNS Authoritative
/var/log/pdns/                         <-- Diretório dos arquivos de Logs do PowerDNS Authoritative e Recursor
```

## 09_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G pdns $USER

#verificando informações do grupo PDNS do PowerDNS
#opção do comando getent: group (the database system group)
sudo getent group pdns
```

## 10_ Criando a Base de Dados do PowerDNS Authoritative no MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** NESSE CENÁRIO O BANCO DE DADOS DO MYSQL SERVER UTILIZADO PELO POWERDNS AUTHORITATIVE ESTÁ NO MESMO SERVIDOR PARA EFEITO DE DESEMPENHO E SEGURANÇA, NÃO É RECOMENDO HABILITAR O RECURSO DE CONEXÃO REMOTA DO MYSQL SERVER E NEM CRIAR USUÁRIOS REMOTOS UTILIZANDO O @ (ARROBA).

```bash
#acessando o MySQL Server com o usuário Root
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados do PowerDNS Authoritative com o nome: powerdns */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse: https://www.w3schools.com/mysql/mysql_create_db.asp */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-database.html */
CREATE DATABASE powerdns;
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL, COM A OPÇÃO: __`LOCALHOST`__.

```sql
/* Criando o usuário e senha da Base de Dados do PowerDNS Authoritative */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/create-user.html */
CREATE USER 'powerdns'@'localhost' IDENTIFIED WITH mysql_native_password BY 'powerdns';

/* Aplicando as permissões de acesso do usuário do PowerDNS Authoritative */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO CONFORME NECESSIDADE */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/grant.html */
GRANT USAGE ON *.* TO 'powerdns'@'localhost';
GRANT ALL PRIVILEGES ON powerdns.* TO 'powerdns'@'localhost';

/* aplicando todas as mudanças na base de dados do MySQL Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/flush.html */
FLUSH PRIVILEGES;

/* Verificando o Usuário do PowerDNS Authoritative foi criado no Banco de Dados MySQL Server */
/* Mais informações acesse: https://www.w3schools.com/sql/sql_ref_select.asp */
SELECT user,host,authentication_string FROM mysql.user WHERE user='powerdns';

/* Visualizando as bases de dados do MySQL Server */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/8.4/en/show-databases.html */
SHOW DATABASES;

/* Acessando o Banco de Dados powerdns */
/* Mais informações acesse: https://dev.mysql.com/doc/refman/9.0/en/use.html */
USE powerdns;

/* Saindo do Banco de Dados MySQL Server */
exit
```
```bash
#se logando com o usuário powerdns para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u powerdns -p
```
```sql
/* visualizando a base de dados do PowerDNS Authoritative e acessando o Banco para testar a conexão */
SHOW DATABASES;
USE powerdns;
exit
```

## 11_ Testando o acesso a Base de Dados do PowerDNS Authoritative no MySQL Server no Ubuntu Server
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

## 12_ Populando as Tabelas no Banco de Dados do PowerDNS Authoritative utilizando o arquivo de esquema do MySQL Server no Ubuntu Server
```bash
#importando o esquema e os dados iniciais do banco de dados do PowerDNS Authoritative
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

/* Acessando o Banco de Dados PowerDNS Authoritative */
USE powerdns;

/* Verificando as Tabelas criadas pelo Script */
SHOW TABLES;

/* Saindo do Banco de Dados MySQL Server*/
exit
```

## 13_ Atualizando os arquivos de configuração do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
#atualizando o arquivo de configuração do PowerDNS Authoritative Backend Bind9 DNS Server do Github
#OBSERVAÇÃO IMPORTANTE: NESSE ARQUIVO ESTÁ SENDO DESATIVADO O RECURSO DE BANCO DE DADOS
#UTILIZANDO O SERVIÇO DO BIND9 DNS SERVER COMO SERVIÇO DE BACKEND DO POWERDNS AUTHORITATIVE
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/bind.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-bind.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Backend MySQL Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.d/pdns-mysql.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns-mysql.conf

#atualizando o arquivo de configuração do PowerDNS Authoritative do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/pdns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/pdns.conf

#atualizando o arquivo de configuração do PowerDNS Recursor do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/powerdns/recursor.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/recursor.conf
```

## 14_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O ARQUIVO DE CONFIGURAÇÃO DO BACKEND BIND9 SERVER ESTÁ COM TODAS AS LINHAS COMENTADAS PARA NÃO ENTRAR EM CONFLITO COM O BACKEND DO MYSQL SERVER.

```bash
#editar o arquivo de configuração do PowerDNS Backend MySQL Server
sudo vim /etc/powerdns/pdns.d/pdns-mysql.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha de: 20 até 32 das variáveis de conexão do MySQL Server
gmysql-host=127.0.0.1
gmysql-port=3306
gmysql-dbname=powerdns
gmysql-user=powerdns
gmysql-password=powerdns
#
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
#alterar a linha de: 33 até 38 das variáveis
local-address=127.0.0.1
local-port=5300
server-id=auth.pti.intra
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
#alterar a linha de: 17 até 65 das variáveis dos endereços IPv4 e IPv4
#Zonas Internas de encaminhamento e encaminhadores externos de DNS Server
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#atualizando o arquivo resolv.conf com servidor do PowerDNS Recursor
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
echo "nameserver 172.16.1.20" | sudo tee /etc/resolv.conf
```

## 15_ Testando o serviço do PowerDNS Authoritative e Backend MySQL no Ubuntu Server

```bash
#parando o serviço do PowerDNS Authoritative no Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units)
sudo systemctl stop pdns

#testando o serviço do PowerDNS Authoritative se está conectando com o Backend
#opção do comando pdns_server: 
#OBSERVAÇÃO: para finalizar o teste do serviço do PowerDNS Authoritative pressione: Ctrl+C
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
```

## 16_ Verificando a Porta de Conexão do PowerDNS Authoritative e Recursor no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando as portas padrões TCP-53 e 5300 e UDP-53 e 5300 do PowerDNS Authoritative e Recursor
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'53,5300' -sTCP:LISTEN
sudo lsof -nP -iUDP:'53,5300'
```

## 17_ Criando uma Zona Interna no PowerDNS Authoritative no Ubuntu Server
```bash
#criando a Zona Interna no PowerDNS Authoritative
#opções do comando pdnsutil: create-zone (Create an empty zone named ZONE), pti.intra (Zone named), 
#ns1.pti.intra (Create register record NS1 with Zone named)
sudo pdnsutil create-zone pti.intra ns1.pti.intra

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
sudo pdnsutil list-all-zones

#listando apenas a Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
sudo pdnsutil zone list pti.intra

#removendo o registro do tipo SOA (start of authority) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: delete-rrset (Delete named RRSET from zone. NAME must be absolute), pti.intra (Zone named),
#pti.intra (record name), SOA (Type of register - start of authority)
sudo pdnsutil delete-rrset pti.intra pti.intra SOA

#criando o registro do tipo SOA (start of authority) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), pti.intra (record name), SOA (Type SOA - Start os Authority), 3600 (TTL - Time to Live),
#ns1.pti.intra (NS - primary DNS server), hostmaster.pti.intra. (responsible mail), 2025100801 (number of serial zone),
#3600 (TTL - time to live zone), 600 (retry zone), 604800 (expire zone), 86400 (minimum negative TTIL)
sudo pdnsutil add-record pti.intra pti.intra SOA 3600 "ns1.pti.intra. hostmaster.pti.intra. 2025100801 3600 600 604800 86400"

#criando o registro do tipo A (IPv4 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), ns1. pti.intra (record name NS - name server), A (type IPv4 record), 3600 (TTL - Time
# to Live), 172.16.1.20 (IPv4 Address record name)
sudo pdnsutil add-record pti.intra ns1.pti.intra A 3600 172.16.1.20

#criando o registro do tipo A (IPv4 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), pti.intra (record name), A (type IPv4 record), 3600 (TTL - Time to Live), 172.16.1.20
#(IPv4 Address record name)
sudo pdnsutil add-record pti.intra pti.intra A 3600 172.16.1.20

#criando o registro do tipo A (IPv4 Address) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), wsvaamonde.pti.intra (record name), A (type IPv4 record), 3600 (TTL - Time to Live),
#172.16.1.20 (IPv4 Address record name)
sudo pdnsutil add-record pti.intra wsvaamonde.pti.intra A 3600 172.16.1.20

#atualizando os registros da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: rectify-zone (Calculates the 'ordername' and 'auth' fields for a zone called ZONE so 
#they comply with DNSSEC settings), pti.intra (zone named)
sudo pdnsutil rectify-zone pti.intra

#atualizando e reiniciando o serviço do PowerDNS Authoritative
#opção do comando pdns_control: reload (Instruct the server to reload all its zones, this will not add new zones) 
sudo pdns_control reload

#listando Zona Interna criada com os novos registros no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
sudo pdnsutil zone list pti.intra
```

## 18_ Testando as resoluções de Zonas e Nomes DNS no PowerDNS Authoritative no Ubuntu Server
```bash
#testando o resolução da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: pti.intra (Zona Interna), @127.0.0.1 (loopback), -p (port)
dig pti.intra @127.0.0.1 -p 5300

#testando a resolução de Nomes da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: wsvaamonde.pti.intra (REgister Type A), @127.0.0.1 (loopback), -p (port)
dig wsvaamonde.pti.intra @127.0.0.1 -p 5300

#testando a resolução de Zona Interna e Externas utilizando o PowerDNS Recursor
nslookup pti.intra
nslookup google.com
```

## 19_ Fazendo o download do PowerDNS Admin e descompactando no diretório padrão do NGINX Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o aplicativo e os arquivos de configuração do *PowerDNS Admin* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/PowerDNS-Admin/PowerDNS-Admin/releases

```bash
#acessando diretório temporário do Ubuntu Server
cd /tmp

#fazendo o download do PowerDNS Admin do site Oficial do Github (Link atualizado em: 10/10/2025)
#opção do comando wget: -O (output-document)
wget -O pdns-admin.tar.gz https://github.com/PowerDNS-Admin/PowerDNS-Admin/archive/refs/tags/v0.4.2.tar.gz

#descompactando o arquivo do PowerDNS Admin
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
tar -zxvf pdns-admin.tar.gz

#OBSERVAÇÃO IMPORTANTE: ALTERAR O CAMINHO DO DESTINO CONFORME NECESSIDADE
#movendo o conteúdo do PowerDNS Admin para o diretório do NGINX Server
#opção do comando mv: -v (verbose)
#opção do caractere curinga * (asterisco): Qualquer coisa
sudo mv -v PowerDNS-Admin*/ /var/www/html/pdns/
```

## 20_ Atualizando os arquivos de configuração do PowerDNS Admin no Ubuntu Server
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

#criando o arquivo e diretório de runtime do PowerDNS Admin
#opção do comando mkdir: -v (verbose)
#opção do comando chown: -R (recursive), -v (verbose)
sudo mkdir -v /run/pdnsadmin/
sudo chown -Rv pdns: /run/pdnsadmin/
echo "d /run/pdnsadmin 0755 pdns pdns -" | sudo tee /etc/tmpfiles.d/pdnsadmin.conf

```

cd /var/www/html/pdns/
virtualenv -p python3 flask
source ./flask/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
export FLASK_APP=powerdnsadmin/__init__.py
flask db upgrade
yarn install --pure-lockfile
flask assets build
deactivate



sudo vim /etc/nginx/conf.d/pdns-admin.conf
sudo nginx -t

sudo chown -Rv www-data:www-data /var/www/html/pdns
sudo chown -Rv pdns: /var/www/html/pdns/powerdnsadmin/

sudo vim /etc/systemd/system/pdnsadmin.service
sudo vim /etc/systemd/system/pdnsadmin.socket

sudo systemctl daemon-reload
sudo systemctl restart nginx
sudo systemctl enable --now pdnsadmin.service pdnsadmin.socket
sudo systemctl status pdnsadmin.service pdnsadmin.socket

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

