#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/11/2025<br>
#Data de atualização: 18/11/2025<br>
#Versão: 0.01<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO KEA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Kea Stork realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-kea.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiokea #desafiostork

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do Kea DHCP: https://www.isc.org/kea/<br>
Site Oficial do Stork: https://www.isc.org/stork/<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O KEA:** .

**O QUE É E PARA QUE SERVER O STORK:** .

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
#opção do comando apt:
sudo apt install isc-kea-dhcp4-server isc-kea-common isc-kea-admin isc-kea-dhcp-ddns
```

## 04_ Habilitando o Serviço do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#habilitando o serviço do Kea DHCP Server IPv4
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-kea-dhcp4-server
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
/etc/kea                      <-- Diretório de configuração do Kea DHCP Server
/etc/kea/kea-dhcp4.conf       <-- Arquivo de configuração padrão do Kea DHCP Server IPv4
/etc/kea/kea-dhcp-ddns.conf   <-- Arquivo de configuração padrão do Kea DHCP DDNS
/var/lib/kea                  <-- Diretório padrão dos Leases (Alugueis) do Kea DHCP Server IPv4
/var/lib/kea/dhcp4.leases     <-- Arquivo de Leases (Alugueis) do Kea DHCP Server IPv4
/var/log/kea                  <-- Diretório padrão dos Logs do Kea DHCP Server
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

## 09_ Atualizando o arquivo de configuração do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Kea DHCP Server IPv4
#opção do comando cp: -v (verbose)
sudo cp -v /etc/kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf.old

#fazendo o backup do arquivo de configuração do Kea DHCP DDNS IPv4
#opção do comando cp: -v (verbose)
sudo cp -v /etc/kea/kea-dhcp-ddns.conf /etc/kea/kea-dhcp-ddns.conf.old

#atualizando o arquivo de configuração do Kea DHCP Server IPv4 do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/kea/kea-dhcp4.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/kea-dhcp4.conf

#atualizando o arquivo de configuração do Kea DHCP DDNS do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/kea/kea-dhcp-ddns.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/kea-dhcp-ddns.conf
```

## 10_ Editando o arquivo de configuração do Kea DHCP Server IPv4 no Ubuntu Server
```bash
#editar o arquivo de configuração do Kea DHCP Server IPv4
sudo vim /etc/kea/kea-dhcp4.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash

```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#verificando os arquivos de configuração do Kea DHCP Server
#opção do comando kea-dhcp4: -t (config-file)
sudo kea-dhcp4 -t /etc/kea/kea-dhcp4.conf

#reiniciar o serviço do MySQL Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units)
sudo systemctl restart isc-kea-dhcp4-server
sudo systemctl status isc-kea-dhcp4-server

#analisando os Log's e mensagens de erro do Kea DHCP Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu isc-kea-dhcp4-server

#verificando a porta padrão UDP-67 do Kea DHCP Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iUDP:'67'
```

## 11_ Instalando o Stork Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O STORK SERVER E AGENT POSSUI A DEPENDÊNCIA DO *BANCO DE DADOS POSTGRESQL SERVER*, ESSE APLICATIVOS JÁ FOI INSTALADO NA ETAPA: **12 DO POSTGRESQL SERVER**.

```bash
#instalando o Stork Server no Ubuntu Server
#opção do comando apt:
sudo apt install isc-stork-server
```

## 12_ Criando a Base de Dados do Stork Server no PostgreSQL Server no Ubuntu Server
```bash
#conectando no PostgreSQL Server utilizando o cliente psql
#opção do comando sudo: -u (user)
sudo -u postgres psql
```
```sql
#criando a Base de Dados do Stork Server no PostgreSQL Server
CREATE DATABASE stork;

#listando o banco de dados criado do Stork Server no PostgreSQL Server
\l stork

#criando o usuário de conexão com a Base de Dados do Stork Server no PostgreSQL Server
CREATE USER stork WITH PASSWORD 'SUA_SENHA_SEGURA';

#listando o usuário do stork criado no PostgreSQL Server
\du stork

#alterando o dono da Base de Dados do Stork Server no PostgreSQL Server
ALTER DATABASE stork OWNER TO stork;

#alterando as permissões da Base de Dados do Stork Server no PostgreSQL Server
GRANT ALL PRIVILEGES ON DATABASE stork TO stork;

#conectando no Base de Dados do Stork Server no PostgreSQL Server
\connect stork;

#criando o esquema público da Base de Dados do Stork Server no PostgreSQL Server
GRANT ALL PRIVILEGES ON SCHEMA public TO stork;

#criando a extensão do PostgreSQL Crypto da Base de Dados do Stork Server no PostgreSQL Server
CREATE EXTENSION pgcrypto;

#saindo do Banco de Dados PostgreSQL Server
\q

#testando a conexão com o Banco de Dados do Stork Server no PostgreSQL Server
sudo psql --username stork --password --host localhost stork

#verificando as informações do Banco de Dados do Stork Server no PostgreSQL Server
\conninfo

#saindo do Banco de Dados PostgreSQL Server
\q
```

## 13_ Atualizando o arquivo de configuração do Stork Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do Stork Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/stork/server.env /etc/stork/server.env.old

#atualizando o arquivo de configuração do Stork Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/stork/server.env https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/server.env
```

## 14_ Editando o arquivo de configuração do Stork Server no Ubuntu Server
```bash
#editar o arquivo de configuração do Stork Server
sudo wget -v -O /etc/stork/server.env

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash

```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 15_ Habilitando o Serviço do Stork Server no Ubuntu Server
```bash
#habilitando o serviço do Stork Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-stork-server
sudo systemctl start isc-stork-server
```

## 16_ Verificando o Serviço e Versão do Stork Server no Ubuntu Server
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

## 17_ Verificando a Porta de Conexão do Stork Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8080 do Stork Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8080' -sTCP:LISTEN
```

## 18_ Localização dos Arquivos de Configuração do Stork Server no Ubuntu Server
```bash
/etc/stork              <-- Diretório de configuração do Stork Server
/etc/stork/server.env   <-- Arquivo de configuração padrão do Stork Server
/etc/stork/agent.env    <-- Arquivo de configuração padrão do Stork Agent
/var/lib/stork-agent    <-- Diretório de configuração padrão do Stork Agent
```

## 19_ Adicionado o Usuário Local no Grupo Padrão do Stork Server no Ubuntu Server
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

## 20_ Testando e configurando o Stork Server via Terminal e Navegador

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

## 21_ Instalando o Agente do Stork no Ubuntu Server
```bash
#instalando o Stork Agent no Ubuntu Server
sudo apt install isc-stork-agent

#alterando as permissões de diretórios do Stork Agent no Ubuntu Server
sudo mkdir -p /usr/lib/stork-agent/hooks
sudo chown -Rv stork-agent:stork-agent /var/lib/stork-agent/
sudo chmod -Rv 775 /var/lib/stork-agent/

#atualizando o arquivo de configuração do Stork Agent via Github


#habilitando o serviço do Stork Agent
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
sudo systemctl daemon-reload
sudo systemctl enable isc-stork-agent
sudo systemctl start isc-stork-agent

#registrando o Stork Agent no Stork Server no Ubuntu Server
sudo stork-agent register -u http://172.16.1.20:8080
  Enter the Stork server access token (optional): COLAR_SEU_TOKEN
  Enter IP address or FQDN of the host with Stork agent (for the Stork server connection) [wsvaamonde.pti.intra]:
  Enter port number that Stork Agent will listen on [8080]: 8081
```

========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO KEA SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Kea Stork realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-kea.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafiokea #desafiostork


