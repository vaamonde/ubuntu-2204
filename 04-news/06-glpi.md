#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 24/05/2024<br>
#Data de atualização: 11/05/2025<br>
#Versão: 0.11<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GLPI SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do GLPI realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/16-glpihelpdesk.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioglpi #desafioglpihelpdesk

Conteúdo estudado nessa implementação:<br>
#01_ Instalando as Dependências do GLPI Help Desk no Ubuntu Server;<br>
#02_ Criando a Base de Dados do GLPI Help Desk no MySQL Server no Ubuntu Server;<br>
#03_ Baixando o Projeto do GLPI Help Desk do Github no Ubuntu Server;<br>
#04_ Descompactando e instalando o GLPI Help Desk no Apache2 Server no Ubuntu Server;<br>
#05_ Atualizando os Arquivos de Configuração do GLPI Help Desk no Ubuntu Server;<br>
#06_ Editando os arquivos de configuração do GLPI Help Desk no Ubuntu Server;<br>
#07_ Habilitando os módulos do Apache2 Server utilizados pelo GLPI Help Desk no Ubuntu Server;<br>
#08_ Verificando a Porta de Conexão do GLPI Help Desk no Ubuntu Server;<br>
#09_ Localização dos diretórios e arquivos principais do GLPI Help Desk (NÃO COMENTADO NO VÍDEO) no Ubuntu Server;<br>
#10_ Acessando e configurando o GLPI Help Desk via navegador;<br>
#11_ Habilitando o Recurso de Inventário do GLPI Help Desk;<br>
#12_ Instalando os Agentes de Inventário do GLPI Help Desk no Servidor e Desktops Linux e Windows.<br>

Site Oficial do GLPI Project: https://glpi-project.org/pt-br/<br>

**O QUE É E PARA QUE SERVER O GLPI:** O *GLPI (Gestionnaire Libre de Parc Informatique)* é uma plataforma open-source de *ITSM (IT Service Management)* usada para gerenciamento de ativos de TI, help desk, inventário e controle de chamados. Ele é amplamente utilizado por equipes de suporte técnico e departamentos de TI para otimizar o gerenciamento de infraestrutura e serviços.

**O QUE É E PARA QUE SERVER O ITSM:** O *ITSM (sigla para IT Service Management, ou Gerenciamento de Serviços de TI)* é um conjunto de práticas e processos utilizados para projetar, entregar, gerenciar e melhorar os serviços de TI oferecidos por uma organização.

**O QUE É E PARA QUE SERVER O ITIL:** O *ITIL (sigla para Information Technology Infrastructure Library)* é um conjunto de boas práticas para o gerenciamento de serviços de TI (ITSM). Ele serve como um guia para ajudar as organizações a oferecerem serviços de TI de forma mais eficiente, alinhados com os objetivos do negócio.

**O QUE É E PARA QUE SERVER O COBIT:** O *COBIT (Control Objectives for Information and Related Technologies)* é um framework (modelo de governança e gestão de TI) criado pela ISACA para ajudar organizações a gerenciar e controlar melhor a TI com foco em governança corporativa, conformidade, segurança e alinhamento com os objetivos do negócio.

[![GLPI](http://img.youtube.com/vi/Et4Ac24vt6w/0.jpg)](https://www.youtube.com/watch?v=Et4Ac24vt6w "GLPI")

Link da vídeo aula: https://www.youtube.com/watch?v=Et4Ac24vt6w

## 01_ Instalando as Dependências do GLPI Help Desk no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O GLPI POSSUI AS DEPENDÊNCIAS DO BANCO DE DADOS *MYSQL SERVER E DO APACHE2 SERVER*, ESSES APLICATIVOS JÁ FORAM INSTALADO NAS ETAPAS: **02 DO APACHE2 SERVER E PHP** E NA ETAPA: **03 DO MYSQL SERVER 8**.

```bash
#atualizando as lista do apt
sudo apt update
```

**OBSERVAÇÃO IMPORTANTE:** POR MOTIVO DE COMPATIBILIDADE, FOI REMOVIDO A *NUMERAÇÃO DA VERSÃO DO PHP* NESSE PROCEDIMENTO, TODO O CENÁRIO IRÁ INSTALAR SEMPRE A ÚLTIMA VERSÃO DISPONÍVEL NO UBUNTU SERVER, VERSÃO ATUALIZADA DO PHP NO UBUNTU SERVER 22.04: **8.1 (ATUALIZADO EM: 26/09/2024)**.

```bash
#instalando as dependências do GLPI Help Desk
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install php-curl php-gd php-intl php-pear php-imagick php-imap php-memcache php-pspell \
php-mysql php-tidy php-xmlrpc php-mbstring php-ldap php-cas php-apcu php-json php-xml php-cli \
libapache2-mod-php xmlrpc-api-utils xz-utils bzip2 unzip curl php-soap php-common php-bcmath \
php-zip php-bz2
```

## 02_ Criando a Base de Dados do GLPI Help Desk no MySQL Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O GLPI POSSUI AS DEPENDÊNCIAS DE *TIMEZONE E DATA HORA CORRETA*, ESSAS CONFIGURAÇÕES JÁ FORAM FEITAS NO PROCEDIMENTO: **03 DO LOCALE E TIMEZONE DAS CONFIGURAÇÕES INICIAIS DO UBUNTU SERVER**.

```bash
#habilitando o recurso de TimeZone do GLPI no MySQL Server
#opções do comando mysql: -u (user), -p (password), mysql (database)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo mysql_tzinfo_to_sql /usr/share/zoneinfo | sudo mysql -u root -p mysql

#reiniciar o serviço do MySQL Server 
sudo systemctl restart mysql
sudo systemctl status mysql

#opções do comando mysql: -u (user), -p (password)
sudo mysql -u root -p
```
```sql
/* Criando o Banco de Dados GLPI Help Desk com suporte ao UTF8 */
CREATE DATABASE glpi10 default CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

/* Criando o usuário da Base de Dados do GLPI Help Desk */
/* OBSERVAÇÃO: caso queira criar um usuário local no MySQL para o GLPI
utilize a opção: 'glpi10'@'localhost' para não permitir o acesso remoto
do Usuário GLPI */
CREATE USER 'glpi10' IDENTIFIED WITH mysql_native_password BY 'glpi10';

/* Aplicando as permissões de acesso do usuário GLPI Help Desk */
GRANT USAGE ON *.* TO 'glpi10';
GRANT ALL PRIVILEGES ON glpi10.* TO 'glpi10';
FLUSH PRIVILEGES;
```

**OBSERVAÇÃO IMPORTANTE:** CUIDADO COM AS CONFIGURAÇÕES DA TIMEZONE DO GLPI HELP, ESSAS CONFIGURAÇÕES PRECISA SER FEITA NO SISTEMA OPERACIONAL DO UBUNTU SERVER (ETAPA: 03 DAS CONFIGURAÇÕES DE DADA E HORA), NO MYSQL SERVER E NO PHP PARA FUNCIONAR CORRETAMENTE.

```sql
/* Configurando o Recurso de TimeZone do Usuário GLPI Help Desk */
/* ALTERAR AS INFORMAÇÕES DE TIMEZONE CONFORME A SUA NECESSIDADE */
GRANT SELECT ON mysql.time_zone_name TO 'glpi10';
SET time_zone='America/Sao_Paulo';
FLUSH PRIVILEGES;

/* Verificando as informações de Data e Hora e Timezone do MySQL Server */
SELECT NOW();
SELECT @@time_zone;

/* Verificando o Usuário GLPI Help Desk criado no Banco de Dados MySQL Server*/
SELECT user,host FROM mysql.user WHERE user='glpi10';

/* Visualizando as bases de dados do MySQL */
SHOW DATABASES;

/* Acessando o Banco de Dados GLPI Help Desk */
USE glpi10;

/* Saindo do Banco de Dados */
exit
```
```bash
#se logando com o usuário glpi10 para testar a conexão com o MySQL Server
#opções do comando mysql: -u (user), -p (password)
sudo mysql -u glpi10 -p
```
```sql
/* visualizando a base de dados do GLPI Help Desk */
SHOW DATABASES;
USE glpi10;
exit
```

## 03_ Baixando o Projeto do GLPI Help Desk do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o GLPI Help Desk sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi/releases

Link Oficial das versões do GLPI Help Desk: https://github.com/glpi-project/

```bash
#acessando diretório temporário do Ubuntu Server
cd /tmp

#download da última versão do GLPI Help Desk (link atualizado em 28/03/2025)
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O glpi.tgz https://github.com/glpi-project/glpi/releases/download/10.0.18/glpi-10.0.18.tgz
```

## 04_ Descompactando e instalando o GLPI Help Desk no Apache2 Server no Ubuntu Server
```bash
#descompactando o download do arquivo do GLPI Help Desk
#opção do comando tar: -x (extract), -z (gzip), -v (verbose), -f (file), -C (directory)
tar -xzvf glpi.tgz

#movendo o conteúdo do diretório do GLPI Help Desk para o diretório /var/www/html
#opção do comando mv: -v (verbose)
sudo mv -v glpi/ /var/www/html/

#OBSERVAÇÃO IMPORTANTE: ALTERAR O CAMINHO DA ALTERAÇÃO DAS PERMISSÕES CONFORME A SUA NECESSIDADE
#alterando as permissões dos diretórios e arquivos do GLPI Help Desk
#opção do comando chown: -R (recursive), -f (silent), -v (verbose), www-data (user), www-data (group)
#opção do comando find: . (path), -type d (directory), , type f (file), -exec (execute command)
#opção do comando chmod: -v (verbose), 755 (Dono=RWX, Grupo=R-X, Outros=R-X)
#opção do comando chmod: -v (verbose), 644 (Dono=RW-, Grupo=R--, Outros=R--)
#opção do comando chmod: -R (recursive), -v (verbose), 777 (Dono=RWX, Grupo=RWX, Outros=RWX)
#opção do comando {} \;: executa comandos em lote e aplica as permissões para cada arquivo/diretório em loop
sudo chown -Rfv www-data.www-data /var/www/html/glpi/
sudo find /var/www/html/glpi/. -type d -exec chmod -v 755 {} \;
sudo find /var/www/html/glpi/. -type f -exec chmod -v 644 {} \;
sudo chmod -Rv 777 /var/www/html/glpi/files/_log
```

## 05_ Atualizando os Arquivos de Configuração do GLPI Help Desk no Ubuntu Server
```bash
#download dos principais arquivos de configuração do GLPI Help Desk
#opção do comando wget: -v (verbose), -O (output file)

#download do arquivo de configuração do GLPI Help Desk
sudo wget -v -O /etc/apache2/conf-available/glpi.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/glpi.conf

#download do arquivo de agendamento do CRON GLPI Help Desk
sudo wget -v -O /etc/cron.d/glpi-cron https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/glpi-cron
```

## 06_ Editando os arquivos de configuração do GLPI Help Desk no Ubuntu Server
```bash
#editando o arquivo de configuração do GLPI Help Desk utilizado pelo Apache2
sudo vim /etc/apache2/conf-available/glpi.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#altere os valores das variáveis do GLPI Help Desk nas linhas:
16: <VirtualHost *:8888>
22:   DocumentRoot /var/www/html/glpi/public
29:   <Directory /var/www/html/glpi/public>
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de agendamento do GLPI Help Desk utilizado pelo CRON
sudo vim /etc/cron.d/glpi-cron

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#altere o caminho do PHP ou do GLPI Help Desk na linha: 16
*/1 * * * * root /usr/bin/php8.1 /var/www/html/glpi/front/cron.php --debug &> /dev/null
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de configuração do PHP
sudo vim /etc/php/8.1/apache2/php.ini

#entrando no modo de edição do editor de texto VIM
INSERT
```
```php
#descomentar e alterar o valor da variável: date.timezone na linha: 968
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO CONFIGURAR PARA EFEITO DE COMPATIBILIDADE
date.timezone = America/Sao_Paulo

#descomentar e alterar o valor da variável: session.cookie_secure na linha: 1371
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
session.cookie_secure = on

#alterar o valor da variável: session.cookie_httponly na linha: 1403
#OBSERVAÇÃO IMPORTANTE: a opção: on tem que ser em: MINÚSCULA para funcionar.
session.cookie_httponly = on

#alterar o valor da variável: session.cookie_samesite na linha: 1409
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
session.cookie_samesite = Lax

#descomentar e alterar o valor da variável: opcache.enable na linha: 1767
#habilitando o suporte ao Zend OpCache
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
opcache.enable = 1

#descomentar e alterar o valor da variável: opcache.memory_consumption na linha: 1773
#Máximo de memória que poderá ser utilizado pelo opcache
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
opcache.memory_consumption = 1024

#descomentar e alterar o valor da variável: opcache.memory_consumption na linha: 1780
#Define a quantidade máximas de arquivos PHP que poderão ser salvos no Cache.
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
opcache.max_accelerated_files = 20000

#descomentar e alterar o valor da variável: opcache.memory_consumption na linha: 1798
#Define com que frequência, em segundos, os arquivos em cache deverão expirar
#OBSERVAÇÃO IMPORTANTE: NÃO COMENTADO NO VÍDEO, RECOMENDO HABILITAR PARA EFEITO DE SEGURANÇA
opcache.revalidate_freq = 0
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de portas do Apache2 Server
sudo vim /etc/apache2/ports.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#adicionar o valor da variável: listen na linha 6
Listen 8888
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Habilitando os módulos do Apache2 Server utilizados pelo GLPI Help Desk no Ubuntu Server
```bash
#habilitando os módulos do Apache2 Server (NÃO COMENTADO NO VÍDEO)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo a2enmod cgi alias authz_host deflate dir expires headers mime rewrite autoindex \
negotiation setenvif

#testando as configurações do Apache2 Server
sudo apachectl configtest

#habilitando o arquivo de configuração do GLPI Help Desk
sudo a2enconf glpi.conf

#reiniciar o serviço do Apache2 Server
sudo systemctl restart apache2
sudo systemctl status apache2

#analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu apache2
```

## 08_ Verificando a Porta de Conexão do GLPI Help Desk no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-8888 do GLPI Help Desk
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'8888' -sTCP:LISTEN
```

## 09_ Localização dos diretórios e arquivos principais do GLPI Help Desk (NÃO COMENTADO NO VÍDEO) no Ubuntu Server
```bash
/etc/apache2/conf-available/*  <-- Diretório dos arquivos de configuração dos Sites do Apache2 Server;
/etc/cron.d/*                  <-- Diretório dos arquivos de agendamento diário do CRON;
/var/www/html/glpi/*           <-- Diretório dos arquivos e diretórios do GLPI Help Desk;
/var/www/html/glpi/public/*    <-- Diretório do DocumentRoot do Apache padrão do GLPI Help Desk;
/var/www/html/glpi/plugins/*   <-- Diretório dos Plugins do GLPI Help Desk;
/var/www/html/glpi/files/*     <-- Diretório dos Arquivos do GLPI Help Desk.
```

## 10_ Acessando e configurando o GLPI Help Desk via navegador
```bash
#acessar via navegador o GLPI
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8888

#Informações que serão solicitadas na configuração via Web do GLPI Help Desk
GLPI SETUP
    Selecione seu idioma: Português Brasil <OK>
    Licença: <Continuar>
    Início da instalação: <Instalar>
    Etapa 0: Verificando a compatibilidade do seu ambiente para a execução do GLPI: <Continuar>

        #OBSERVAÇÃO IMPORTANTE: Configuração segura do diretório raiz da web
        O diretório raiz do servidor web deve ser `/var/www/html/glpi/public` para garantir
        que arquivos não públicos não possam ser acessados.
        A configuração do diretório raiz do servidor da Web não é segura, pois permite acesso
        a arquivos não públicos. Consulte a documentação de instalação para obter mais detalhes.

        #OBSERVAÇÃO IMPORTANTE: Caminho seguro para diretórios de dados
        Os diretórios de dados do GLPI deveriam ser colocados fora da raiz do diretório web. Isso
        pode ser alcançado ao redefinir as constantes correspondentes. Consulte a documentação de
        instalação para obter mais informações.
        Os seguintes diretórios devem ser armazenados fora de "/var/www/html/glpi":
        ‣ "/var/www/html/glpi/files" ("GLPI_VAR_DIR")
        Você pode ignorar esta sugestão se o diretório raiz do seu servidor web for 
        "/var/www/html/glpi/public". 

    Etapa 1: Instalação da conexão com o banco de dados
        Endereço do servidor SQL (MariaDB ou MySQL): localhost
        Usuário SQL: glpi10
        Senha SQL: glpi10
    <Continuar>
    Etapa 2: Teste de conexão com o banco de dados
        Por favor, selecione o banco de dados: 
        On (Selecionar): glpi10
    <Continuar>
    Etapa 3: Iniciando banco de dados
        OK - banco de dados inicializado
        #OBSERVAÇÃO IMPORTANTE: o processo de criação das Tabelas e configuração base do
        #GLPI Help Desk demora um pouco.
    <Continuar>
    Etapa 4: Coletar dados
        On (Selecionar): Enviar "estatísticas de uso"
    <Continuar>
    Etapa 5: Uma última coisa antes de começar: <Continuar>
    Etapa 6: A instalação foi concluída
        Os usuários e senhas padrões são:
        glpi/glpi para a conta do usuário administrador
        tech/tech para a conta do usuário técnico
        normal/normal para a conta do usuário normal
        post-only/postonly para a conta do usuário postonly
    <Usar GLPI>

#fazendo o Login na Tela Principal do GLPI Help Desk
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8888
    Faça login para sua conta
        Usuário: glpi
        Senha: glpi
        Origem de login: Banco de dados interno do GLPI
        On (Selecionar): Lembrar de mim
    <Entrar>

#removendo o arquivo Install pós instalação do GLPI Help Desk
#opção do comando rm: -v (verbose)
sudo rm -v /var/www/html/glpi/install/install.php
```

## 11_ Habilitando o Recurso de Inventário do GLPI Help Desk
```bash
#habilitar o recurso de recebimento de inventário no GLPI Help Desk
Administração
    Inventário
        Configuração
            Habilitar inventário: On (Enable)
        <Salvar>

#testando se o recurso de Inventário foi habilitado no GLPI Help Desk
#OBSERVAÇÃO: não pode aparecer a mensagem: Inventory is disabled
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:8888/front/inventory.php
```

## 12_ Instalando os Agentes de Inventário do GLPI Help Desk no Servidor e Desktops Linux e Windows

### Instalação do GLPI Agent no Ubuntu Server

```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Agent do GLPI Help Desk
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install libfile-which-perl liblwp-useragent-determined-perl libnet-ip-perl \
libtext-template-perl libuniversal-require-perl libxml-treepp-perl libcpanel-json-xs-perl \
libcompress-raw-zlib-perl libio-compress-perl libhttp-daemon-perl libio-socket-ssl-perl \
liblwp-protocol-https-perl libproc-daemon-perl libproc-pid-file-perl libnet-cups-perl \
libparse-edid-perl libdatetime-perl libthread-queue-any-perl libnet-nbname-perl libnet-snmp-perl \
libcrypt-des-perl libnet-write-perl libarchive-extract-perl libdigest-sha-perl \
libfile-copy-recursive-perl libjson-pp-perl liburi-escape-xs-perl libparallel-forkmanager-perl \
libnet-ssh2-perl libxml-libxml-perl libyaml-perl libyaml-tiny-perl libossp-uuid-perl dmidecode \
hdparm 7zip
```

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o GLPI Agent sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi-agent/releases/

```bash
#baixando o Agent do GLPI do Github (link atualizado em: 11/05/2025)
wget https://github.com/glpi-project/glpi-agent/releases/download/1.14/glpi-agent_1.14-2_all.deb

#instalando o Agent do GLPI Help Desk
#opção do comando dpkg: -i (install)
sudo dpkg -i glpi-agent*.deb

#verificando a versão do GLPI Help Desk no Ubuntu Server
sudo glpi-agent --version

#editando o arquivo de configuração do Agent do GLPI Help Desk
sudo vim /etc/glpi-agent/agent.cfg

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o valor da variável: server na linha: 12
server = http://172.16.1.20:8888/front/inventory.php

#descomentar o valor da variável: local na linha: 20
local = /tmp

#alterar o valor da variável: tag na linha: 127
tag = ServerLinux
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciando o serviço do Agent do GLPI Help Desk
sudo systemctl restart glpi-agent
sudo systemctl status glpi-agent

#verificando a porta de conexão do GLPI Agent
#opção do comando netstat: -a (all), -n (numeric), -p (program)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo netstat -anp | grep 62354 

#testando o Agent do GLPI Help Desk via navegador
firefox ou google chrome: http://endereço_ipv4_ubuntuserver:62354/

#forçando o envio do primeiro inventário do GLPI Help Desk
sudo glpi-agent 
```

### Instalação do GLPI Agent no Linux Mint

```bash
#atualizando as lista do apt
sudo apt update

#instalando as dependências do Agent do GLPI Help Desk
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install libfile-which-perl liblwp-useragent-determined-perl libnet-ip-perl \
libtext-template-perl libuniversal-require-perl libxml-treepp-perl libcpanel-json-xs-perl \
libcompress-raw-zlib-perl libio-compress-perl libhttp-daemon-perl libio-socket-ssl-perl \
liblwp-protocol-https-perl libproc-daemon-perl libproc-pid-file-perl libnet-cups-perl \
libparse-edid-perl libdatetime-perl libthread-queue-any-perl libnet-nbname-perl libnet-snmp-perl \
libcrypt-des-perl libnet-write-perl libarchive-extract-perl libdigest-sha-perl \
libfile-copy-recursive-perl libjson-pp-perl liburi-escape-xs-perl libparallel-forkmanager-perl \
libnet-ssh2-perl libxml-libxml-perl libyaml-perl libyaml-tiny-perl libossp-uuid-perl dmidecode \
hdparm 7zip
```

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o GLPI Agent sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi-agent/releases/

```bash
#baixando o Agent do GLPI do Github (link atualizado em: 11/05/2025)
wget https://github.com/glpi-project/glpi-agent/releases/download/1.14/glpi-agent_1.14-2_all.deb

#opção do comando dpkg: -i (install)
sudo dpkg -i glpi-agent*.deb

#editando o arquivo de configuração do Agent do GLPI Help Desk
sudo vim /etc/glpi-agent/agent.cfg

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar o valor da variável: server na linha: 12
server = http://172.16.1.20:8888/front/inventory.php

#descomentar o valor da variável: local na linha: 20
local = /tmp

#alterar o valor da variável: tag na linha: 127
tag = DesktopLinux
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciando o serviço do Agent do GLPI Help Desk
sudo systemctl restart glpi-agent
sudo systemctl status glpi-agent

#verificando a porta de conexão do GLPI Agent
#opção do comando netstat: -a (all), -n (numeric), -p (program)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo netstat -anp | grep 62354 

#testando o Agent do GLPI Help Desk via navegador
firefox ou google chrome: http://endereço_ipv4_linuxmint:62354/

#forçando o envio do primeiro inventário do GLPI Help Desk
sudo glpi-agent 
```

### Instalação do GLPI Agent no Microsoft Windows 10

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o GLPI Agent sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi-agent/releases/

```bash
#baixando o Agent do GLPI Help Desk do Github (link atualizado em: 11/05/2025)
Link de download: https://github.com/glpi-project/glpi-agent/releases/download/1.14/GLPI-Agent-1.14-x64.msi

#instalando o Agent GLPI Help Desk Windows 10
Download
    Executar o software: GLPI-Agent-*-x64.msi
    O Windows protegeu o seu computador
        Mais informações
        <Executar assim mesmo> 
    Welcome to the Setup Wizard for GLPI Agent *: <Next>
    End-User License Agreement: <Next>
    Destination Folder: <Next>
    Choose Setup Type: <Custom>
        Custom Setup: <Next>
        Choose Targets:
            Local Target: C:\Program Files\GLPI-Agent\
            Remote Targets: http://172.16.1.20:8888/front/inventory.php
            Quick installation: ON
        <Next>
    <Install>
    Deseja permitir que este aplicativo de um fornecedor desconhecido faça alterações no seu dispositivo?
        <SIM>
    Completed the GLPI Agent 1.8 Setup Wizard: <Finish>

#editando o arquivo de configuração do Agent GLPI Help Desk via Powershell
Menu
    Powershell 
        Clicar com o botão direito do mouse e selecionar: Executar como Administrador

#acessando o diretório de configuração do Agent GLPI Help Desk
cd 'C:\Program Files\GLPI-Agent\etc'

#editando o arquivo de configuração do Agent GLPI Help Desk
notepad.exe .\agent.cfg
```
```bash
#alterar o valor da variável: server na linha: 12
server = http://172.16.1.20:8888/front/inventory.php

#descomentar o valor da variável: local na linha: 20
local = c:\temp

#alterar o valor da variável: tag na linha: 127
tag = DesktopLinux
```
```bash
#fechar e salvar as mudanças do arquivo do Agent GLPI Help Desk
<Fechar>
    <Salvar>
<Sair>

#reiniciar e verificar o serviço do Agent GLPI Help Desk
Restart-Service glpi-agent
Get-Service glpi-agent 

#verificando a porta de conexão do GLPI Agent
#opção do comando netstat: -a (all), -n (numeric)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
netstat -an | findstr 62354 

#testando o Agent do GLPI Help Desk via navegador
firefox ou google chrome: http://endereço_ipv4_windows10:62354/
```

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o GLPI Agent Monitor sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/glpi-project/glpi-agentmonitor/releases/

```bash
#baixando o Agent Monitor do GLPI Help Desk do Github (link atualizado em: 28/03/2025)
Link de download: https://github.com/glpi-project/glpi-agentmonitor/releases/download/1.4.0/GLPI-AgentMonitor-x64.exe

#instalando o GLPI Agent Monitor no Microsoft Windows 10
Download
    Executar o software: GLPI-AgentMonitor-x64.exe

#configuração do GLPI Agent Monitor no Microsoft Windows 10
#OBSERVAÇÃO IMPORTANTE: caso o ícone do GLPI Monitor não apareça na Barra de Tarefas
#do Windows 10 (System Tray Icon) clicar na opção: ^ Mostrar ícones ocultos e selecione o
#GLPI Monitor
GLPI Agent Monitor
    <Stop Service>....: Parar o serviços do GLPI Aget;
    <Force Inventory>.: Forçar o Inventário e envio para o GLPI Help Desk;
    <New ticket>......: Abrir um novo Chamado Técnico no GLPI Help Desk;
    <View agent logs>.: Visualizar os Logs de Eventos do GLPI Agent;
    <Settings>........: Configuração da URL da Abertura de Chamado no GLPI Help Desk;
    <Close>...........: Fechar o GLPI Agent Monitor.
```

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO GLPI SE VOCÊ CONSEGUIU IMPLEMENTAR COM A SEGUINTE FRASE: *Implementação do GLPI realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DA IMPLEMENTAÇÃO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E CONTEÚDO DA IMPLEMENTAÇÃO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/16-glpihelpdesk.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioglpi #desafioglpihelpdesk