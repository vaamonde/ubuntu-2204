#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 18/04/2023<br>
#Data de atualização: 01/01/2026<br>
#Versão: 0.30<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO OPENSSH SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do OpenSSH realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/01-openssh.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioopenssh #desafiossh

Conteúdo estudado nesse desafio:<br>
#01_ Instalando o OpenSSH Server e Client no Ubuntu Server<br>
#02_ Verificando o Serviço e Versão do OpenSSH Server e Client no Ubuntu Server<br>
#03_ Verificando a Porta de Conexão do OpenSSH Server no Ubuntu Server<br>
#04_ Localização dos Arquivos de Configuração do OpenSSH Server no Ubuntu Server<br>
#05_ Atualizando os arquivos de configuração do OpenSSH Server e do Banner no Ubuntu Server<br>
#06_ Habilitando a segurança de acesso ao OpenSSH Server no Ubuntu Server<br>
#07_ Editando os arquivos de configuração do OpenSSH Server e do Banner no Ubuntu Server<br>
#08_ Acessando remotamente o OpenSSH Server via Powershell, PuTTY e Git Bash<br>
#09_ Criando um usuário Administrador no Ubuntu Server<br>
#10_ Adicionando o usuário Admin no grupo SUDO (Super User Do) do Ubuntu Server<br>
#11_ Se logando no Terminal TTY (Teletype Bash/Shell) do Ubuntu Server<br>
#12_ Desafios de Usuários e Acesso Remoto do OpenSSH.<br>

Site Oficial do OpenSSH: https://www.openssh.com/<br>
Site Oficial do OpenSSL: https://www.openssl.org/<br>
Site Oficial do PuTTY: https://www.putty.org/

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**PERGUNTA PARA A IA**
```bash
Prompt-01: Qual o nome do software mais utilizado no Brasil e no mundo para acesso remoto de
servidores Locais (on-premises) ou em Cloud (Nuvem)? por que esse protocolo é mais utilizado?
```

**O QUE É E PARA QUE SERVER O OPENSSH:** O *OpenSSH (Open Secure Shell)* é um conjunto de ferramentas que fornece soluções para comunicação segura em redes. Ele implementa o *Protocolo SSH (Secure Shell)*, permitindo conexões criptografadas e seguras entre computadores em redes públicas ou privadas. É amplamente utilizado em sistemas Linux e Unix, mas também está disponível para outros sistemas operacionais, como o Windows.

**O QUE É E PARA QUE SERVER O OPENSSL:** O *OpenSSL* é uma biblioteca de código aberto amplamente utilizada para segurança e criptografia, fornecendo ferramentas para comunicação segura através do *Protocolo TLS/SSL (Transport Layer Security/Secure Sockets Layer)*. Ele é essencial para a criação, gerenciamento e uso de certificados digitais, chaves criptográficas e conexões seguras em servidores, aplicações e redes.

**O QUE É E PARA QUE SERVER O TCP WRAPPERS:** O *TCP Wrappers* é uma ferramenta de segurança usada em sistemas Unix/Linux para controlar o acesso a serviços de rede. Ele permite *Restringir ou Permitir* conexões com base no endereço IPv4/IPv6 do cliente, hostname ou outras regras definidas pelo administrador.

**O QUE É E PARA QUE SERVER O ARQUIVO /ETC/ISSUE:** O /etc/issue é um arquivo de texto simples usado no Linux/Unix. Ele contém uma mensagem de boas-vindas ou aviso exibida antes do prompt de login em terminais locais (TTYs). Quem mostra o conteúdo é o agetty (o programa responsável por gerenciar logins nos consoles locais)..

**O QUE É E PARA QUE SERVER O ARQUIVO /ETC/ISSUE.NET:** O /etc/issue.net é semelhante ao /etc/issue, mas usado para logins remotos. Ele contém uma mensagem de identificação, aviso ou banner legal, exibida antes do login remoto via SSH, Telnet, etc. Diferente do /etc/issue, ele não interpreta sequências de escape (\n, \s, \d, etc.) → só mostra texto puro.

**O QUE É E PARA QUE SERVER O BLUE TEAM:** Blue Team é o time de *Defesa em Cibersegurança*. É o grupo responsável por: *proteger, monitorar e responder a ataques cibernéticos* dentro de uma organização. Eles trabalham de forma **Proativa e Reativa**, com foco total na segurança defensiva.

**O QUE É E PARA QUE SERVER O RED TEAM:** Red Team é o time de *Ataque em Cibersegurança*. A missão deles é *simular ataques reais contra a infraestrutura da empresa* para encontrar **Falhas** e testar a eficácia das *defesas (Blue Team)*. Eles são os __`"hackers éticos ofensivos"`__ dentro da organização — tudo é feito com autorização e objetivo de melhorar a segurança.

**O QUE É E PARA QUE SERVER O PURPLE TEAM:** Purple Team é um modelo colaborativo de segurança da informação que integra as equipes Red Team (ataque) e Blue Team (defesa). O foco não é “quem vence”, mas aprender juntos, melhorar processos e aumentar a maturidade da segurança da organização. Em vez de o Red atacar e o Blue apenas reagir, o Purple promove troca contínua de conhecimento, testes controlados e melhorias rápidas.

[![OpenSSH Server](http://img.youtube.com/vi/-cforvm_oV0/0.jpg)](https://www.youtube.com/watch?v=-cforvm_oV0 "OpenSSH Server")

Link da vídeo aula: https://www.youtube.com/watch?v=-cforvm_oV0

## 01_ Instalando o OpenSSH Server e Client no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** executar a instalação somente se você no processo de instalar o Ubuntu Server não marcou a opção: *Install OpenSSH*, caso contrário o mesmo já está instalado, pré-configurado e funcionando.

```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando o OpenSSH Server e Client (SOMENTE SE NECESSÁRIO)
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install openssh-server openssh-client openssl 
```

## 02_ Verificando o Serviço e Versão do OpenSSH Server e Client no Ubuntu Server
```bash
#verificando o serviço do OpenSSH Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
#stop (Stop (deactivate) one or more units), start (Start (activate) one or more units)
sudo systemctl status ssh
sudo systemctl restart ssh
sudo systemctl stop ssh
sudo systemctl start ssh

#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu ssh
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando as versões do OpenSSH Server e Client
#opção do comando sshd e sshd: -V (version)
#opção do comando ssh: -V (version)
sudo sshd -V
sudo ssh -V
```

## 03_ Verificando a Porta de Conexão do OpenSSH Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-22 do OpenSSH Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'22' -sTCP:LISTEN
```

## 04_ Localização dos Arquivos de Configuração do OpenSSH Server no Ubuntu Server
```bash
/etc/ssh/              <-- Diretório de configuração do OpenSSH Server e Client
/etc/ssh/sshd_config   <-- Arquivo de configuração do OpenSSH Server
/etc/ssh/ssh_config    <-- Arquivo de configuração do OpenSSH Client
/etc/hosts.deny        <-- Arquivo de configuração do Firewall de Aplicação TCP Wrappers Deny
/etc/hosts.allow       <-- Arquivo de configuração do Firewall de Aplicação TCP Wrappers Allow
/etc/issue.net         <-- Arquivo de configuração do Banner do Ubuntu Server para acesso remoto
/etc/issue             <-- Arquivo de configuração do Prompt de Login do Ubuntu Server para acesso local
/var/log/              <-- Diretório de Logs do Sistema Operacional Ubuntu Server
/var/log/syslog        <-- Log principal do Sistema Operacional Ubuntu Server
/var/log/auth.log      <-- Log principal das autenticações do Sistema Operacional Ubuntu Server
/var/log/allow-*.log   <-- Log principal dos acessos remoto do TCP Wrappers Allow do OpenSSH Server
/var/log/deny.log      <-- Log principal dos acesso negados do TCP Wrappers Deny do OpenSSH Server
```

## 05_ Atualizando os arquivos de configuração do OpenSSH Server e do Banner no Ubuntu Server
```bash
#fazendo o backup do arquivo de configuração do OpenSSH Server
#opção do comando cp: -v (verbose)
sudo cp -v /etc/ssh/sshd_config /etc/ssh/sshd_config.old

#atualizando o arquivo de configuração do OpenSSH Server do Ubuntu Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/ssh/sshd_config https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/sshd_config

#atualizando o arquivo de configuração do Banner do Ubuntu Server do Github
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/issue.net https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/issue.net

#atualizando o arquivo de configuração do Prompt de Login do Ubuntu Server do Github (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/issue https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/issue

#atualizando o arquivo de configuração do TCP Wrapper hosts allow do Ubuntu Server do Github (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/hosts.allow https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/hosts.allow

#atualizando o arquivo de configuração do TCP Wrapper hosts deny do Ubuntu Server do Github (NÃO COMENTADO NO VÍDEO)
#opção do comando wget: -v (verbose), -O (output file)
sudo wget -v -O /etc/hosts.deny https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/hosts.deny
```

## 06_ Habilitando a segurança de acesso ao OpenSSH Server no Ubuntu Server
```bash
#editando o arquivo de configuração de Negação de Serviço e Host
sudo vim /etc/hosts.deny

#mostrando o número de linha do arquivo hosts.deny
ESC SHIFT :set number <Enter>

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#inserir as informações na linha: 34
#lista de serviço: lista de hosts: comando
#OBSERVAÇÃO: A OPÇÃO ALL: ALL BLOQUEIA TODOS OS SERVIÇOS (DAEMONS) E REDE/HOSTS.
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/hosts.deny
ALL: ALL
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de configuração de Liberação de Serviço e Host
sudo vim /etc/hosts.allow

#mostrando o número de linha do arquivo hosts.allow
ESC SHIFT :set number <Enter>

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#inserir as informações na linha: 33
#lista de serviço: lista de hosts: comando
#OBSERVAÇÃO: ALTERAR A REDE OU ENDEREÇO IPv4 CONFORME A SUA NECESSIDADE
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/hosts.allow
sshd: ENDEREÇO_DA_SUA_SUB-REDE/SEU_CIDR
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>
```

## 07_ Editando os arquivos de configuração do OpenSSH Server e do Banner no Ubuntu Server
```bash
#editando o arquivo de configuração do OpenSSH Server
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/sshd_config
sudo vim /etc/ssh/sshd_config

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a variável ListenAddress na linha: 27 
#ListenAddress 172.16.1.xxx para: SEU_ENDEREÇO_IPV4_DO_UBUNTU
#OBSERVAÇÃO: ALTERAR O ENDEREÇO IPv4 CONFORME A SUA NECESSIDADE
ListenAddress SEU_ENDEREÇO_IPV4_DO_UBUNTU

#alterar a variável AllowUsers na linha: 77
#OBSERVAÇÃO: ALTERAR O USUÁRIO DE ACESSO CONFORME A SUA NECESSIDADE
AllowUsers SEU_USUÁRIO

#alterar a variável AllowGroups na linha: 83
#OBSERVAÇÃO: ALTERAR O GRUPO DE ACESSO CONFORME A SUA NECESSIDADE
AllowGroups SEU_GRUPO_DO_USUÁRIO
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#testando o arquivo de configuração do OpenSSH SERVER (NÃO COMENTADO NO VÍDEO)
#opção do comando sshd: -t (text mode check configuration)
sudo sshd -t

#editando o arquivo de configuração do Banner do Ubuntu Server
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/issue.net
sudo vim /etc/issue.net

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha 5: Servidor e Admin
#OBSERVAÇÃO: ALTERAR O BANNER CONFORME A SUA NECESSIDADE
Servidor: wsseunome - Admin: SEU NOME E SOBRENOME
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#editando o arquivo de configuração do Prompt de Login do Ubuntu Server
#mais informações veja a documentação oficial em: https://linux.die.net/man/5/issue
sudo vim /etc/issue

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar a linha 1: Servidor do Projeto
#OBSERVAÇÃO: ALTERAR O PROMPT CONFORME A SUA NECESSIDADE
Servidor do Projeto NOME_DO_SEU_PROJETO - GNU/Linux Server

#alterar a linha 4: Administrador do servidor
#OBSERVAÇÃO: ALTERAR O PROMPT CONFORME A SUA NECESSIDADE
Administrador do servidor.: SEU_NOME_E_SOBRENOME 
```
```bash
#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#reiniciar e verificar o status do serviço do OpenSSH Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start one or more units),
sudo systemctl restart ssh
sudo systemctl status ssh

#analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
sudo journalctl -t sshd
sudo journalctl -xeu ssh
```

## 08_ Acessando remotamente o OpenSSH Server via Powershell, PuTTY e Git Bash
```bash
#acessando o OpenSSH via Powershell
Windows
  Pesquisa do Windows
    Powershell
      ssh seu_usuário@ENDEREÇO_IPV4_SERVIDOR (alterar para o endereço IPv4 do seu servidor)

#acessando o OpenSSH via PuTTY
Windows
  Pesquisa do Windows
    PuTTY

Category
  Session
    Host Name (or IP address): seu_usuário@ENDEREÇO_IPV4_SERVIDOR (alterar para o endereço IPv4 do seu servidor)
    Port: 22
    SSH: On
<Open>

#acessando o OpenSSH via Git Bash no Windows
Windows
  Git Bash
    ssh seu_usuário@ENDEREÇO_IPV4_SERVIDOR (alterar o usuário e endereço IPv4 do seu servidor)

#acessando o OpenSSH via Terminal no Linux Mint
Linux
  Terminal: Ctrl + Alt + T
    ssh seu_usuário@ENDEREÇO_IPV4_SERVIDOR (alterar o usuário e endereço IPv4 do seu servidor)
```

```bash
#verificando informações detalhadas dos usuários logados no Ubuntu Server
sudo w
```

**OBSERVAÇÃO IMPORTANTE 01:** no comando: __`w`__ ele mostra na primeira linha as informações de:<br>
14:28:13   up 16 min,   1 user,   load average: 0,00, 0,00, 0,00<br>

| Valores | Descrição |
|---------|-----------|
| 14:28:13 | Data e Hora Atual do Sistema; |
| up 16 min | Período de Tempo Ativo; |
| 1 user | Número de Usuários Logados; |
| load average: 0,00, 0,00, 0,00 | Médias de Cargas do Sistema (1, 5 e 15 minutos). |

**OBSERVAÇÃO IMPORTANTE 02:** no comando: __`w`__ ele mostra as informações separadas por colunas:<br>
USER   TTY   FROM   LOGIN@   IDLE   JCPU   PCPU   WHAT<br>

| Colunas | Descrição | 
|---------|-----------|
| USER | usuário logado; |
| TTY | terminal do usuário |
| FROM | origem da conexão; |
| LOGIN@ | hora do login do usuário; |
| IDLE | tempo ocioso do usuário; |
| JCPU | tempo de CPU dos processos do TTY; |
| PCPU | tempo de CPU do processo do último comando o usuário; |
| WHAT | processo atual do usuário. |

```bash
#verificando os usuários logados remotamente no Ubuntu Server
#opção do comando who: -H (heading), -a (all)
sudo who -Ha
```

**OBSERVAÇÃO IMPORTANTE:** no comando: __`who`__ ele mostra as informações separadas por colunas:<br>
NAME   LINE   TIME   IDLE   PID COMMENT   EXIT<br>

| Colunas | Descrição | 
|---------|-----------|
| NAME | usuário logado; |
| LINE | terminal do usuário; |
| TIME | data e hora do login do usuário; |
| IDLE | tempo ocioso do usuário; |
| PID | identificação do processo; |
| COMMENT | origem da conexão do usuário; |
| EXIT | saída do processo. |

```bash
#verificando os usuários logados no Ubuntu Server
users
```

## 09_ Criando um usuário Administrador no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** NESSE EXEMPLO ESTÁ SENDO CRIADO UM USUÁRIO ADMIN PARA A ADMINISTRAÇÃO DO SERVIDOR, *NÃO RECOMENDO CRIAR UM USUÁRIO CHAMADO:* __`admin`__ POIS É UM USUÁRIO CONHECIDO E EXISTE VÁRIOS SOFTWARE DE **FORÇA BRUTA (BRUTE FORCE)** QUE USA ESSE USUÁRIO PARA *INVADIR SERVIDORES*. NESSE EXEMPLO SERÁ CRIADO APENAS PARA EFEITO DE APRENDIZAGEM.

**OBSERVAÇÃO** Mais informações veja o Site do Wikipedia das 10.000 senhas mais comuns: https://en.wikipedia.org/wiki/Wikipedia:10,000_most_common_passwords

```bash
#criando o usuário Admin local no Ubuntu Server
#OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ADMIN CONFORME SUA NECESSIDADE
sudo adduser admin
  New password: sua_senha
  Retype new password: sua_senha
    Full Name []: Admin Sua Empresa
    Room Number []: <Enter>
    Work Phone []: <Enter>
    Home Phone []: <Enter>
    Other []: <Enter>
  Is the information correct? [Y/n] y <Enter>

#listando o usuário criado no arquivo passwd
#opção do comando cat: -n (number line)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo cat -n /etc/passwd | grep admin

#listando o usuário criado com o comando getent (MAIS SIMPLES)
#opção do comando getent: passwd (the database system user)
sudo getent passwd admin

#listando o grupo criado no arquivo group
#opção do comando cat: -n (number line)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
sudo cat -n /etc/group | grep admin

#listando o grupo criado com o comando getent (MAIS SIMPLES)
#opção do comando getent: group (the database system group)
sudo getent group admin
```

## 10_ Adicionando o usuário Admin no grupo SUDO (Super User Do) do Ubuntu Server
```bash
#adicionando o usuário Admin ao grupo do SUDO
#opção do comando usermod: -a (append), -G (groups)
sudo usermod -a -G sudo admin

#verificando os grupos do usuário Admin
sudo groups admin

#verificando as identificações de grupos do usuário Admin
sudo id admin

#verificando as informações do grupo SUDO
#opção do comando getent: group (the database system group)
sudo getent group sudo
```

## 11_ Se logando no Terminal TTY (Teletype Bash/Shell) do Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** fazer o teste de *Login no Terminal* do Ubuntu Server na Máquina Virtual para verificar se está tudo **OK** na autenticação do usuário __`admin`__.

```bash
#abrindo um segundo Terminal TTY (Teletype) no Ubuntu Server
Atalho: Alt + F2

Ubuntu 22.04.5 LTS wsseunome tty2
  wsseunome login: admin
  Password: sua_senha

#para sair do Terminal TTY você pode digitar os comandos
logout   #(sair do login)
exit     #(sair do login)
Ctrl+D   #(atalho para sair do login)

#voltar para o primeiro Terminal TTY (Teletype) do Ubuntu Server
Atalho: Alt + F1
```

========================================DESAFIOS=========================================

**#12_ DESAFIO-01:** PERMITIR QUE O USUÁRIO: __`admin`__ SE CONECTE REMOTAMENTE NO SERVIDOR UBUNTU SERVER VIA SSH UTILIZANDO O *POWERSHELL, PUTTY, GIT BASH OU TERMINAL NO LINUX*.

**#13_ DESAFIO-02:** CRIAR UM USUÁRIO COM O SEU NOME, EXEMPLO: __`robson`__ (TUDO EM MINÚSCULO), FAZER O MESMO PROCEDIMENTO PARA ADICIONAR O SEU USUÁRIO AO GRUPO: __`sudo`__ E PERMITIR QUE O SEU USUÁRIO ACESSE O SERVIDOR UBUNTU SERVER REMOTAMENTE VIA **SSH** (TESTAR AS CONEXÕES NO POWERSHELL, PUTTY, GIT BASH OU TERMINAL NO LINUX).

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO OPENSSH SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do OpenSSH realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/01-openssh.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioopenssh #desafiossh
