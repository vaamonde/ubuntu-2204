#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 07/10/2025<br>
#Data de atualização: 20/11/2025<br>
#Versão: 0.06<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as dependências do PowerDNS Authoritative, Recursor e do Admin no Ubuntu Server<br>
#02_ Desativando o Serviço do Systemd e Resolução de DNS do Resolved do Ubuntu Server<br>
#03_ Baixando e instalando a Chave GPG do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#04_ Criando o repositório do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#05_ Atualizando as Lista do Apt com o novo Repositório do PowerDNS no Ubuntu Server<br>
#06_ Instalando o PowerDNS Authoritative, Recursor e Backend MySQL no Ubuntu Server<br>
#07_ Verificando os serviços do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#08_ Localização dos diretórios principais do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#09_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server<br>
#10_ Criando a Base de Dados do PowerDNS Authoritative no MySQL Server no Ubuntu Server<br>
#11_ Testando o acesso a Base de Dados do PowerDNS Authoritative no MySQL Server no Ubuntu Server<br>
#12_ Populando as Tabelas no Banco de Dados do PowerDNS Authoritative utilizando o arquivo de esquema do MySQL Server no Ubuntu Server<br>
#13_ Atualizando os arquivos de configuração do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#14_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server<br>
#15_ Testando o serviço do PowerDNS Authoritative e Backend MySQL no Ubuntu Server<br>
#16_ Verificando a Porta de Conexão do PowerDNS Authoritative e Recursor no Ubuntu Server<br>
#17_ Criando uma Zona de Pesquisa Interna no PowerDNS Authoritative no Ubuntu Server<br>
#18_ Testando as resoluções de Zonas e Nomes DNS no PowerDNS Authoritative no Ubuntu Server<br>
#19_ Fazendo o download do PowerDNS Admin e descompactando no diretório padrão do NGINX Server no Ubuntu Server<br>
#20_ Atualizando os arquivos de configuração do PowerDNS Admin no Ubuntu Server<br>
#21_ Editando os arquivos de configuração do PowerDNS Admin no Ubuntu Server<br>
#22_ Configurando o Ambiente Virtual e instalando as Dependências do PowerDNS Admin no Ubuntu Server<br>
#23_ Alterando as permissões dos diretórios do PowerDNS Admin no Ubuntu Server<br>
#24_ Desativando o site padrão do NGINX Server no Ubuntu Server<br>
#25_ Habilitando e iniciando os serviços do PowerDNS Admin no Ubuntu Server<br>
#26_ Acessando e configurando o PowerDNS Authoritative via navegador no PowerDNS Admin<br>
#27_ Testando as resoluções de Zona de Pesquisa Inversa do PowerDNS Authoritative no Ubuntu Server<br>

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
libxmlsec1-dev libffi-dev pkg-config apt-transport-https virtualenv build-essential libmariadb-dev \
git python3-flask libpq-dev vim gnupg gcc g++ make software-properties-common tree build-essential \
ca-certificates apt-transport-https curl ssl-cert php-pgsql

#instalando a dependência do PowerDNS Admin do Yarn
#opção do comando npm: install (install a package), -g (in global mode)
sudo npm install -g yarn
```

## 04_ Desativando o Serviço do Systemd e Resolução de DNS do Resolved do Ubuntu Server
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
#opção do comando echo: -e (enable interpretation of backslash escapes)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do caracter especial de escape \n: number line
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
echo -e "nameserver 8.8.8.8 \nnameserver 2001:4860:4860::8888" | sudo tee /etc/resolv.conf > /dev/null

#listando o conteúdo do arquivo resolv.conf com servidor DNS Temporário do Google
#opção do comando cat: -n (number line)
cat -n /etc/resolv.conf

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
sudo apt install pdns-server pdns-recursor pdns-backend-pgsql
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
```

## 11_ Adicionado o Usuário Local no Grupo Padrão do PowerDNS no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G pdns $USER

#verificando informações do grupo PDNS do PowerDNS
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
/* Mais informações acesse:  */
/* Mais informações acesse:  */
CREATE DATABASE powerdns;

/* Listando o Banco de Dados criado do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse:  */
\l powerdns
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL.

```sql
/* Criando o usuário e senha da Base de Dados do PowerDNS Authoritative */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE */
/* Mais informações acesse:  */
CREATE USER powerdns WITH PASSWORD 'SUA_SENHA_SEGURA';

/* Listando o Usuário do PowerDNS Authoritative criado no PostgreSQL Server */
/* Mais informações acesse:  */
\du powerdns

/* Alterando o dono da Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse:  */
ALTER DATABASE powerdns OWNER TO powerdns;

/* Alterando as permissões da Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON DATABASE powerdns TO powerdns;

/* Alterando os privilégios do Esquema Público da Base de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON SCHEMA public TO powerdns;

/* Conectando no Base de Dados do PowerDNS Authoritative no PostgreSQL Server */
/* Mais informações acesse:  */
\connect powerdns;

/* Saindo do Banco de Dados PostgreSQL Server */
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
/* Mais informações acesse:  */
\conninfo

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 14_ Populando as Tabelas no Banco de Dados do PowerDNS Authoritative utilizando o arquivo de esquema do PostgreSQL Server no Ubuntu Server
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
/* Mais informações acesse:  */
\dt

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 15_ Atualizando os arquivos de configuração do PowerDNS Authoritative e Recursor no Ubuntu Server
```bash
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

## 14_ Editando os arquivos de configuração dos serviços do PowerDNS no Ubuntu Server

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
#alterar as linhas de: 33 até 38 das variáveis
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

## 15_ Testando o serviço do PowerDNS Authoritative e Backend MySQL no Ubuntu Server
```bash
#parando o serviço do PowerDNS Authoritative no Ubuntu Server
#opção do comando systemctl: stop (Stop (deactivate) one or more units)
sudo systemctl stop pdns

#testando o serviço do PowerDNS Authoritative se está conectando com o Backend PostgreSQL Server
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
#verificando as portas padrões TCP-53 e 5300 e UDP-53 e 5300 e TCP-8081 do PowerDNS Authoritative e Recursor
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'53,5300,8181' -sTCP:LISTEN
sudo lsof -nP -iUDP:'53,5300'
```

## 17_ Criando uma Zona de Pesquisa Interna no PowerDNS Authoritative no Ubuntu Server
```bash
#criando a Zona de Pesquisa Direta Interna no PowerDNS Authoritative
#opções do comando pdnsutil: create-zone (Create an empty zone named ZONE), pti.intra (Zone named), 
#ns1.pti.intra (Create register record NS1 with Zone named)
sudo pdnsutil create-zone pti.intra ns1.pti.intra

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
sudo pdnsutil list-all-zones

#listando apenas a Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
sudo pdnsutil zone list pti.intra

#verificando erros na Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: check-zone (Check zone ZONE for correctness)
sudo pdnsutil check-zone pti.intra

#habilitando o suporte ao DNSSEC na Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: secure-zone (Configures a zone called ZONE with reasonable DNSSEC settings)
sudo pdnsutil secure-zone pti.intra

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

#criando o registro do tipo CNAME (Canonical Name) da Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: add-record (Add one or more records of NAME and TYPE to ZONE with CONTENT and optional
#TTL.), pti.intra (zone name), wsvaamonde.pti.intra (record name), A (type IPv4 record), 3600 (TTL - Time to Live),
#172.16.1.20 (IPv4 Address record name)
sudo pdnsutil add-record pti.intra pdns.pti.intra CNAME 3600 "wsvaamonde.pti.intra"

#atualizando os registros das Zonas Internas criadas no PowerDNS Authoritative
#opções do comando pdnsutil: rectify-all-zone 
sudo pdnsutil rectify-all-zones

#recarregar todas as Zonas Internas do PowerDNS Authoritative sem reiniciar o serviço
#opção do comando pdns_control: reload (Instruct the server to reload all its zones, this will not add new zones) 
sudo pdns_control reload

#listando todas as Zonas Internas do PowerDNS Authoritative
#opções do comando pdnsutil: list-all-zones (List all zones named)
sudo pdnsutil list-all-zones

#listando apenas a Zona Interna criada no PowerDNS Authoritative
#opções do comando pdnsutil: zone list (List same zone named) pti.intra (Zone named)
sudo pdnsutil zone list pti.intra
```

## 18_ Testando as resoluções de Zonas e Nomes DNS no PowerDNS Authoritative no Ubuntu Server
```bash
#testando o resolução da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: @127.0.0.1 (loopback), -p (port), pti.intra (Zona Interna)
dig @127.0.0.1 -p 5300 pti.intra

#testando a resolução de Nomes da Zona Interna criada no PowerDNS Authoritative
#opção do comando dig: @127.0.0.1 (loopback), -p (port), wsvaamonde.pti.intra (Register Type A)
dig @127.0.0.1 -p 5300 wsvaamonde.pti.intra

#testando a resolução de Zona Interna e Externas utilizando o PowerDNS Recursor
nslookup pti.intra
nslookup google.com
```

## 19_ Fazendo o download do PowerDNS Admin e descompactando no diretório padrão do NGINX Server no Ubuntu Server

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

#criando o diretório e arquivo de runtime do PowerDNS Admin
#opção do comando mkdir: -v (verbose)
#opção do comando chown: -R (recursive), -v (verbose), pdns: (user and group)
#opção do redirecionador de saída > (maior): Redireciona a saída padrão (STDOUT)
sudo mkdir -v /run/pdnsadmin/
sudo chown -Rv pdns: /run/pdnsadmin/
echo "d /run/pdnsadmin 0755 pdns pdns -" | sudo tee /etc/tmpfiles.d/pdnsadmin.conf > /dev/null
```

## 21_ Editando os arquivos de configuração do PowerDNS Admin no Ubuntu Server
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

## 22_ Configurando o Ambiente Virtual e instalando as Dependências do PowerDNS Admin no Ubuntu Server
```bash
#Acessando o diretório de instalação do PowerDNS-Admin no servidor NGINX
cd /var/www/html/pdns/

#Criando um ambiente virtual isolado em Python 3 para o PowerDNS-Admin
virtualenv -p python3 flask

#Ativando o ambiente virtual Python (modo ativo)
source ./flask/bin/activate

#Atualizando o gerenciador de pacotes pip dentro do ambiente virtual
python -m pip install --upgrade pip

#Instalando todas as dependências Python listadas no arquivo requirements.txt
pip install -r requirements.txt

#Definindo a variável de ambiente FLASK_APP apontando para o aplicativo principal do PowerDNS-Admin
export FLASK_APP=powerdnsadmin/__init__.py

#Atualizando o banco de dados interno do Flask (migrações com o Alembic)
flask db upgrade

#Instalando as dependências de frontend (JavaScript/CSS) usando o Yarn
yarn install --pure-lockfile

#Gerando (compilando) os arquivos estáticos do frontend do Flask
flask assets build

#Desativando o ambiente virtual Python (voltando ao shell normal)
deactivate
```

## 23_ Alterando as permissões dos diretórios do PowerDNS Admin no Ubuntu Server
```bash
#alterando as permissões do diretório de instalação do PowerDNS Admin no NGINX Server
#opções do comando chown: -R (recursive), -v (verbose), www-data:www-data (user/owner and group default)
sudo chown -Rv www-data:www-data /var/www/html/pdns

#alterando as permissões do diretório de administração do PowerDNS Admin no NGINX Server
#opções do comando chown: -R (recursive), -v (verbose), pdns: (user/owner default)
sudo chown -Rv pdns: /var/www/html/pdns/powerdnsadmin/
```

## 24_ Desativando o site padrão do NGINX Server no Ubuntu Server
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

## 25_ Habilitando e iniciando os serviços do PowerDNS Admin no Ubuntu Server
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

## 26_ Acessando e configurando o PowerDNS Authoritative via navegador no PowerDNS Admin
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
#criando a Zona de Pesquisa Inversa no PowerDNS Admin
Zone Management
  Create Zone
    Zone Editor
      Zone Name: 1.16.172.in-addr.arpa
      Zone Override Record: (NO) - Default
      Account: hostmaster
      Zone Type: (ON) Native
      Zone Template: (None) - Default
      SOA-EDIT-API: (Default) - Default
  <Create Zone>
```
```bash
#habilitando a atualização da Zona de Pesquisa Inversa no PowerDNS Admin
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

## 27_ Testando as resoluções de Zona de Pesquisa Inversa do PowerDNS Authoritative no Ubuntu Server
```bash
#testando o resolução da Zona Reversa Interna criada no PowerDNS Admin
#opção do comando dig: @127.0.0.1 (loopback), -p (port), -x (addr), 172.16.1.20 (Zona Reversa Interna)
dig @127.0.0.1 -p 5300 -x 172.16.1.20

#testando a resolução de Zona Reversa Interna utilizando o PowerDNS Recursor
nslookup -type=ptr 172.16.1.20
```

========================================DESAFIOS=========================================

**#28_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO POWERDNS SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do PowerDNS realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/23-powerdns.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiopowerdns #desafiopowerdnsadmin

