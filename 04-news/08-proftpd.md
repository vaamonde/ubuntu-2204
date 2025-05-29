#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 24/05/2025<br>
#Data de atualização: 26/05/2025<br>
#Versão: 0.05<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROFTPD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do ProFTPD realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/20-proftpd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioproftpd #desafioftp

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o ProFTPD Server no Ubuntu Server<br>
#02_ Verificando o Serviço e Versão do ProFTPD Server no Ubuntu Server<br>
#03_ Verificando a Porta de Conexão do ProFTPD Server no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do ProFTPD Server no Ubuntu Server<br>
#05_ Atualizando os arquivos de configuração do ProFTPD Server no Ubuntu Server<br>
#06_ Acessando remotamente o ProFTPD Server via Powershell, Terminal e Git Bash.<br>
#07_ Instalando o via FileZilla no Windows e GNU/Linux<br>
#08_ Acessando o servidor ProFTPD Server via FileZilla no Windows ou GNU/Linux<br>
#09_ Integrando o FTP no Visual Studio Code VSCode o Windows e GNU/Linux
#10_ Criando um usuário de FTP do serviço de CMS Wordpress no Ubuntu Server<br>
#11_ Gerenciando o servidor ProFTPD Server via Webmin<br>
#12_ Desafios de Usuários e Acesso Remoto do ProFTPD Server.<br>

Site Oficial do ProFTPD: http://www.proftpd.org/<br>
Site Oficial do Projeto FileZilla: https://filezilla-project.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O FTP:** O *FTP (File Transfer Protocol)*, que em português é Protocolo de Transferência de Arquivos. É um protocolo de comunicação utilizado para transferir arquivos entre computadores em uma rede, seja ela local (LAN) ou na internet.

**O QUE É E PARA QUE SERVER O PROFTPD:** O *ProFTPD* é um servidor FTP avançado, gratuito e de código aberto, desenvolvido especialmente para sistemas UNIX e GNU/Linux. Ele implementa os protocolos FTP, FTPS (FTP sobre SSL/TLS) e também pode trabalhar com SFTP (via módulo mod_sftp), permitindo transferências seguras de arquivos.

[![ProFTPD Server](http://img.youtube.com/vi//0.jpg)]( "ProFTPD Server")

Link da vídeo aula: 

## 01_ Instalando o ProFTPD Server no Ubuntu Server
```bash
#atualizando as listas do Apt
sudo apt update

#instalando o ProFTPD Server no Ubuntu Server
sudo apt install proftpd-basic proftpd-core
```

## 02_ Verificando o Serviço e Versão do ProFTPD Server no Ubuntu Server
```bash
#verificando o serviço do ProFTPD Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status proftpd
sudo systemctl restart proftpd
sudo systemctl reload proftpd
sudo systemctl stop proftpd
sudo systemctl start proftpd

#analisando os Log's e mensagens de erro do ProFTPD Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu proftpd

#verificando os arquivos de configuração do ProFTPD Server
#opção do comando proftpd: -t (configtest), -d (--debug), 10 (debug level)
sudo proftpd -td10
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do ProFTPD Server
#opção do comando proftpd: -v (version)
sudo proftpd -v
```

## 03_ Verificando a Porta de Conexão do ProFTPD Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-21 do ProFTPD Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'21' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do ProFTPD Server no Ubuntu Server
```bash
/etc/proftpd/               <-- Diretório de configuração do ProFTPD Server
/etc/proftpd/proftpd.conf   <-- Arquivo de configuração do ProFTPD Server
/etc/proftpd/conf.d/        <-- Diretório das configurações personalizadas do ProFTPD Server
/etc/ftpusers               <-- Arquivo de usuários negados para conectar via FTP
/var/log/proftpd/           <-- Diretório padrão dos Logs do ProFTPD Server
/var/run/                   <-- Diretório dos processos e socket do ProFTPD Server
/bin/ftponly                <-- Arquivo de Shell básico dos usuários de FTP do ProFTPD Server
```

## 05_ Atualizando os arquivos de configuração do ProFTPD Server no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do ProFTPD Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.old

#criando o arquivo de shell básico dos usuários do ProFTPD Server
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /bin/ftponly https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/ftponly

#alterando as permissões do arquivo de shell básico dos usuários do ProFTPD Server
#opção do comando chmod: -v (verbose), a (all user), + (bits to be added), x (execute/search only)
sudo chmod -v a+x /bin/ftponly

#atualizando o arquivo de shells válidos do Ubuntu Server
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/shells https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/shells

#atualizando o arquivo de configuração do ProFTPD Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/proftpd/proftpd.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/proftpd.conf

#editando o arquivo de configuração do ProFTPD Server
#mais informações veja a documentação oficial em: http://www.proftpd.org/docs/howto/ConfigFile.html
sudo vim /etc/proftpd/proftpd.conf

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a variável ServerName na linha: 19 
#ServerName "NOME_SERVIDOR" para: NOME_DO_SEU_SERVIDOR
#OBSERVAÇÃO: ALTERAR O NOME DO SERVIDOR CONFORME A SUA NECESSIDADE
ServerName "NOME_DO_SEU_SERVIDOR"

#alterar a variável Allow from SUA_REDE_LOCAL/CIDR na linha: 39
#OBSERVAÇÃO: ALTERAR O ENDEREÇO IPV4 DA SUA REDE LOCAL
Allow from SUA_REDE_LOCAL/CIDR
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```
```bash
#verificando os arquivos de configuração do ProFTPD Server
#opção do comando proftpd: -t (configtest), -d (--debug), 10 (debug level)
sudo proftpd -td10

#reiniciando e verificando o serviço do ProFTPD Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units),
sudo systemctl restart proftpd
sudo systemctl status proftpd

#analisando os Log's e mensagens de erro do ProFTPD Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu proftpd

#verificando a porta padrão TCP-21 do ProFTPD Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'21' -sTCP:LISTEN
```

## 06_ Acessando remotamente o ProFTPD Server via Powershell, Terminal, Git Bash e Gerenciador de Arquivos.

**OBSERVAÇÃO IMPORTANTE:** O comando ftp tem várias opções, após se autenticar no ProFTPD Server para obter ajuda sobre o comando digite o carácter: __`?`__ (interrogação), a maioria dos comando do FTP são baseados nos comandos antigos do __`MSDOS`__ e do __`BASH`__.

```bash
#acessando o ProFTPD via Powershell
Windows
  Pesquisa do Windows
    Powershell
      ftp ENDEREÇO_IPV4_SERVIDOR
      Name (ENDEREÇO_IPV4_SERVIDOR:vaamonde): SEU_USUÁRIO
      Password: SUA_SENHA

#acessando o ProFTPD via Git Bash
Windows
  Pesquisa do Windows
    Git Bash
      ftp ENDEREÇO_IPV4_SERVIDOR
      Name (ENDEREÇO_IPV4_SERVIDOR:vaamonde): SEU_USUÁRIO
      Password: SUA_SENHA

#acessando o ProFTPD via Terminal
Atalho Terminal: Ctrl+Alt+T
  ftp ENDEREÇO_IPV4_SERVIDOR
  Name (ENDEREÇO_IPV4_SERVIDOR:vaamonde): SEU_USUÁRIO
  Password: SUA_SENHA

#acessando o ProFTPD via Gerenciador de Arquivos NEMO
Gerenciador de Arquivos NEMO
  Ctrl+L
    ftp://ENDEREÇO_IPV4_SERVIDOR
    Usuário: SEU_USUÁRIO
    Senha..: SUA_SENHA
```

## 07_ Instalando o FileZilla no Microsoft Windows e GNU/Linux Mint

Site oficial do FileZilla: https://filezilla-project.org/

```bash
#instalando o FileZilla no GNU/Linux Mint
Atalho Terminal: Ctrl+Alt+T

#atualizando as listas do apt
sudo apt update

#instalando o FileZilla no Linux Mint
sudo apt install filezilla
```
```bash
#instalando o FileZilla no Microsoft Windows
Link de download: https://filezilla-project.org/download.php?platform=win64

#download da versão 64 Bis
Clicar em: <Download FileZilla Client>
```

## 08_ Acessando o servidor ProFTPD Server via FileZilla no Windows ou GNU/Linux
```bash
#executando o cliente do FileZilla no Windows ou GNU/Linux
Pesquisar por: FileZilla Client

#criando uma conexão com o servidor de FTP
Arquivo
  Gerenciador de Sites

#criando um novo site de FTP no FileZilla
Gerenciador de Sites
  <New site>
    Name: ProFTPD <Enter>
    Geral
      Protocolo: FTP - Protocolo de Transferência de Arquivos
      Host: ENDEREÇO_IPV4_SERVIDOR  Porta: 21
      Criptografia: Use FTP explícito sobre TLS se disponível
      Tipo de logon: normal
      Usuário: SEU_USUÁRIO
      Senha: SUA_SENHA
    <OK>
  (ON) Save passwords
<OK>

#testando a conexão com o servidor de FTP no FileZilla
Ícone de: Gerenciador de Site selecione: ProFTPD
  (ON) Always allow insecure plain FTP for this server
  <OK>
```

## 09_ Integrando o FTP no Visual Studio Code VSCode o Windows e GNU/Linux
```bash
#abrir o VSCode no Windows ou GNU/Linux instalar a Extensão do FTP
code
  Extensões
    Pesquisar:
      #OBSERVAÇÃO: essa extensão já foi instalada no procedimento 03-mysql-server
      MySQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
    <Instalar>

#criando uma nova conexão com o servidor de FTP no VSCode no Windows ou GNU/Linux
code
  Service
    <Create Connection>
      Connect to Server
        FTP
          Main
            Host: ENDEREÇO_IPV4_SERVIDOR
            Port: 21
            Username: SEU_USUÁRIO
            Password: SUA_SENHA
        <Save>
  Clicar em: SEU_ENDEREÇO_IPV4_SERVIDOR@21
```

## 10_ Criando um usuário de FTP do serviço de CMS Wordpress no Ubuntu Server

```bash
#criando o usuário de FTP do CMS Wordpress no Ubuntu Server
#opções do comando useradd: -d (home-dir), -s (shell), -G (groups), wordpress (create user)
sudo useradd -d /var/www/html/wp -s /bin/ftponly -G www-data,nogroup wordpress

#criando a senha de acesso ao FTP do usuário do CMS Wordpress no Ubuntu Server
#opção do comando echo: -e (enable escapes), \n (new line)
#opção do redirecionar | "piper": (Conecta a saída padrão com a entrada padrão de outro comando)
echo -e "wordpress\nwordpress" | sudo passwd wordpress

#visualizando o usuário criado no Ubuntu Server
#opção do comando getent: passwd (the database system user)
sudo getent passwd wordpress

#visualizando o grupo do Apache2 no Ubuntu Server
#opção do comando getent: group (the database system group)
sudo getent group www-data
```

## 11_ Gerenciando o servidor ProFTPD Server via Webmin
```bash
#acessar via navegador o Webmin
firefox ou google chrome: https://endereço_ipv4_ubuntuserver:10000

Username: seu_usuário
Password: sua_senha
<Sign In>
```
```bash
#Atualizando os Módulos de Serviços do Webmin
Webmin
  Refresh Modules
```
```bash
#Administrado o servidor de ProFTPD Server via Webmin
Webmin
  Servidores
    Servidor ProFTPD
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** CRIAR UM NOVO USUÁRIO DE FTP (QUALQUER NOME E SENHA) PARA TER ACESSO SOMENTE AO DIRETÓRIO DE TESTE: __`/var/www/html/teste`__ DAS PÁGINAS HTML E PHP UTILIZADO NA IMPLEMENTAÇÃO DO APACHE2 SERVER.

**#13_ DESAFIO-02:** CRIAR MAIS UM USUÁRIO DE FTP (QUALQUER NOME E SENHA) PARA TER ACESSO SOMENTE AO DIRETÓRIO DO DESAFIO DO APACHE2 SERVER: __`/var/www/html/seunome`__ DAS PÁGINAS HTML E PHP.

**#14_ DESAFIO-03:** CRIAR MAIS UM USUÁRIO DE FTP (QUALQUER NOME E SENHA) PARA TER ACESSO SOMENTE AO DIRETÓRIO DO DESAFIO DO CMS WORDPRESS: __`/var/www/html/site`__.

**#15_ DESAFIO-04:** ADICIONAR O MONITORAMENTO DA PORTA DO PROFTPD NO __`NETDATA`__ NA OPÇÃO DE: __`TCP Endpoint`__.

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO PROFTPD SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do ProFTPD realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/20-proftpd.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioproftpd #desafioftp
