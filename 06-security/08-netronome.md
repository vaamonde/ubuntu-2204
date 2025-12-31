#Autor: Robson Vaamonde<br>
#Procedimentos em TI: http://procedimentosemti.com.br<br>
#Bora para Prática: http://boraparapratica.com.br<br>
#Robson Vaamonde: http://vaamonde.com.br<br>
#Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi<br>
#Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica<br>
#Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem<br>
#YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica<br>
#Data de criação: 30/12/2025<br>
#Data de atualização: 31/12/2025<br>
#Versão: 0.02<br>

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETRONOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netronome realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-netronome.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetronome

Conteúdo estudado nesse desafio:<br>
#01_ 

Site Oficial do Netronome: https://netrono.me/<br>
Github Oficial do Projeto: https://github.com/autobrr/netronome<br>
Site Oficial do Librespeed: https://librespeed.org/<br>
Github Oficial do Projeto: https://github.com/librespeed/speedtest<br>

**Sites de IA (Inteligência Artificial) indicados para os Desafios**<br>
OpenAI ChatGPT: https://chatgpt.com<br>
Microsoft Copilot: https://copilot.microsoft.com<br>
Google Gemini: https://gemini.google.com<br>
DeepSeek: https://chat.deepseek.com/<br>
x.AI Grok: https://grok.com/<br>

**O QUE É E PARA QUE SERVER O NETRONOME:** .

[![Netronome](http://img.youtube.com/vi//0.jpg)]( "Netronome")

Link da vídeo aula: 

## 01_ Instalando as dependências do Netronome Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o Librespeed-Cli sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://launchpad.net/ubuntu/+source/librespeed-cli

```bash
#atualizando as listas do Apt
#opção do comando apt: update (Resynchronize the package index files from their sources)
sudo apt update

#instalando as dependências do Netronome Server no Ubuntu Server
#opção do comando apt: install (install is followed by one or more package names)
#opção da contra barra (\): criar uma quebra de linha no terminal
sudo apt install iperf3 traceroute mtr vnstat apache2 php

#baixando a dependência do Librespeed-Cli do Site Oficial do Ubuntu (link atualizado em: 30/12/2025)
#opção do comando wget: -O (output file name)
wget -O librespeed-cli.deb https://launchpad.net/ubuntu/+archive/primary/+files/librespeed-cli_1.0.12-1_amd64.deb

#instalando a dependência do Librespeed-Cli no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i librespeed-cli.deb
```

## 02_ Instalando o Netronome Server do Projeto do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o Netronome sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/autobrr/netronome/releases/

```bash
#baixando o Netronome Server do Github (link atualizando em: 30/12/2025)
#opção do comando wget: -O (output file name)
wget -O netronome.deb https://github.com/autobrr/netronome/releases/download/v0.8.0/netronome_0.8.0_linux_amd64.deb

#instalando o Netronome Server no Ubuntu Server
#opção do comando dpkg: -i (install)
sudo dpkg -i netronome.deb
```

## 03_ Instalando o SpeedTest do Projeto do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** o tempo todo o SpeedTest sofre alteração, antes de fazer o download do arquivo verifique a versão no link: https://github.com/librespeed/speedtest/releases

```bash
#baixando o SpeedTest do Github (link atualizando em: 30/12/2025)
#opção do comando wget: -O (output file name)
wget -O speedtest.tar.gz https://github.com/librespeed/speedtest/archive/refs/tags/5.5.0.tar.gz

#descompactando o SpeedTest no Ubuntu Server
#opção do comando tar: -z (gzip), -x (extract), -v (verbose), -f (file)
tar -zxvf speedtest.tar.gz

#movendo o diretório do SpeedTest para a raiz do Apache2 Server
#opção do comando mv: -v (verbose)
sudo mv -v speedtest-*/ /var/www/html/speedtest/
```

## 04_ Configurando o Netronome Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** recomendo que o procedimento abaixo seja feito utilizando o usuário: __`root`__ do Ubuntu Server para facilitar a instalação e configuração do *Netronome Server*.

```bash
#mudando para o usuário Root do Ubuntu Server
#opção do comando sudo: -i (login)
sudo -i

#gerando o arquivo de configuração do Netronome Server
#opção do comando netronome: generate-config (Generate a default configuration file)
netronome generate-config
```

## 05_ Atualizando os arquivos de configuração do Netronome Server no Ubuntu Server
```bash
#download do arquivo de configuração do Netronome Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/config.toml https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/config.toml

#download do arquivo de configuração do Librespeed Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/librespeed-servers.json https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/librespeed-servers.json

#download do arquivo de configuração do Virtual Host do SpeedTest
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /etc/apache2/sites-available/000-default.conf https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/000-default.conf

#download do arquivo da Base de Dados de GeoIP Lite ANS (link atualizado em: 30/12/2025)
#projeto oficial do Github: https://github.com/P3TERX/GeoLite.mmdb
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/GeoLite2-ASN.mmdb https://git.io/GeoLite2-ASN.mmdb

#download do arquivo da Base de Dados de GeoIP Lite Country (link atualizado em: 30/12/2025)
#projeto oficial do Github: https://github.com/P3TERX/GeoLite.mmdb
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /root/.config/netronome/GeoLite2-Country.mmdb https://git.io/GeoLite2-Country.mmdb

#download do arquivo de serviço do Netronome Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /etc/systemd/system/netronome.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/netronome.service

#download do arquivo de serviço do IPerf3 Server
#opção do comando wget: -v (verbose), -O (output file)
wget -v -O /etc/systemd/system/iperf3.service https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/iperf3.service
```

## 06_ Habilitando os Serviços do Netronome e Iperf3 Server no Ubuntu Server
```bash
#habilitando os serviços do Netronome e Iperf3 Server
#opção do comando systemctl: daemon-reload (Reload the systemd manager configuration), 
#enable (Enable one or more units), start (Start (activate) one or more units)
systemctl daemon-reload
systemctl enable netronome iperf3
systemctl start netronome iperf3

#reiniciando o serviço do Apache2 Server
#opção do comando systemctl: restart Stop and then start one or more units)
systemctl restart apache2

#saindo o perfil do usuário root
exit
```

## 07_ Verificando os Serviços e Versão do Netronome e Iperf3 Server no Ubuntu Server
```bash
#verificando o serviço do Netronome e Iperf3 Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then 
#start one or more units), stop (Stop (deactivate) one or more units), start (Start (activate) 
#one or more units)
sudo systemctl status netronome iperf3
sudo systemctl restart netronome iperf3
sudo systemctl stop netronome iperf3
sudo systemctl start netronome iperf3

#analisando os Log's e mensagens de erro do Netronome e Iperf3 Server
#opção do comando journalctl: x (catalog), e (pager-end), u (unit)
sudo journalctl -xeu netronome
sudo journalctl -xeu iperf3
```

**OBSERVAÇÃO IMPORTANTE:** Por que sempre é necessário verificar a versão do serviço de rede que você está implementando ou configurando no Servidor Ubuntu Server, devido as famosas falhas de segurança chamadas de: *CVE (Common Vulnerabilities and Exposures)*, com base na versão utilizada podemos pesquisar no site do **Ubuntu Security CVE Reports:** https://ubuntu.com/security/cves as falhas de segurança encontradas e corrigidas da versão do nosso aplicativo, o que ela afeta, se foi corrigida e como aplicar a correção.

```bash
#verificando a versão do Netronome e Iperf3 Server
sudo netronome version
sudo iperf3 --version
```

## 08_ Verificando as Portas de Conexões do Apache2, Netronome e Iperf3 Server no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** no Ubuntu Server as Regras de Firewall utilizando o comando: __` iptables `__ ou: __` ufw `__ está desabilitado por padrão **(INACTIVE)**, caso você tenha habilitado algum recurso de Firewall é necessário fazer a liberação do *Fluxo de Entrada (INPUT), Porta (PORT) e Protocolo (PROTOCOL) TCP* do Serviço corresponde nas tabelas do firewall e testar a conexão.

```bash
#verificando a porta padrão TCP-80 do Apache2, TCP-7575 Netronome Server e TCP-5201 Iperf3 Server
#opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
sudo lsof -nP -iTCP:'80,5201,7575' -sTCP:LISTEN
```

## 09_ Localização dos Arquivos de Configuração do Netronome Server e Agent no Ubuntu Server
```bash
/usr/bin/netronome                                <-- Diretório do binário do Netronome Server
/root/.config/netronome/                          <-- Diretório de configuração do Netronome Server
/root/.config/netronome/config.toml               <-- Arquivo de configuração padrão do Netronome Server
/root/.config/netronome/librespeed-servers.json   <-- Arquivo de configuração do Librespeed Server
/root/.config/netronome/netronome.db              <-- Banco de dados do Netronome Server
/root/.config/netronome/GeoLite2-ASN.mmdb         <-- Arquivo de Banco de Dados do GeoLite2 ASN
/root/.config/netronome/GeoLite2-Country.mmdb     <-- Arquivo de Banco de Dados do GeoLite2 Country
/opt/netronome/netronome                          <-- Diretório do binário do Netronome Agent
/etc/netronome                                    <-- Diretório de configuração do Netronome Agent
/etc/netronome/agent.toml                         <-- Arquivo de configuração padrão do Netronome Agent
/var/log/syslog                                   <-- Arquivo de Log padrão do Netronome Server e Agent
```

# 10_ Editando o arquivo de configuração do Netronome Server no Ubuntu Server
```bash
#editando o arquivo de configuração do Netronome Server
sudo vim /root/.config/netronome/config.toml

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar os valores da variável: whitelist na linha: 33
whitelist = ["127.0.0.1/32", "172.16.1.0/24"]
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#editando o arquivo de configuração do Librespeed
sudo vim /root/.config/netronome/librespeed-servers.json

#entrando no modo de edição do editor de texto VIM
INSERT
```
```bash
#alterar os valores das variáveis dos blocos dos servidores
#linhas de: 03 até 05
"id": 1,
    "name": "wsvaamonde",
    "server": "http://172.16.1.20/backend",
#
#linhas de: 12 até 14
"id": 2,
    "name": "ctsvaamonde",
    "server": "http://172.16.1.30/backend",
```
```bash
#salvar e sair do arquivo
ESC SHIFT : x <Enter>

#reiniciando e verificando o serviço do Netronome Server
#opções do comando systemctl: status (runtime status information), restart (Stop and then start
#one or more units)
sudo systemctl restart netronome
sudo systemctl status netronome
```

## 11_ Instalando o Netronome Agent do Projeto do Github no Ubuntu Server

**OBSERVAÇÃO IMPORTANTE:** recomendo utilizar o script de instalação e configuração do Netronome Agent nos servidores GNU/Linux, mais informação acesse o link do projeto oficial: https://github.com/autobrr/netronome

**OBSERVAÇÃO IMPORTANTE:** para sistemas Microsoft Windows utilizar a versão de Servidor que já tem o Agent incluso, mais informações acesse o link do projeto oficial: https://github.com/autobrr/netronome/releases

```bash
#instalando o Netronome Agent do Github (link atualizando em: 30/12/2025)
#opção do comando curl: -s (silent), -L (location)
#opção do redirecionar de saída piper (|): Conecta a saída padrão com a entrada padrão de outro comando
curl -sL https://netrono.me/install-agent | sudo bash

#informações que serão solicitadas no momento da instalação do Netronome Agent
01) Enter the interface name to monitor (leave empty for all): enp0s3 <Enter>
02) Do you want to enable Tailscale for secure connectivity? (y/n): n <Enter>
03) Select an option [1-3]: 1 <Enter>
04) Enter the host/IP to listen on (default: 0.0.0.0): <Enter>
05) Enter the port number (default: 8200): <Enter>
06) Enter disk mounts to include (comma-separated, e.g., /mnt/storage,/mnt/backup): <Enter>
07) Enter disk mounts to exclude (comma-separated, e.g., /boot,/tmp): /boot,/tmp <Enter>

```


========================================DESAFIOS=========================================

**#08_ DESAFIO-01:** 

=========================================================================================

**OBSERVAÇÃO IMPORTANTE:** COMENTAR NO VÍDEO DO NETRONOME SE VOCÊ CONSEGUIU FAZER O DESAFIO COM A SEGUINTE FRASE: *Desafio do Netronome realizado com sucesso!!! #BoraParaPrática*

COMPARTILHAR O SELO DO DESAFIO NAS SUAS REDES SOCIAIS (LINKEDIN, FACEBOOK, INSTAGRAM) MARCANDO: ROBSON VAAMONDE COM AS HASHTAGS E COPIANDO O CONTEÚDO DO DESAFIO ABAIXO: 

LINK DO SELO: https://github.com/vaamonde/ubuntu-2204/blob/main/selos/26-netronome.png

#boraparapratica #boraparaprática #vaamonde #robsonvaamonde #procedimentosemti #ubuntuserver #ubuntuserver2204 #desafiovaamonde #desafioboraparapratica #desafionetronome


