# Projeto Integrador de Final de Curso 

Projeto Integrador do Curso Técnico em Informática, instalação e configuração do GNU/Linux Ubuntu Server v22.04.x LTS integrado na Rede Microsoft Windows.

Objetivo principal, instalar e configurar os principais serviços integrados no GNu/Linux Ubuntu Server e criar os ponteiros no DNS do Windows Server.

## **Primeira etapa: Criação da Máquina Virtual do GNU/Linux Ubuntu Server**
🔴 Procedimento: https://github.com/vaamonde/ubuntu-2204/blob/main/01-install/01-InstalacaoDoUbuntuServer-22.04-LTS.md

OBSERVAÇÃO IMPORTANTE: na criação da máquina virtual deixar as configurações de rede em Modo Rede Interna.

## **Segunda etapa: Instalação do GNU/Linux Ubuntu Server**
🔴 Procedimento: https://github.com/vaamonde/ubuntu-2204/blob/main/01-install/01-InstalacaoDoUbuntuServer-22.04-LTS.md

OBSERVAÇÃO IMPORTANTE: nas configurações de rede deixar o padrão, o Servidor GNU/Linux Ubuntu Server deverá obter o endereço via DHCP do Windows Server na faixa de IPv4: 192.168.xxx.0/24, depois você irá setar o endereço IPv4 Estático nas configurações do Netplan.

OBSERVAÇÃO IMPORTANTE: nas configurações do Perfil do Usuário, seguir o padrão.

## **Terceira etapa: Configurações Básicas do GNU/Linux Ubuntu Server**
🔴 Procedimentos: https://github.com/vaamonde/ubuntu-2204/tree/main/02-settings

OBSERVAÇÃO IMPORTANTE: fazer as configurações básicas do GNU/Linux Ubuntu Server, tomar MUITO CUIDADO com os Endereços IPv4 do servidor:

Endereço IPv4 do GNU/Linux Ubuntu Server:<br>
IPv4: 192.168.xxx.20/24<br>
Máscara: 255.255.255.0<br>
Gateway: 192.168.xxx.254<br>
DNS: 192.168.xxx.10 (Servidor Windows Server).

## **Quarta etapa: Serviços Básicos do GNU/Linux Ubuntu Server**
🔴 Procedimentos: https://github.com/vaamonde/ubuntu-2204/tree/main/03-services

OBSERVAÇÃO IMPORTANTE: fazer a instalação e configuração dos Serviços Básicos do GNU/Linux Ubuntu Server 

01_ Servidor OpenSSH: https://github.com/vaamonde/ubuntu-2204/blob/main/03-services/01-openssh.md<br>
02_ Servidor Apache2: https://github.com/vaamonde/ubuntu-2204/blob/main/03-services/02-apache2-server.md<br>
03_ Servidor MySQL: https://github.com/vaamonde/ubuntu-2204/blob/main/03-services/03-mysql-server.md

## **Quinta etapa: Publicar os Serviços para fora da Rede do Windows Server**
🔴 Procedimentos: https://github.com/vaamonde/pfsense/blob/main/pfsense-2.6-plus/Etapa-017-ConfigurandoNAT-PortForward.txt<br>
🔴 Vídeo Aula: https://www.youtube.com/watch?v=05RS1mWlcRk

01_ Permitir o acesso ao Serviço do SSH Externamente<br>
02_ Permitir o acesso ao Serviço do Apache2 Externamente<br>
03_ Permitir o acesso ao Serviço do Banco de Dados Externamente.