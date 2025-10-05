#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 05/10/2025<br>
#Data de atualização: 05/10/2025<br>
#Versão: 0.03<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETBOX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netbox realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-netbox.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetbox #desafionetboxlabs

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as dependências do Netbox Labs Community no Ubuntu Server<br>
#02_ Instalando o Banco de Dados em memória Redis Server no Ubuntu Server<br>
#03_ Criando a Base de Dados do Netbox Labs Community no PostgreSQL Server no Ubuntu Server<br>
#04_ Baixando o Netbox Labs Community do Github no Ubuntu Server<br>
#05_ Descompactando e instalando o Netbox Labs Community no Ubuntu Server<br>
#06_ Localização dos Arquivos de Configuração do Netbox Labs Community no Ubuntu Server<br>
#07_ Criando o Usuário de Serviço do Netbox Labs Community no Ubuntu Server<br>
#08_ Alterando as Permissões do Diretório do Netbox Labs Community no Ubuntu Server<br>
#09_ Gerando a Chave Secreta da instalação do Netbox Labs Community no Ubuntu Server<br>
#10_ Atualizando o arquivo configuração do Netbox Labs Community no Ubuntu Server<br>
#11_ Editando os arquivos de configurações do Netbox Labs Community no Ubuntu Server<br>
#12_ Atualizando as configurações do Netbox Labs Community no Ubuntu Server<br>
#13_ Criando a conta de Super Usuário do Netbox Labs Community no Ubuntu Server<br>
#14_ Atualizando os arquivos de serviço do Netbox Labs Community no Ubuntu Server<br>
#15_ Verificando os Serviços do Netbox Labs Community no Ubuntu Server<br>
#16_ Verificando o porta padrão de Conexão do NetBox WSGI Service<br>
#17_ Gerando o Certificado SSL Auto-Assinado do Netbox Labs Community no Ubuntu Server<br>
#18_ Instalando e configurando o NGINX Server no Ubuntu Server<br>
#19_ Testando e configurando o Netbox Labs Community via Terminal e Navegador<br>

Site Oficial do Netbox Labs: https://netboxlabs.com/<br>
Site Oficial do Netbox Community: https://github.com/netbox-community<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**PERGUNTA PARA A IA**
```bash
Prompt-01: .
```

**O QUE É E PARA QUE SERVER O NETBOX:** O NetBox é uma plataforma open source de IPAM (IP Address Management) e DCIM (Data Center Infrastructure Management) — criada originalmente pela DigitalOcean — que serve para documentar e gerenciar infraestruturas de redes e data centers de forma centralizada e visual.

**O QUE É E PARA QUE SERVER O IPAM:** O IPAM (IP Address Management / Gerenciamento de Endereço IP) é um sistema de gerenciamento de endereços IP, usado para planejar, monitorar e administrar todo o espaço de endereçamento de uma rede (IPv4 e IPv6).

**O QUE É E PARA QUE SERVER O DCIM:** DCIM (Data Center Infrastructure Management - Gerenciamento de Infraestrutura de Data Center) é o sistema de gerenciamento da infraestrutura física de um Data Center ou ambiente de TI. Ele integra informações sobre energia, espaço, equipamentos, cabeamento, racks, temperatura e conectividade, oferecendo uma visão completa e organizada do ambiente físico.

[![Netbox Labs](http://img.youtube.com/vi//0.jpg)]( "Netbox Labs")

Link da vídeo aula: 

## 01_ Instalando as dependências do Netbox Labs Community no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O NETBOX LABS POSSUI A DEPENDÊNCIA DO *BANCO DE DADOS POSTGRESQL SERVER*, ESSE APLICATIVOS JÁ FOI INSTALADO NA ETAPA: **12 DO POSTGRESQL SERVER**.

```bash
#atualizando as listas do Apt
sudo apt update

#instalando as dependências do Netbox Labs Community
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install git vim perl python3 python3-pip python3-venv python3-dev unzip pwgen \
xz-utils bzip2 curl ghostscript zlib1g zlib1g-dev apt-transport-https build-essential \
libxml2-dev libxslt1-dev libffi-dev libpq-dev libssl-dev
```

## 02_ Instalando o Banco de Dados em memória Redis Server no Ubuntu Server
```bash
#instalando o Redis Server no Ubuntu Server
sudo apt install redis-server

#verificando o serviço do Redis Server no Ubuntu Server
#opções do comando systemctl: status (runtime status information)
sudo systemctl status redis-server

#analisando os Log's e mensagens de erro do Servidor do Redis Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu redis-server

#adicionando o usuário local (logado) no grupo do Redis Server
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G redis $USER

#verificando as informações do grupo REDIS do Redis Server
#opção do comando getent: group (the database system group)
sudo getent group redis
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Redis Server 
#opção do comando redis-server: -v (version)
sudo redis-server -v

#fazendo o backup do arquivo de configuração do Redis Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/redis/redis.conf /etc/redis/redis.conf.old

#atualizando o arquivo de configuração do Redis Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/redis/redis.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/redis.conf

#editar o arquivo de configuração do Redis Server
sudo vim /etc/redis/redis.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 18 variável do: bind 127.0.0.1 ::1 padrão para: bind 0.0.0.0 ::'
bind 0.0.0.0 ::
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#reiniciando e verificando o serviço do Redis Server no Ubuntu Server
#opções do comando systemctl: restart (Stop and then start one or more units), status (runtime 
#status information)
sudo systemctl restart redis-server
sudo systemctl status redis-server
```

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-6379 do Redis Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'6379' -sTCP:LISTEN

#testando a comunicação com o Redis Server
#opção do comando redis-cli: ping (test your database connection - PONG is OK)
sudo redis-cli ping
```

## 03_ Criando a Base de Dados do Netbox Labs Community no PostgreSQL Server no Ubuntu Server
```bash
#conectando no PostgreSQL Server utilizando o cliente psql
#opção do comando sudo: -u (user)
sudo -u postgres psql

#criando a Base de Dados do Netbox Labs no PostgreSQL Server
CREATE DATABASE netbox;

#listando o banco de dados criado do Netbox Labs no PostgreSQL Server
\l netbox

#criando o usuário de conexão com a Base de Dados do Netbox no PostgreSQL Server
CREATE USER netbox WITH PASSWORD 'SUA_SENHA_SEGURA';

#listando o usuário do netbox criado no PostgreSQL Server
\du netbox

#alterando o dono da Base de Dados do Netbox no PostgreSQL Server
ALTER DATABASE netbox OWNER TO netbox;

#conectando no Base de Dados do Netbox no PostgreSQL Server
\connect netbox;

#criando o esquema público da Base de Dados do Netbox no PostgreSQL Server
GRANT CREATE ON SCHEMA public TO netbox;

#saindo do Banco de Dados PostgreSQL Server
\q

#testando a conexão com o Banco de Dados do Netbox no PostgreSQL Server
sudo psql --username netbox --password --host localhost netbox

#verificando as informações do Banco de Dados do Netbox no PostgreSQL Server
\conninfo

#saindo do Banco de Dados PostgreSQL Server
\q
```

## 04_ Baixando o Netbox Labs Community do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o executável e os arquivos de configuração do *Netbox Labs Community* sofre alteração o tempo todo, sempre acessar o projeto do Github para verificar a última versão do software no Link: https://github.com/netbox-community/netbox/releases

```bash
#download da última versão do Netbox Labs Community (link atualizado em 05/10/2025)
#OBSERVAÇÃO IMPORTANTE: o tempo todo o Netbox Labs Community sofre alteração, antes
#de fazer o download do arquivo verifique a versão no link: https://github.com/netbox-community/netbox/
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /tmp/netbox.tar.gz https://github.com/netbox-community/netbox/archive/refs/tags/v4.4.2.tar.gz

#listando o download do arquivo do Netbox Labs Community
#opção do comando ls: -l (long listing), -h (human-readable)
#opção do caractere curinga * (asterisco): Qualquer coisa
ls -lh /tmp/netbox*
```

## 05_ Descompactando e instalando o Netbox Labs Community no Ubuntu Server
```bash
#descompactando o download do arquivo do Netbox Labs Community
#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
sudo tar -xzvf /tmp/netbox.tar.gz -C /tmp

#movendo o conteúdo do diretório do Netbox Labs Community para o diretório /opt
#opção do comando mv: -v (verbose)
sudo mv -v /tmp/netbox-* /opt/netbox
```

## 06_ Localização dos Arquivos de Configuração do Netbox Labs Community no Ubuntu Server
```bash
/opt/netbox/                                 <-- Diretório de configuração padrão do Netbox Labs
/opt/netbox/upgrade.sh                       <-- Script de atualização e instalação do Netbox Labs
/opt/netbox/local_requirements.txt           <-- Arquivos do Pré-Requisitos do Netbox Labs
/opt/netbox/contrib/                         <-- Diretório de contribuições (configurações) do Netbox Labs
/opt/netbox/netbox/                          <-- Diretório de configuração do serviço do Netbox Labs
/opt/netbox/netbox/manage.py                 <-- Script de gerenciamento do Netbox Labs
/opt/netbox/netbox/generate_secret_key.py    <-- Script de geração da chave segura do Netbox Labs
/opt/netbox/netbox/netbox/configuration.py   <-- Script de configuração do serviço do Netbox Labs
```

## 07_ Criando o Usuário de Serviço do Netbox Labs Community no Ubuntu Server
```bash
#criando o usuário de serviço do Netbox Labs Community
#opção do comando useradd: --system (Create a system account), --group (group with the same 
#name and ID as the system user)
sudo adduser --system --group netbox

#adicionando o usuário local (logado) no grupo do Netbox Labs Community
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
sudo usermod -a -G netbox $USER

#verificando as informações do grupo NETBOX do Netbox Labs Community
#opção do comando getent: group (the database system group)
sudo getent group netbox
```

## 08_ Alterando as Permissões do Diretório do Netbox Labs Community no Ubuntu Server
```bash
#criando o diretório de média do Netbox Labs Community
#opção do comando mkdir: -v (verbose)
sudo mkdir -v /opt/netbox/netbox/media/

#alterando as permissões de dono dos diretórios do Netbox Labs Community
#opção do comando chown: -R (recursive), -v (verbose), netbox (user owner)
sudo chown -Rv netbox /opt/netbox/netbox/media/
sudo chown -Rv netbox /opt/netbox/netbox/reports/
sudo chown -Rv netbox /opt/netbox/netbox/scripts/
```

## 09_ Gerando a Chave Secreta da instalação do Netbox Labs Community no Ubuntu Server
```bash
#gerando a chave secreta da instalação do Netbox Labs no Ubuntu Server
#OBSERVAÇÃO IMPORTANTE: copiar a chave gerada para adicionar no arquivo de configuração do
#Netbox Labs Community: /opt/netbox/netbox/netbox/configuration.py na variável: SECRET_KEY =
sudo python3 /opt/netbox/netbox/generate_secret_key.py 
```

## 10_ Atualizando o arquivo configuração do Netbox Labs Community no Ubuntu Server
```bash
#atualizando o arquivo de configuração do Netbox Labs Community
#opção do comando wget: -v (verbose), -O (output file)
sudo cp -v /opt/netbox/netbox/netbox/configuration_example.py /opt/netbox/netbox/netbox/configuration.py
```

## 11_ Editando os arquivos de configurações do Netbox Labs Community no Ubuntu Server
```bash
#editar o arquivo de configuração do Netbox Labs Community
sudo vim /opt/netbox/netbox/netbox/configuration.py

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha: 11 da variável do ALLOWED_HOSTS = [] para: ALLOWED_HOSTS = ['*']
ALLOWED_HOSTS = ['*']

#alterar as linhas: 15 até 23 das variáveis de conexão com o Banco de Dados PostgreSQL Server
DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.postgresql',
    'NAME': 'netbox',
    'USER': 'netbox',
    'PASSWORD': 'SUA_SENHA_SEGURA',
    'HOST': 'localhost',
    'PORT': '',
    'CONN_MAX_AGE': 300,
  }
}

#alterar a linha: 69 da variável do SECRET_KEY = para: SECRET_KEY = SUA_CHAVE_SEGURA
#copiar e colar a chave gerada pelo script: /opt/netbox/netbox/generate_secret_key.py 
#OBSERVAÇÃO IMPORTANTE: COPIAR E COLAR A CHAVE DENTRO DE ASPAS SIMPLES
SECRET_KEY = 'COPIAR_COLAR_A_CHAVE_SEGURA'

#alterar a linha: 163 da variável: LOGIN_REQUIRED = False para LOGIN_REQUIRED = True
LOGIN_REQUIRED = True
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 12_ Atualizando as configurações do Netbox Labs Community no Ubuntu Server
```bash
#adicionando o suporte ao Django-Storage nos requisitos do Netbox Labs Community
#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input.)
#opção do redirecionado de entrada >> (Maior Maior): 
sudo sh -c "echo 'django-storages' >> /opt/netbox/local_requirements.txt"

#rodando o script de atualização das configurações do Netbox Labs Community
sudo sudo /opt/netbox/upgrade.sh 
```

## 13_ Criando a conta de Super Usuário do Netbox Labs Community no Ubuntu Server
```bash
#acessando o ambiente virtual (venv) do Netbox Labs Community
source /opt/netbox/venv/bin/activate

#rodando o script de criação do Super Usuário do Netbox Labs Community
#opção do script manage.py: createsuperuser (create super user admin account)
/opt/netbox/netbox/manage.py createsuperuser
  Username: SEU_USUÁRIO
  Email address: seu_email@seu.domínio
  Password: SUA_SENHA
  Password (again): REPETIR_SUA_SENHA
  Superuser created successfully

#testando o ambiente virtual do Netbox Labs Community
#opções do script manage.py: runserver (running server test files and statistic), --insecure (running HTTP)
#pressione: Ctrl+C para finalizar a execução do teste do Netbox Labs Community
/opt/netbox/netbox/manage.py runserver 0.0.0.0:8000 --insecure

#verificando a porta de conexão de teste TCP-8000 do Netbox Labs Community
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8000' -sTCP:LISTEN

#testando o acesso a página do Netbox Labs Community
#opção do comando curl: -I (Fetch the headers only)
#saída do comando curl: HTTP/1.1 200 OK (Sucesso total, servidor está respondendo corretamente)
curl -I http://127.0.0.1:8000/

#utilizar os navegadores para testar a página do Netbox Labs Community
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8000
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8000

#saindo do ambiente virtual (venv) do Netbox Labs Community
deactivate
```

## 14_ Atualizando os arquivos de serviço do Netbox Labs Community no Ubuntu Server
```bash
#atualizando o arquivo do Gunicorn do Netbox Labs Community
#opção do comando cp: -v (verbose)
sudo cp -v /opt/netbox/contrib/gunicorn.py /opt/netbox/gunicorn.py

#atualizando os arquivos de serviços do Netbox Labs Community
#opção do comando cp: -v (verbose)
sudo cp -v /opt/netbox/contrib/*.service /etc/systemd/system/

#habilitando os serviços do Netbox Labs Community
sudo systemctl daemon-reload
sudo systemctl enable netbox netbox-rq
sudo systemctl start netbox netbox-rq
```

## 15_ Verificando os Serviços do Netbox Labs Community no Ubuntu Server
```bash
#verificando o serviço do NetBox WSGI Service e NetBox Request Queue Worker
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units), reload (Asks all units 
#listed on the command line to reload their configuration)
sudo systemctl status netbox netbox-rq
sudo systemctl restart netbox netbox-rq
sudo systemctl reload netbox netbox-rq
sudo systemctl stop netbox netbox-rq
sudo systemctl start netbox netbox-rq

#analisando os Log's e mensagens de erro do Netbox Labs Community
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu netbox
sudo journalctl -xeu netbox-rq
```

## 16_ Verificando o porta padrão de Conexão do NetBox WSGI Service 
```bash
#verificando a porta de conexão padrão TCP-8001 do NetBox WSGI Service
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8001' -sTCP:LISTEN
```

## 17_ Gerando o Certificado SSL Auto-Assinado do Netbox Labs Community no Ubuntu Server
```bash
#gerando o certificado auto-assinado utilizando o OpenSSL no Ubuntu Server
#opções do comando openssl: req (), -x509 (), -nodes (), -days (), -newkey (), -keyout () -out ()
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/netbox.key \
-out /etc/ssl/certs/netbox.crt
```

## 18_ Instalando e configurando o serviço do NGINX Server no Ubuntu Server
```bash
#instalando o NGINX Server no Ubuntu Server
sudo apt install nginx nginx-common nginx-core

#atualizando o arquivo do site padrão do Netbox Labs Community no NGINX Server
#opção do comando cp: -v (verbose)
sudo cp -v /opt/netbox/contrib/nginx.conf /etc/nginx/sites-available/netbox

#habilitando o site do Netbox Labs Community no NGINX Server
#opção do comando rm: -v (verbose)
#opção do comando ln: -s (symbolic link)
sudo rm -v /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/netbox /etc/nginx/sites-enabled/netbox

#reiniciando o serviço do NGINX Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
sudo systemctl restart nginx
sudo systemctl status nginx

#verificando as portas de conexão padrão TCP-80, TCP-443 e TCP-8001 do NGINX e do NetBox WSGI Service
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80,443,8001' -sTCP:LISTEN
```

## 19_ Testando e configurando o Netbox Labs Community via Terminal e Navegador

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
#testando o acesso a páginas do NGINX Server
#opção do comando curl: -I (Fetch the headers only), -L (Reports that the requested page has moved 
#to a different location)
#saída do comando curl: HTTP/1.1 301 Moved Permanently (É um redirecionamento permanente)
curl -I -L http://127.0.0.1:80/
```
```bash
#utilizar os navegadores para configurar o Netbox Labs Community
firefox ou google chrome: http://endereço_ipv4_ubuntuserver

#Tela de login do Netbox Labs Community
Utilizador: SEU_USUÁRIO
Senha: SUA_SENHA
<Entrar>
```

========================================DESAFIOS=========================================

**#20_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETBOX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netbox realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-netbox.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetbox #desafionetboxlabs