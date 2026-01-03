#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 11/11/2025<br>
#Data de atualização: 03/01/2026<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO UNIFI SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Unifi realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/13-unifi.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafioubiquiti #desafiounifi

Conteúdo estudado nesse desafio:<br>
#01_ Instalando as dependências do Unifi Network no Ubuntu Server<br>
#02_ Instalando as dependências do Java do Unifi Network no Ubuntu Server<br>
#03_ Instalando as Dependências do Libssl do Unifi Network no Ubuntu Server<br>
#04_ Adicionando o Repositório do Unifi Network no Ubuntu Server<br>
#05_ Instalando o Unifi Network no Ubuntu Server<br>
#06_ Verificando o Serviço e Versão do Unifi Network no Ubuntu Server<br>
#07_ Verificando as Portas de Conexão do Unifi Network no Ubuntu Server<br>
#08_ Localização dos Arquivos de Configuração do Unifi Network no Ubuntu Server<br>
#09_ Adicionado o Usuário Local no Grupo Padrão do Unifi Network no Ubuntu Server<br>
#10_ Acessando e Configurando o Unifi Network via navegador<br>

Site Oficial da Ubiquiti: https://ui.com/<br>
Site Oficial do Unifi Network: https://ui.com/download/releases/network-server

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

**O QUE É E PARA QUE SERVER O UBIQUITI:** A Ubiquiti é uma empresa americana de tecnologia especializada em equipamentos de rede sem fio e cabeada, muito utilizada em infraestrutura corporativa, provedores de internet (ISPs) e automação residencial. Ela ficou famosa por oferecer equipamentos de alta performance, com custo acessível e configuração centralizada via software.

**O QUE É E PARA QUE SERVER O UNIFI:** O UniFi é o ecossistema de produtos e softwares da Ubiquiti voltado para redes corporativas, educacionais e residenciais de alto desempenho, oferecendo uma plataforma centralizada para gerenciar Wi-Fi, switches, roteadores, câmeras, controle de acesso, telefonia e energia inteligente — tudo a partir de uma única interface.

**O QUE É E PARA QUE SERVER O UNIFI NETWORK:** O UniFi Network é o sistema de gerenciamento de rede da Ubiquiti, usado para configurar, monitorar e administrar todos os equipamentos de rede do ecossistema UniFi — como roteadores (Gateways), Switches, Access Points (Wi-Fi) e Firewalls — a partir de uma interface centralizada, seja local ou na nuvem.

[![Unifi Network](http://img.youtube.com/vi//0.jpg)]( "Unifi Network")

Link da vídeo aula: 

## 01_ Instalando as dependências do Unifi Network no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** O UNIFI NETWORK POSSUI A DEPENDÊNCIA DO *BANCO DE DADOS NÃO RELACIONAL MONGODB SERVER*, ESSE APLICATIVOS JÁ FOI INSTALADO NA ETAPA: **08 DO MONGODB SERVER**.

```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Unifi Network
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no termina
sudo apt install git vim ca-certificates gnupg curl apt-transport-https \
software-properties-common build-essential 
```

## 02_ Instalando as dependências do Java do Unifi Network no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server 22.04.x temos as versões disponíveis do **OpenJDK** e do **OpenJRE**:* 8, 11, 17, 18, 19, 21 e 25*, cuidado na versão do Java que você está usando no seu projeto e a compatibilidade de versão do *Unifi Network* em relação ao *OpenJDK (Java Development Kit) e OpenJRE (Java Runtime Environment)*.

```bash
#instalando as dependências do Java OpenJDK e OpenJRE utilizadas no Unifi Network
#OBSERVAÇÃO: OpenJDK é uma implementação livre e gratuita da plataforma Java hoje da Oracle
#OBSERVAÇÃO: OpenJRE é um software necessário para que os programas em Java funcionem corretamente.
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install openjdk-21-jdk openjdk-21-jre
```

## 03_ Instalando as Dependências do Libssl do Unifi Network no Ubuntu Server
**OBSERVAÇÃO IMPORTANTE:** o tempo todo a *Biblioteca Libssl* sofre alteração, antes de fazer o download do arquivo verifique a versão no link: http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/

```bash
#download da última versão do Libssl (link atualizado em 11/11/2025)
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.24_amd64.deb

#instalando a biblioteca Libssl no Ubuntu Server
#opção do comando dpkg: -i (install), * (all - Qualquer coisa)
sudo dpkg -i libssl*.deb

#verificando a instalação da biblioteca Libssl no Ubuntu Server
#opção do comando dpkg: -l (list)
sudo dpkg -l libssl1.1
```

## 04_ Adicionando o Repositório do Unifi Network no Ubuntu Server

Repositório Oficial do Unifi Network: https://ui.com/download/releases/network-server<br>
Versão Oficial (atualizada em: 11/11/2025): https://community.ui.com/releases/UniFi-Network-Application-9-5-21/92266721-6758-4f33-b3bc-9d8b66f3c96e

```bash
#criando o repositório do Unifi Network no Ubuntu Server
echo 'deb [ arch=amd64,arm64 ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list

#baixando e instalando a chave GPG do site oficial da Ubiquiti Unifi no Ubuntu Server
#opção do comando wget: -O (output document file)
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

#atualizando as listas do sources.list com o novo repositório da Unifi no Ubuntu Server
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update
```

## 05_ Instalando o Unifi Network no Ubuntu Server

```bash
#instalando o Unifi Network no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
sudo apt install unifi
```

## 06_ Verificando o Serviço e Versão do Unifi Network no Ubuntu Server

```bash
#verificando o serviço do Unifi Network no Ubuntu Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status unifi
sudo systemctl restart unifi
sudo systemctl stop unifi
sudo systemctl start unifi

#analisando os Log's e mensagens de erro do Unifi Network no Ubuntu Server
#opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
sudo journalctl -t unifi
sudo journalctl -xeu unifi
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Unifi Network no Ubuntu Server
#opção do comando dpkg: -l (list)
sudo dpkg -l unifi
```

## 07_ Verificando as Portas de Conexão do Unifi Network no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando as portas: TCP-8080, TCP-8443, TCP-27117, TCP-27017
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'27017,27117,8080,8443' -sTCP:LISTEN
```

## 08_ Localização dos Arquivos de Configuração do Unifi Network no Ubuntu Server
```bash
/usr/lib/unifi                     <-- Diretório padrão das configurações do Unifi Network
/var/lib/unifi                     <-- Diretório padrão do banco de dados do Unifi Network
/var/lib/unifi/system.properties   <-- Arquivo de configuração padrão do Unifi Network
/var/log/unifi                     <-- Diretório padrão dos logs do Unifi Network
```

## 09_ Adicionado o Usuário Local no Grupo Padrão do Unifi Network no Ubuntu Server

```bash
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
#OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
#nome do usuário existente no sistema para adicionar no Grupo desejado.
sudo usermod -a -G unifi $USER

#fazendo login em um novo grupo do UNIFI
newgrp unifi

#verificando os identificadores de usuário e grupos
id

#verificando informações do grupo UNIFI do Unifi Network
#opção do comando getent: group (the database system group)
sudo getent group unifi

#recomendo fazer logout do usuário para testar as permissões de grupos
#OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
exit
```

## 10_ Acessando e Configurando o Unifi Network via navegador

```bash
#utilizar os navegadores para configurar o Unifi Network
firefox ou google chrome: https://endereço_ipv4_ubuntuserver:8443

#Informações que serão solicitadas na configuração via Unifi Network
Name Your UniFi Network Server
  Server Name: Nome do Seu Servidor
  Country Region: Região do Seu Servidor
  (ON) I agree to end User License Agreement and Terms of Service
  <Next>
Sign In to Your UI Account
  UI Account Email: Seu Email ou Usuário do Unifi
  Password: Sua Senha de Acesso
  <Sign In>
Security Verification
  <Sign In>
```

========================================DESAFIOS=========================================

**#11_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETBOX SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netbox realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/12-netbox.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetbox #desafionetboxlabs