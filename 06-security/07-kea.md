#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/11/2025<br>
#Data de atualização: 21/11/2025<br>
#Versão: 0.04<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO KEA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Kea Stork realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-kea.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiokea #desafiostork

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do ISC.org: https://www.isc.org/<br>
Site Oficial do Kea DHCP: https://www.isc.org/kea/<br>
Site Oficial do Stork: https://www.isc.org/stork/<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O ISC.ORG:** ISC.org significa Internet Systems Consortium, uma organização sem fins lucrativos fundada em 1994 para desenvolver e manter softwares essenciais para o funcionamento da Internet mundial. A ISC é responsável por alguns dos principais projetos de infraestrutura da Internet, entre eles: BIND 9 → Servidor DNS autoritativo e recursivo mais usado do mundo, Kea DHCP Server → Novo servidor DHCP modular, rápido e moderno, ISC DHCP (dhcpd) → Antigo servidor DHCP clássico (DESCONTINUADO EM 2022), Stork → Plataforma de monitoramento e administração Kea/BIND, AFTR/GW → Soluções de transição IPv4/IPv6, RFCs e padrões de Internet. A ISC é uma das organizações que historicamente participa da padronização da Internet através da IETF.

**O QUE É E PARA QUE SERVER O KEA DHCP SERVER:** O Kea DHCP Server é um servidor DHCP moderno desenvolvido pela ISC (Internet Systems Consortium) — a mesma organização que criou o ISC DHCP (dhcpd) e o BIND9. Ele foi projetado para substituir o antigo ISC DHCP, trazendo mais desempenho, modularidade, segurança e capacidade de automação.
O Kea é hoje o servidor DHCP mais avançado e atualizado disponível no mercado open-source..

**O QUE É E PARA QUE SERVER O KEA DHCP DDNS:** O Kea DHCP DDNS (Dynamic DNS Update) é o componente do ecossistema Kea responsável por atualizar automaticamente os registros DNS (A, AAAA e PTR) sempre que um cliente DHCP recebe ou libera um endereço IP. Ele funciona como um módulo intermediário entre o Kea DHCP Server e o servidor DNS autoritativo (ex.: BIND9, PowerDNS), garantindo que as informações de DNS estejam sempre sincronizadas com os leases do DHCP..

**O QUE É E PARA QUE SERVER O KEA CONTROL AGENT:** O Kea Control Agent é um componente oficial do ecossistema Kea DHCP Server, desenvolvido pela ISC, que funciona como uma API REST intermediária entre o administrador (ou outras ferramentas) e os serviços DHCP do Kea (DHCPv4 e DHCPv6). Ele atua como um “tradutor” entre comandos HTTP/REST e os comandos internos dos servidores DHCP, permitindo que toda a administração do Kea seja feita remotamente e de forma segu

**O QUE É E PARA QUE SERVER O KEA HOOKS:** Kea Hooks são módulos adicionais (plugins) que estendem e personalizam o funcionamento padrão do Kea DHCP Server. Eles permitem adicionar novas funcionalidades, modificar comportamentos internos do servidor e integrar o Kea com outros sistemas — sem precisar alterar o código-fonte. Pense nos hooks como “extensões” ou “add-ons” que deixam o Kea muito mais flexível e poderoso.

**O QUE É E PARA QUE SERVER O STORK SERVER:** O Stork Server é a plataforma oficial de monitoramento e gerenciamento centralizado dos servidores Kea DHCP e BIND 9, desenvolvida pela ISC (Internet Systems Consortium). O Stork Server é responsável por coletar, processar e disponibilizar informações administrativas e operacionais de servidores Kea DHCP e BIND9 de forma unificada.

**O QUE É E PARA QUE SERVER O STORK AGENT:** O Stork Agent é o componente instalado em cada servidor que você deseja monitorar com o Stork Server. Ele funciona como um conector local, responsável por coletar informações do Kea DHCP, Control Agent, BIND9 e do próprio sistema operacional, enviando tudo para o Stork Server.

[![Kea-Stork](http://img.youtube.com/vi//0.jpg)]( "Kea-Stork")

Link da vídeo aula: 

## 01_ Adicionando o Repositório do Kea e Stork no Ubuntu Server
```bash
#adicionando o repositório do Kea via script automatizado (Mais simples e eficiente)
#opções do comando curl: -1 (), -s (silent), -L (location), -f (form)
#opções do comando sudo: -E (preserve-env), bash (bash terminal)
#opção do redirecionador de saída | (piper): 
curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-3-0/setup.deb.sh' | sudo -E bash

#adicionando o repositório do Stork via script automatizado (Mais simples e eficiente)
#opções do comando curl: -1 (), -s (silent), -L (location), -f (form)
#opções do comando sudo: -E (preserve-env), bash (bash terminal)
#opção do redirecionador de saída | (piper): 
curl -1sLf 'https://dl.cloudsmith.io/public/isc/stork/setup.deb.sh' | sudo -E bash
```

## 02_ Atualizando os Repositórios do Kea e Stork no Ubuntu Server
```bash
#atualizando as listas do Apt com o novo repositório do Kea e Stork
#opção do comando apt: update (Resynchronize the package index files from their sources
sudo apt update
```

## 03_ Instalando o Kea DHCP Server IPv4 no Ubuntu Server
```bash
#instalando o Kea DHCP Server IPv4 no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install isc-kea-dhcp4-server isc-kea-common isc-kea-admin isc-kea-dhcp-ddns isc-kea-pgsql \
isc-kea-ctrl-agent isc-kea-hooks
```

## 04_ Habilitando os Serviços do Kea DHCP Server IPv4, Kea DHCP DDNS e Kea Control Agent no Ubuntu Server
```bash
#habilitando os serviços do Kea DHCP Server IPv4, Kea DHCP DDNS e do Kea Control Agent
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-kea-dhcp4-server isc-kea-dhcp-ddns isc-kea-ctrl-agent

#iniciando somente o serviço do Kea DHCP Server IPv4
#opção do comando systemctl: start (Start (activate) one or more units)
sudo systemctl start isc-kea-dhcp4-server
```

## 05_ Verificando o Serviço e Versão do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#verificando o serviço do Kea DHCP Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status isc-kea-dhcp4-server
sudo systemctl restart isc-kea-dhcp4-server
sudo systemctl reload isc-kea-dhcp4-server
sudo systemctl stop isc-kea-dhcp4-server
sudo systemctl start isc-kea-dhcp4-server

#analisando os Log's e mensagens de erro do Kea DHCP Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu isc-kea-dhcp4-server

#verificando os arquivos de configuração do Kea DHCP Server
#opção do comando kea-dhcp4: -t (config-file)
sudo kea-dhcp4 -t /etc/kea/kea-dhcp4.conf
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#opção do comando kea-dhcp4: -V (extended version)
sudo kea-dhcp4 -V
```

## 06_ Verificando a Porta de Conexão do Kea DHCP Server IPv4 no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão UDP-67 do Kea DHCP Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iUDP:'67'
```

## 07_ Localização dos Arquivos de Configuração do Kea DHCP Server IPv4 no Ubuntu Server
```bash
/etc/kea                               <-- Diretório de configuração do Kea DHCP Server
/etc/kea/kea-dhcp4.conf                <-- Arquivo de configuração padrão do Kea DHCP Server IPv4
/etc/kea/kea-dhcp-ddns.conf            <-- Arquivo de configuração padrão do Kea DHCP DDNS
/etc/kea/kea-ctrl-agent.conf           <-- Arquivo de configuração padrão do Kea Control Agent
/var/lib/kea                           <-- Diretório padrão dos Leases (Alugueis) do Kea DHCP Server IPv4
/var/lib/kea/dhcp4.leases              <-- Arquivo de Leases (Alugueis) do Kea DHCP Server IPv4
/var/log/kea                           <-- Diretório padrão dos Logs do Kea DHCP Server
/usr/lib/x86_64-linux-gnu/kea/hooks/   <-- Diretório padrão dos Hooks do Kea DHCP Server
```

## 08_ Adicionado o Usuário Local no Grupo Padrão do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G _kea $USER

#fazendo login em um novo grupo do _KEA
newgrp _kea

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo _KEA do Kea DHCP Server IPv4
#opção do comando getent: group (the database system group)
sudo getent group _kea

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 09_ Atualizando os arquivos de configuração do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Kea DHCP Server IPv4
#opção do comando cp: -v (verbose)
sudo cp -v /etc/kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf.old

#fazendo o backup do arquivo de configuração do Kea DHCP DDNS
#opção do comando cp: -v (verbose)
sudo cp -v /etc/kea/kea-dhcp-ddns.conf /etc/kea/kea-dhcp-ddns.conf.old

#fazendo o backup do arquivo de configuração do Kea Control Agent
#opção do comando cp: -v (verbose)
sudo cp -v /etc/kea/kea-ctrl-agent.conf /etc/kea/kea-ctrl-agent.conf.old

#atualizando o arquivo de configuração do Kea DHCP Server IPv4 do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/kea/kea-dhcp4.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/kea-dhcp4.conf

#atualizando o arquivo de configuração do Kea DHCP DDNS do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/kea/kea-dhcp-ddns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/kea-dhcp-ddns.conf

#atualizando o arquivo de configuração do Kea Control Agent do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/kea/kea-ctrl-agent.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/kea-ctrl-agent.conf
```

## 10_ Criando a Base de Dados do Kea DHCP4 Server no PostgreSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** NESSE CENÁRIO O BANCO DE DADOS DO POSTGRESQL SERVER UTILIZADO PELO KEA DHCP4 SERVER ESTÁ NO MESMO SERVIDOR PARA EFEITO DE DESEMPENHO E SEGURANÇA, NÃO É RECOMENDO HABILITAR O RECURSO DE CONEXÃO REMOTA DO POSTGRESQL SERVER E NEM CRIAR USUÁRIOS REMOTOS.

```bash
#conectando no PostgreSQL Server utilizando o cliente psql
#opção do comando sudo: -u (user), psql (terminal PostgreSQL)
sudo -u postgres psql
```
```sql
/* Criando o Banco de Dados do Kea DHCP4 Server com o nome: keadhcp4 */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse:  */
/* Mais informações acesse:  */
CREATE DATABASE keadhcp4;

/* Listando o Banco de Dados criado do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
\l keadhcp4
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL.

```sql
/* Criando o usuário e senha da Base de Dados do Kea DHCP4 Server */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE */
/* Mais informações acesse:  */
CREATE USER keadhcp4 WITH PASSWORD 'SUA_SENHA_SEGURA';

/* Listando o Usuário do Kea DHCP4 Server criado no PostgreSQL Server */
/* Mais informações acesse:  */
\du keadhcp4

/* Alterando o dono da Base de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
ALTER DATABASE keadhcp4 OWNER TO keadhcp4;

/* Alterando os privilégios da Base de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON DATABASE keadhcp4 TO keadhcp4;

/* Alterando os privilégios do Esquema Público da Base de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON SCHEMA public TO keadhcp4;

/* Conectando no Base de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
\connect keadhcp4;

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 11_ Testando o acesso a Base de Dados do Kea DHCP4 Server no PostgreSQL Server no Ubuntu Server
```bash
#conectando no banco de dados PostgreSQL Server com o usuário keadhcp4
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to)
sudo psql --username keadhcp4 --password --host localhost --dbname keadhcp4
```
```sql
/* verificando as informações do Banco de Dados do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
\conninfo

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 12_ Populando as Tabelas no Banco de Dados do Kea DHCP4 Server utilizando o arquivo de esquema do PostgreSQL Server no Ubuntu Server
```bash
#importando o esquema e os dados iniciais do banco de dados do Kea DHCP4 Server
#opções do comando kea-admin: db-init (Initializes new database), pgsql (PostgreSQL Backend), -u (username), 
#-p (password), -n (database name), -h (hostname), -P (port)
sudo kea-admin db-init pgsql -u keadhcp4 -p keadhcp4 -n keadhcp4 -h localhost -P 5432

#conectando no banco de dados PostgreSQL Server com o usuário keadhcp4
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to)
sudo psql --username keadhcp4 --password --host localhost --dbname keadhcp4
```
```sql
/* Verificando as informações das Tabelas do Kea DHCP4 Server no PostgreSQL Server */
/* Mais informações acesse:  */
\dt

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 13_ Editando o arquivo de configuração do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#editar o arquivo de configuração do Kea DHCP Server IPv4
sudo vim /etc/kea/kea-dhcp4.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
// Interfaces de Rede nas quais o Kea vai responder DHCPv4 linha: 23
// Banco de Leases (postgresql = banco de dados, ideal para grandes redes) linha: 87
// Opções globais para toda a rede linha: 123
// Subnets configuradas linha: 145
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração do Kea DHCP DDNS Server
sudo vim /etc/kea/kea-dhcp-ddns.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
//  ENDEREÇO E PORTA DO SERVIÇO DHCP-DDNS linha 30
//  CHAVES TSIG UTILIZADAS PARA ASSINAR AS ATUALIZAÇÕES DNS linha 48
//  BLOCO DE ZONAS DIRETAS (FORWARD) linha 60
//  BLOCO DE ZONAS REVERSAS (PTR) linha 79
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editar o arquivo de configuração do Kea Control Agent
sudo vim /etc/kea/kea-ctrl-agent.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash

```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#verificando o arquivo de configuração do Kea DHCP Server
#opção do comando kea-dhcp4: -t (config-file)
sudo kea-dhcp4 -t /etc/kea/kea-dhcp4.conf

#verificando o arquivo de configuração do Kea DHCP DDNS Server
#opção do comando kea-dhcp-ddns: -t (config-file)
sudo kea-dhcp-ddns -t /etc/kea/kea-dhcp-ddns.conf

#verificando o arquivo de configuração do Kea Control Agent
#opção do comando kea-ctrl-agent: -t (config-file)
sudo kea-ctrl-agent -t /etc/kea/kea-ctrl-agent.conf

#reiniciar o serviço do Kea DHCP Server, Kea DHCP DDNS e do Kea Control Agent
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units)
sudo systemctl restart isc-kea-dhcp4-server isc-kea-dhcp-ddns isc-kea-ctrl-agent
sudo systemctl status isc-kea-dhcp4-server isc-kea-dhcp-ddns isc-kea-ctrl-agent

#analisando os Log's e mensagens de erro do Kea DHCP Server, Kea DHCP DDNS e do Kea Control Agent
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu isc-kea-dhcp4-server
sudo journalctl -xeu isc-kea-dhcp-ddns
sudo journalctl -xeu isc-kea-ctrl-agent

#verificando a porta padrão UDP-67, UDP-53001 e TCP-8000 do Kea DHCP Server, Kea DHCP DDNS e Kea Control Agent
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iUDP:'67,53001'
sudo lsof -nP -iTCP:'8000' -sTCP:LISTEN
```

## 14_ Instalando o Stork Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O STORK SERVER E AGENT POSSUI A DEPENDÊNCIA DO *BANCO DE DADOS POSTGRESQL SERVER*, ESSE APLICATIVOS JÁ FOI INSTALADO NA ETAPA: **12 DO POSTGRESQL SERVER**.

```bash
#instalando o Stork Server no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install isc-stork-server
```

## 15_ Criando a Base de Dados do Stork Server no PostgreSQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** NESSE CENÁRIO O BANCO DE DADOS DO POSTGRESQL SERVER UTILIZADO PELO STORK SERVER ESTÁ NO MESMO SERVIDOR PARA EFEITO DE DESEMPENHO E SEGURANÇA, NÃO É RECOMENDO HABILITAR O RECURSO DE CONEXÃO REMOTA DO POSTGRESQL SERVER E NEM CRIAR USUÁRIOS REMOTOS.

```bash
#conectando no PostgreSQL Server utilizando o cliente psql
#opção do comando sudo: -u (user), psql (terminal PostgreSQL)
sudo -u postgres psql
```
```sql
/* Criando o Banco de Dados do Stork Server com o nome: stork */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DA BASE DE DADOS CONFORME NECESSIDADE */
/* Mais informações acesse:  */
/* Mais informações acesse:  */
CREATE DATABASE stork;

/* Listando o Banco de Dados criado do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
\l stork
```

**OBSERVAÇÃO IMPORTANTE:** ALTERAR O NOME DO USUÁRIO E SENHA CONFORME SUA NECESSIDADE, NESSE CENÁRIO ESTÁ SENDO CRIADO UM USUÁRIO LOCAL.

```sql
/* Criando o usuário e senha da Base de Dados do Stork Server */
/* OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO USUÁRIO E SENHA CONFORME NECESSIDADE */
/* Mais informações acesse:  */
CREATE USER stork WITH PASSWORD 'SUA_SENHA_SEGURA';

/* Listando o Usuário do Stork Server criado no PostgreSQL Server */
/* Mais informações acesse:  */
\du stork

/* Alterando o dono da Base de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
ALTER DATABASE stork OWNER TO stork;

/* Alterando as permissões da Base de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON DATABASE stork TO stork;

/* Alterando os privilégios do Esquema Público da Base de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
GRANT ALL PRIVILEGES ON SCHEMA public TO stork;

/* Conectando no Base de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
\connect stork;

/* Criando a extensão do PostgreSQL Crypto da Base de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
CREATE EXTENSION pgcrypto;

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 16_ Testando o acesso a Base de Dados do Stork Server no PostgreSQL Server no Ubuntu Server
```bash
#conectando no banco de dados PostgreSQL Server com o usuário stork
#opções do comando psql: --username (database user name), --password (password user), --host (database server host), 
#--dbname (database name to connect to)
sudo psql --username stork --password --host localhost --dbname stork
```
```sql
/* verificando as informações do Banco de Dados do Stork Server no PostgreSQL Server */
/* Mais informações acesse:  */
\conninfo

/* Saindo do Banco de Dados PostgreSQL Server */
\q
```

## 17_ Atualizando o arquivo de configuração do Stork Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Stork Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/stork/server.env /etc/stork/server.env.old

#atualizando o arquivo de configuração do Stork Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/stork/server.env https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/server.env
```

## 18_ Editando o arquivo de configuração do Stork Server no Ubuntu Server
```bash
#editar o arquivo de configuração do Stork Server
sudo vim /etc/stork/server.env

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 17 até 21 das variáveis de conexão do PostgreSQL Server
STORK_DATABASE_HOST=localhost
STORK_DATABASE_PORT=5432
STORK_DATABASE_NAME=stork
STORK_DATABASE_USER_NAME=stork
STORK_DATABASE_PASSWORD=SUA_SENHA_SEGURA
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 19_ Habilitando o Serviço do Stork Server no Ubuntu Server
```bash
#habilitando o serviço do Stork Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-stork-server
sudo systemctl start isc-stork-server
```

## 20_ Verificando o Serviço e Versão do Stork Server no Ubuntu Server
```bash
#verificando o serviço do Stork Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status isc-stork-server
sudo systemctl restart isc-stork-server
sudo systemctl reload isc-stork-server
sudo systemctl stop isc-stork-server
sudo systemctl start isc-stork-server

#analisando os Log's e mensagens de erro do Stork Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu isc-stork-server
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#opção do comando stork-server: -v (version)
sudo stork-server -v
```

## 21_ Verificando a Porta de Conexão do Stork Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8080 do Stork Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN
```

## 22_ Localização dos Arquivos de Configuração do Stork Server no Ubuntu Server
```bash
/etc/stork                   <-- Diretório de configuração do Stork Server
/etc/stork/server.env        <-- Arquivo de configuração padrão do Stork Server
/etc/stork/agent.env         <-- Arquivo de configuração padrão do Stork Agent
/var/lib/stork-agent         <-- Diretório de configuração padrão do Stork Agent
/usr/lib/stork-agent/hooks   <-- Diretório de configuração padrão do Hooks do Stork Agent
```

## 23_ Adicionado o Usuário Local no Grupo Padrão do Stork Server no Ubuntu Server
```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G stork-server $USER

#fazendo login em um novo grupo do STORK-SERVER
newgrp stork-server

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo STORK-SERVER do Stork Server
#opção do comando getent: group (the database system group)
sudo getent group stork-server

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 24_ Testando e configurando o Stork Server via Terminal e Navegador

**OBSERVAÇÃO:** Tabela de referência dos Códigos do HTTP mais comuns para tester no Terminal ou no Navegador.

| Código | Significado                                     |
| ------ | ----------------------------------------------- |
| 200    | OK (Sucesso)                                    |
| 301    | Moved Permanently (Redirecionamento permanente) |
| 302    | Found (Redirecionamento temporário)             |
| 403    | Forbidden (Acesso negado)                       |
| 404    | Not Found (Não encontrado)                      |
| 500    | Internal Server Error                           |

```bash
#testando o acesso ao diretório de teste do Stork Server
#opção do comando curl: -I (Fetch the headers only), -L (Reports that the requested page has moved 
#to a different location)
#saída do comando curl: HTTP/1.1 301 Moved Permanently (É um redirecionamento permanente)
#saída do comando curl: HTTP/1.1 200 OK (Sucesso total, servidor está respondendo corretamente
curl -I -L http://127.0.0.1:8080
```
```bash
#utilizar os navegadores para configurar o Stork Server
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8080

#Tela de login do Stork Server
Dashboard for ISC Kea and ISC BIND 9;
  Email/login: admin
  Password: admin
<Sign In>

#Alteração da senha do Stork Server
Change Password
  New password settings
    Current password: admin
    New password: SUA_SENHA_SEGURA
    Confirm password: CONFIRMA_SUA_SENHA
  <Save>  

#Gerando a chave de integração do Agent do Stork Server
Services
  Machines
    <Installing Stork Agent on a New Machine>
      The server token value is: COPIAR_SEU_TOKEN
```

## 25_ Instalando o Agente do Stork no Ubuntu Server
```bash
#instalando o Stork Agent no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install isc-stork-agent

#criando o diretório de configuração do Hooks do Stork Agent
#opção do comando mkdir: -p (parents), -v (verbose)
sudo mkdir -pv /usr/lib/stork-agent/hooks

#alterando as permissões de diretórios do Stork Agent no Ubuntu Server
#opção do comando chown: -R (recursive), -v (verbose), stork-agent (owner), stork-agent (group)
#opção do comando chmod: -R (recursive), -v (verbose), 775 (OWNER=RWX, GROUP=RWX, OTHER=R-X)
sudo chown -Rv stork-agent:stork-agent /var/lib/stork-agent/
sudo chmod -Rv 775 /var/lib/stork-agent/

#fazendo o backup do arquivo de configuração do Stork Agent
#opção do comando cp: -v (verbose)
sudo cp -v /etc/stork/agent.env /etc/stork/agent.env.old

#atualizando o arquivo de configuração do Stork Agent do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/stork/agent.env https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/agent.env

#editar o arquivo de configuração do Stork Agent
sudo vim /etc/stork/agent.env

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar as linhas de: 17 até 21 das variáveis de conexão do PostgreSQL Server
STORK_AGENT_SERVER_URL=http://127.0.0.1:8080
STORK_AGENT_HOST=127.0.0.1
STORK_AGENT_PORT=8888
STORK_AGENT_LISTEN_STORK_ONLY=false
STORK_AGENT_LISTEN_PROMETHEUS_ONLY=false
STORK_AGENT_SKIP_TLS_CERT_VERIFICATION=fa
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#habilitando o serviço do Stork Agent
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-stork-agent
sudo systemctl start isc-stork-agent
```

## 26_ Verificando o Serviço e Versão do Stork Agent no Ubuntu Server
```bash
#verificando o serviço do Stork Agent
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status isc-stork-agent
sudo systemctl restart isc-stork-agent
sudo systemctl reload isc-stork-agent
sudo systemctl stop isc-stork-agent
sudo systemctl start isc-stork-agent

#analisando os Log's e mensagens de erro do Stork Agent
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu isc-stork-agent
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#opção do comando stork-agent: -v (version)
sudo stork-agent -v
```

## 27_ Verificando a Porta de Conexão do Stork Agent no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8080 e TCP-8888 do Stork Server e Stork Agent
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8080,8888' -sTCP:LISTEN
```

========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO KEA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Kea Stork realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-kea.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiokea #desafiostork


